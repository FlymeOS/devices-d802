.class public Lcom/android/server/ePDGTracker;
.super Landroid/os/Handler;
.source "ePDGTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ePDGTracker$WFCPreferObserver;,
        Lcom/android/server/ePDGTracker$WFCSettingObserver;,
        Lcom/android/server/ePDGTracker$ePDGNetworkAgent;
    }
.end annotation


# static fields
.field static final DELAYED_HO_EVENT:I = 0x4

.field public static final DISCONNECTED_DONE:I = 0x3e4

.field static final EPDG_ALREADY_ACTIVE:I = 0x0

.field static final EPDG_ALREADY_INACTIVE:I = 0x6

.field static final EPDG_DISCONNECT_STARTED:I = 0x8

.field static final EPDG_FAIL_MANAGER_NOT_READY:I = 0x4

.field static final EPDG_FAIL_NO_NETWORK:I = 0x3

.field static final EPDG_FAIL_SIM_NOT_READY:I = 0x5

.field static final EPDG_NETWORK_FAIL:I = 0x7

.field static final EPDG_REQUEST_STARTED:I = 0x1

.field static final EPDG_TYPE_NOT_AVAILABLE:I = 0x2

.field static final EVENT_CALLSTATE_CH:I = 0x6

.field static final EVENT_CONNECTION_LOST:I = 0x2

.field static final EVENT_CONNECTION_RSP:I = 0x1

.field public static final EVENT_DEBUG_TYPE:I = 0x2

.field static final EVENT_GET_WIFISIG:I = 0x3

.field static final EVENT_SERVICE_CHANGE:I = 0x5

.field static final IPSEC_SERVICESTATUS_CHANGE:I = 0x0

.field static final IPSEC_SERVICE_START:I = 0x1

.field static final IPSEC_SERVICE_STOP:I = 0x0

.field public static final IPTYPE_IPV4:I = 0x1

.field public static final IPTYPE_IPV4V6:I = 0x3

.field public static final IPTYPE_IPV6:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "ePDGTracker"

.field public static final PCS_CH:I = 0x3e5

.field public static final PCS_INFO:I = 0x3e6

.field static final PDN_CONNECTED_LTE:I = 0x5

.field static final PDN_CONNECTED_ePDG:I = 0x6

.field public static final QOS_INFO:I = 0x3e7

.field static final SCAN_FAIL:I = 0x270f

.field public static final SIGNAL_DEBUG_TYPE:I = 0x1

.field private static final TCP_SIZES_EPDG_DEFAULT:Ljava/lang/String; = "524288,1048576,2097152,262144,524288,1048576"

.field static final TEMP_TEMP_TEMP:I = 0x309

.field static final WIFI_CONNECTED_EVENT:I = 0x5

.field static final WIFI_DISCONNECTED_EVENT:I = 0x6

.field static final ePDG_PDN_CONNECTED:I = 0x0

.field static final ePDG_PDN_DISCONNECTED:I = 0x2

.field static final ePDG_PDN_DISCONNECTING:I = 0x4

.field static final ePDG_PDN_FAILED:I = 0x3

.field static final ePDG_PDN_REQUESTING:I = 0x1

.field static final numofpdn:I = 0x2


# instance fields
.field public DataState:I

.field public FQDNForEPDG:Ljava/lang/String;

.field private FQDNForTestApp:Ljava/lang/String;

.field private FQDNStaticFlag:Z

.field public MobileTech:I

.field public WFC_setting:I

.field private WiFi_Offload_gw_addr:Ljava/lang/String;

.field public call_status:I

.field private ePDGAddrForTestApp:Ljava/lang/String;

.field private ePDGAddrStaticFlag:Z

.field public ePDGAddrofThisnetwork:Ljava/lang/String;

.field public iLTEIPType:[I

.field public iLTEPDN4Addr:[Ljava/lang/String;

.field public iLTEPDN6Addr:[Ljava/lang/String;

.field public iPsecAddr:[Ljava/lang/String;

.field public iPsecDNS:[Ljava/lang/String;

.field public iPsecGW:[Ljava/lang/String;

.field public iPsecIf:[Ljava/lang/String;

.field public identity:Ljava/lang/String;

.field public isFeatureStatus:[I

.field public isFeatureSwitch:[Z

.field public isbeforeSigstat:Z

.field public isgood:Z

.field private mContext:Landroid/content/Context;

.field public mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field protected mIMSLinkProperties:Landroid/net/LinkProperties;

.field mIMS_HO_avail:Z

.field public mLastfailreason:[I

.field private mMgrStatus:I

.field private mNetworkAgent:[Landroid/net/NetworkAgent;

.field private mNetworkInfo:[Landroid/net/NetworkInfo;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mTarget:Landroid/os/Handler;

.field protected mVZWAPPLinkProperties:Landroid/net/LinkProperties;

.field private final mWFCDataSettingObserver:Lcom/android/server/ePDGTracker$WFCSettingObserver;

.field private final mWFCPreferObserver:Lcom/android/server/ePDGTracker$WFCPreferObserver;

.field public mWifiConnected:Z

.field mWifiManager:Landroid/net/wifi/IWifiManager;

.field public mcallstate:I

.field public mcc:Ljava/lang/String;

.field protected mePDGConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/ePDGConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mePDGNotifier:Lcom/android/server/ePDGNotifier;

.field public mnc:Ljava/lang/String;

.field public mobile_avail:Z

.field public myServiceState:Landroid/telephony/ServiceState;

.field public myfeature:I

.field public needtoChangeInitialPri:Z

.field public oldBad:I

.field public oldGood:I

.field public thre:I

.field public tm:Landroid/telephony/TelephonyManager;

.field public tmushandoutthre:I

.field private vzwappRef:Z

.field private vzwcbsRef:Z

.field private vzwmmsRef:Z

.field public wfcprefer:I

.field public wifidetailstatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 416
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    .line 114
    iput v3, p0, Lcom/android/server/ePDGTracker;->mMgrStatus:I

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    .line 123
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    .line 137
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    .line 138
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    .line 140
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iLTEPDN4Addr:[Ljava/lang/String;

    .line 141
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iLTEPDN6Addr:[Ljava/lang/String;

    .line 142
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iLTEIPType:[I

    .line 143
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    .line 144
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    .line 145
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    .line 146
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    .line 152
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    .line 157
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    .line 209
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    .line 210
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    .line 213
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    .line 219
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    .line 220
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    .line 221
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    .line 222
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    .line 223
    const-string v0, "fe80::e291:f5ff:fecc:5dd7"

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->WiFi_Offload_gw_addr:Ljava/lang/String;

    .line 252
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 253
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 254
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 262
    iput-boolean v4, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 264
    iput v3, p0, Lcom/android/server/ePDGTracker;->wifidetailstatus:I

    .line 265
    iput v3, p0, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 266
    iput v3, p0, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 268
    iput v6, p0, Lcom/android/server/ePDGTracker;->thre:I

    .line 269
    const/16 v0, -0x55

    iput v0, p0, Lcom/android/server/ePDGTracker;->tmushandoutthre:I

    .line 271
    iput-boolean v4, p0, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    .line 274
    iput v3, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    .line 278
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->needtoChangeInitialPri:Z

    .line 280
    iput-object v2, p0, Lcom/android/server/ePDGTracker;->myServiceState:Landroid/telephony/ServiceState;

    .line 281
    iput v3, p0, Lcom/android/server/ePDGTracker;->mcallstate:I

    .line 285
    iput v3, p0, Lcom/android/server/ePDGTracker;->DataState:I

    .line 286
    iput v3, p0, Lcom/android/server/ePDGTracker;->MobileTech:I

    .line 300
    iput v3, p0, Lcom/android/server/ePDGTracker;->call_status:I

    .line 302
    iput v4, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    .line 303
    iput v3, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    .line 305
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->mobile_avail:Z

    .line 308
    const-string v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 342
    new-instance v0, Lcom/android/server/ePDGTracker$WFCSettingObserver;

    invoke-direct {v0, p0, p0}, Lcom/android/server/ePDGTracker$WFCSettingObserver;-><init>(Lcom/android/server/ePDGTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mWFCDataSettingObserver:Lcom/android/server/ePDGTracker$WFCSettingObserver;

    .line 372
    new-instance v0, Lcom/android/server/ePDGTracker$WFCPreferObserver;

    invoke-direct {v0, p0, p0}, Lcom/android/server/ePDGTracker$WFCPreferObserver;-><init>(Lcom/android/server/ePDGTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mWFCPreferObserver:Lcom/android/server/ePDGTracker$WFCPreferObserver;

    .line 400
    new-instance v0, Lcom/android/server/ePDGTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/ePDGTracker$1;-><init>(Lcom/android/server/ePDGTracker;)V

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 418
    iput-object p1, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    .line 419
    iput-object p2, p0, Lcom/android/server/ePDGTracker;->mTarget:Landroid/os/Handler;

    .line 426
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    .line 430
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    .line 432
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 434
    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v0, v4, :cond_3

    .line 436
    const-string v0, "net.loss"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "net.wifisigmon"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    :goto_0
    new-array v0, v6, [Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    .line 462
    new-array v0, v6, [Landroid/net/NetworkAgent;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    .line 475
    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mWFCDataSettingObserver:Lcom/android/server/ePDGTracker$WFCSettingObserver;

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker$WFCSettingObserver;->register(Landroid/content/Context;)V

    .line 478
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mWFCPreferObserver:Lcom/android/server/ePDGTracker$WFCPreferObserver;

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker$WFCPreferObserver;->register(Landroid/content/Context;)V

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ePDGTracker start!! with feature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wfcprefer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WFC settings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 490
    return-void

    .line 439
    :cond_3
    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 441
    const-string v0, "net.loss"

    const-string v1, "85"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "net.wifisigmon"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_4
    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 454
    const-string v0, "net.loss"

    const-string v1, "85"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, "net.wifisigmon"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 138
    nop

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    .line 142
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 213
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private createPDGConnection(I)Lcom/android/server/ePDGConnection;
    .locals 5
    .param p1, "fid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1850
    const-string v1, "createPDGConnection E"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1854
    iget v1, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 1856
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "PREFERRED_OPTION"

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    .line 1858
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2, v4}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1860
    iput v3, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    .line 1867
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->isDualType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1869
    invoke-static {p1}, Lcom/android/server/ePDGDualTypeConn;->makePDGConnection(I)Lcom/android/server/ePDGDualTypeConn;

    move-result-object v0

    .line 1870
    .local v0, "conn":Lcom/android/server/ePDGDualTypeConn;
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGDualTypeConn;->setContext(Landroid/content/Context;)V

    .line 1871
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDualPDGConnection() X id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wfcprefer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WFC settings : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1880
    .end local v0    # "conn":Lcom/android/server/ePDGDualTypeConn;
    :goto_1
    return-object v0

    .line 1864
    :cond_2
    iput v4, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    goto :goto_0

    .line 1876
    :cond_3
    invoke-static {p1}, Lcom/android/server/ePDGSTypeConnection;->makePDGConnection(I)Lcom/android/server/ePDGSTypeConnection;

    move-result-object v0

    .line 1877
    .local v0, "conn":Lcom/android/server/ePDGSTypeConnection;
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPDGConnection() X id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private findePDGConnection(I)Lcom/android/server/ePDGConnection;
    .locals 3
    .param p1, "fid"    # I

    .prologue
    .line 1885
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 1886
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    invoke-virtual {v0}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1889
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findePDGConnectionbyCid(I)Lcom/android/server/ePDGConnection;
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 1895
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 1896
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    iget v2, v0, Lcom/android/server/ePDGConnection;->cid:I

    if-ne v2, p1, :cond_0

    .line 1899
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDualType(I)Z
    .locals 2
    .param p1, "fid"    # I

    .prologue
    .line 1841
    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1843
    :cond_0
    const/4 v0, 0x1

    .line 1845
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3456
    const-string v0, "ePDGTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    return-void
.end method

.method private makeNetworkCapabilities(I)Landroid/net/NetworkCapabilities;
    .locals 8
    .param p1, "mid"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 807
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 808
    .local v1, "result":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 810
    iget v3, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 812
    :cond_0
    if-nez p1, :cond_1

    .line 814
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 839
    :goto_0
    const v2, 0xc800

    .line 840
    .local v2, "up":I
    const/16 v0, 0x1399

    .line 842
    .local v0, "down":I
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 843
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 844
    const-string v3, "ePDG"

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 845
    .end local v0    # "down":I
    .end local v1    # "result":Landroid/net/NetworkCapabilities;
    .end local v2    # "up":I
    :goto_1
    return-object v1

    .line 818
    .restart local v1    # "result":Landroid/net/NetworkCapabilities;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 821
    :cond_2
    iget v3, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v3, v6, :cond_4

    .line 823
    if-eq p1, v6, :cond_3

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown pdn id!! is vowif start?? : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 827
    :cond_3
    invoke-virtual {v1, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 828
    invoke-virtual {v1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 834
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private makeidentity()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x3

    .line 1779
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1781
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    .line 1817
    :cond_0
    :goto_0
    return-object v3

    .line 1784
    :cond_1
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1786
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1789
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1791
    .local v1, "length":I
    if-ge v1, v6, :cond_2

    .line 1793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi is strange just return"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1798
    :cond_2
    const/4 v2, 0x3

    .line 1806
    .local v2, "mnc_len":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    .line 1807
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    .line 1810
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    .line 1813
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@wlan.mnc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mcc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gppnetwork.org"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    .line 1815
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imsi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1817
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->identity:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private onConnectionRsp(Lcom/android/server/ePDGConnInfo;)V
    .locals 10
    .param p1, "rsp"    # Lcom/android/server/ePDGConnInfo;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 852
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-le v0, v4, :cond_1

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "What???? Bad SMi id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-nez v0, :cond_9

    .line 860
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-gt v0, v7, :cond_0

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data Connect Success!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v6, v0, v1

    .line 866
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    if-ne v0, v3, :cond_6

    .line 868
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 880
    :goto_1
    iget-object v0, p1, Lcom/android/server/ePDGConnInfo;->ConnectedGWAddr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mIpsecAddr:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 883
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mIface:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 884
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mdnss:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 885
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget-object v2, p1, Lcom/android/server/ePDGConnInfo;->mIpsecGW:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 888
    iget-object v0, p1, Lcom/android/server/ePDGConnInfo;->mFQDN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p1, Lcom/android/server/ePDGConnInfo;->mFQDN:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGTracker;->FQDNForEPDG:Ljava/lang/String;

    .line 892
    :cond_2
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_8

    .line 894
    :cond_3
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    .line 895
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    iget v3, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    iget v4, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v4, v0, v4

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    iget v5, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 899
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->sendLOSnotification(I)V

    .line 914
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 916
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    .line 917
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyonConnectionParam(I)V

    .line 1154
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandrequestagain()V

    goto/16 :goto_0

    .line 870
    :cond_6
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    if-ne v0, v4, :cond_7

    .line 872
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/4 v2, 0x6

    aput v2, v0, v1

    goto/16 :goto_1

    .line 876
    :cond_7
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v6, v0, v1

    goto/16 :goto_1

    .line 908
    :cond_8
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-ne v0, v3, :cond_4

    .line 910
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    .line 911
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v2, v0, v2

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    iget v3, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    iget v4, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v4, v0, v4

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    iget v5, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget-object v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 912
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->sendLOSnotification(I)V

    goto :goto_2

    .line 922
    :cond_9
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 924
    const-string v0, "Exit Fail status, we set status disconnect"

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v4, v0, v1

    .line 926
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    goto :goto_3

    .line 928
    :cond_a
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-ne v0, v4, :cond_e

    .line 930
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v4, v0, v1

    .line 933
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 936
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_c

    .line 938
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 948
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 951
    iget-boolean v0, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_d

    .line 954
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v7, v0, v6}, Lcom/android/server/ePDGTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/ePDGTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 940
    :cond_c
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-ne v0, v3, :cond_b

    .line 942
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    goto :goto_4

    .line 959
    :cond_d
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->sendLOSnotification(I)V

    .line 960
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_3

    .line 964
    :cond_e
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-ne v0, v3, :cond_14

    .line 966
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    aput v2, v0, v1

    .line 967
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v5, v0, v1

    .line 969
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_f

    .line 972
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    if-nez v0, :cond_10

    .line 973
    const-string v0, "fail to notify sm cause, ePDGConnection is null"

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 999
    :goto_5
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus(I)V

    .line 1005
    :cond_f
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    goto/16 :goto_3

    .line 976
    :cond_10
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/ePDGConnection;->isSmCauseForEPDG:Z

    if-eqz v0, :cond_13

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] sm_cause ePDG, so send intent to IMS - APN Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", APN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Reason : ePDG, Fail Cause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 978
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    const-string v0, "networkType"

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x12

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    const-string v0, "reason"

    const-string v1, "ePDG"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "apnType"

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    :cond_11
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "apn"

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    :cond_12
    const-string v0, "failCause"

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    const-string v0, "smCause"

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 990
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_13
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] sm_cause LTE, so broadcastPreciseDataConnectionStateChanged - APN Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", APN : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Reason : ePDG, Fail Cause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Fail Cause String : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    const/16 v2, 0xd

    iget v3, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v3}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->getAPNwithFid(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ePDG"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/ePDGTracker;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iget v7, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 993
    :catch_0
    move-exception v8

    .line 995
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException broadcastPreciseDataConnectionStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1010
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_14
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    if-ne v0, v5, :cond_1a

    .line 1012
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    aput v2, v0, v1

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] CON_LOST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget v0, v0, v1

    const/16 v1, 0x138c

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget v0, v0, v1

    const/16 v1, 0x138d

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget v0, v0, v1

    const/16 v1, 0x138f

    if-ne v0, v1, :cond_16

    .line 1016
    :cond_15
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v5, v0, v1

    .line 1017
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_3

    .line 1025
    :cond_16
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v4, v0, v1

    .line 1029
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1032
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_18

    .line 1034
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 1041
    :cond_17
    :goto_6
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 1044
    iget-boolean v0, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-eqz v0, :cond_19

    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-nez v0, :cond_19

    .line 1047
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v7, v0, v6}, Lcom/android/server/ePDGTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/ePDGTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 1036
    :cond_18
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    if-ne v0, v3, :cond_17

    .line 1038
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    goto :goto_6

    .line 1051
    :cond_19
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus(I)V

    .line 1052
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->sendLOSnotification(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_3

    .line 1061
    :cond_1a
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 1063
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/16 v2, 0x3e8

    aput v2, v0, v1

    .line 1064
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v5, v0, v1

    .line 1066
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 1068
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus(I)V

    .line 1069
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_3

    .line 1089
    :cond_1b
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_1c

    .line 1091
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/16 v2, 0x3e9

    aput v2, v0, v1

    .line 1092
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aput v5, v0, v1

    .line 1094
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 1096
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_3

    .line 1102
    :cond_1c
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/16 v1, 0x138d

    if-ne v0, v1, :cond_1d

    .line 1104
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/16 v2, 0x138d

    aput v2, v0, v1

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG]Handover Fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1106
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 1109
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus(I)V

    goto/16 :goto_3

    .line 1112
    :cond_1d
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1e

    .line 1114
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->reason:I

    aput v2, v0, v1

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG]Connectivity Fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mLastfailreason:[I

    iget v2, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1116
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    .line 1117
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 1119
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyErrorStatus(I)V

    goto/16 :goto_3

    .line 1122
    :cond_1e
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1f

    .line 1124
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 1125
    const-string v0, "[ePDG]Handover success to LTE "

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1126
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 1129
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->sendLOSnotification(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_3

    .line 1134
    :cond_1f
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_20

    .line 1136
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 1137
    const-string v0, "[ePDG]Handover success to ePDG "

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1138
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->resetCB(I)V

    .line 1139
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v0, :cond_5

    .line 1141
    iget v0, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->sendLOSnotification(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->mid:I

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_3

    .line 1147
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG]unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/ePDGConnInfo;->returntype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private sendLOSnotification(I)V
    .locals 12
    .param p1, "mid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 696
    if-le p1, v4, :cond_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mid is wrong : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 803
    :goto_0
    return-void

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendLOSnotification !! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->myServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_1

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myServiceState is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->myServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v9

    .line 712
    .local v9, "networkType":I
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 714
    .local v10, "thisstate":Landroid/net/NetworkInfo$DetailedState;
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    new-instance v1, Landroid/net/NetworkInfo;

    const-string v2, "MOBILE"

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v9, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 718
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 728
    :goto_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 730
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 732
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ePDGConnection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 756
    :goto_2
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    const-string v1, "ePDG"

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    if-nez p1, :cond_7

    .line 765
    iget-object v7, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    .line 772
    .local v7, "mLinkProperties":Landroid/net/LinkProperties;
    :goto_3
    const-string v0, "524288,1048576,2097152,262144,524288,1048576"

    invoke-virtual {v7, v0}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    aget-object v0, v0, p1

    if-nez v0, :cond_8

    .line 777
    iget-object v11, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    new-instance v0, Lcom/android/server/ePDGTracker$ePDGNetworkAgent;

    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ePDGConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    const-string v4, "ePDGNetworkAgent"

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v5, v1, p1

    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->makeNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ePDGTracker$ePDGNetworkAgent;-><init>(Lcom/android/server/ePDGTracker;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    aput-object v0, v11, p1

    goto/16 :goto_0

    .line 723
    .end local v7    # "mLinkProperties":Landroid/net/LinkProperties;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo is not null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set networktype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v0, p1

    if-nez v0, :cond_5

    .line 737
    :cond_4
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 738
    const/16 v9, 0x12

    .line 739
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ePDGConnection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setExtraInfo(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    goto/16 :goto_2

    .line 744
    :cond_5
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 746
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_2

    .line 751
    :cond_6
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_2

    .line 769
    :cond_7
    iget-object v7, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    .restart local v7    # "mLinkProperties":Landroid/net/LinkProperties;
    goto/16 :goto_3

    .line 788
    :cond_8
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v10, v0, :cond_9

    .line 790
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 796
    :cond_9
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mNetworkInfo:[Landroid/net/NetworkInfo;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 798
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto/16 :goto_0
.end method

.method private setAlldcStop()V
    .locals 3

    .prologue
    .line 1903
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 1904
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/ePDGConnection;->setManagerStatus(Z)V

    goto :goto_0

    .line 1906
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkdcandrequestagain()V
    .locals 3

    .prologue
    .line 2010
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 2012
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2014
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkdcandrequestagain start self start, fid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2017
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStart(I)I

    .line 2025
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 2026
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStop(I)I

    .line 2010
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2021
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkdcandrequestagain it is on but fail so do not retry, fid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2031
    :cond_3
    return-void
.end method

.method public checkdcandsetfeature()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2000
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2002
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v2, v1, v0

    .line 2000
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2005
    :cond_0
    return-void
.end method

.method public determineTMUSRSSI(Z)I
    .locals 28
    .param p1, "isfist"    # Z

    .prologue
    .line 2211
    const/4 v11, 0x0

    .line 2212
    .local v11, "myWifiinfo":[I
    const/4 v15, 0x0

    .line 2215
    .local v15, "ret":I
    const-string v19, "net.wifisigmon"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2216
    .local v14, "operator":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2218
    .local v9, "isCheckPLoss":Z
    if-nez v14, :cond_1

    .line 2220
    const-string v19, "[ePDG] packet loss check is disabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2221
    const/4 v9, 0x0

    .line 2234
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ePDGTracker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/net/wifi/IWifiManager;->getWifiRSSIandLoss()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2239
    :goto_1
    if-nez v11, :cond_3

    .line 2241
    const-string v19, "[ePDG] WiFi info is null. So it will be skipped this time."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2242
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v24, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v16, v15

    .line 2314
    .end local v15    # "ret":I
    .local v16, "ret":I
    :goto_2
    return v16

    .line 2223
    .end local v16    # "ret":I
    .restart local v15    # "ret":I
    :cond_1
    const-string v19, "yes"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2225
    if-eqz p1, :cond_2

    .line 2227
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ePDG] packet loss check is enabled!! "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2229
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 2235
    :catch_0
    move-exception v7

    .line 2236
    .local v7, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ePDG] getWifiRSSIandLoss RemoteException : "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2245
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const-wide/16 v12, 0x0

    .line 2246
    .local v12, "loss":D
    const/16 v19, 0x1

    aget v8, v11, v19

    .line 2247
    .local v8, "good":I
    const/16 v19, 0x2

    aget v4, v11, v19

    .line 2248
    .local v4, "bad":I
    const-wide/16 v20, 0x0

    .line 2249
    .local v20, "term_loss":D
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v19, "###.##"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v6, "df":Ljava/text/DecimalFormat;
    const/16 v19, 0x0

    aget v5, v11, v19

    .line 2253
    .local v5, "currentRssi":I
    add-int v19, v8, v4

    if-eqz v19, :cond_4

    .line 2255
    int-to-double v0, v4

    move-wide/from16 v24, v0

    add-int v19, v8, v4

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v12, v24, v26

    .line 2258
    :cond_4
    if-eqz p1, :cond_5

    .line 2260
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ePDG] Start TMUS monitoring!! RSSI="

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v24, 0x0

    aget v24, v11, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, " Good!! = "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v24, 0x1

    aget v24, v11, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, ", Bad!! = "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v24, 0x2

    aget v24, v11, v24

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, ", Loss = "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2261
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 2262
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 2266
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ePDGTracker;->oldGood:I

    move/from16 v19, v0

    sub-int v18, v8, v19

    .line 2267
    .local v18, "term_good":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ePDGTracker;->oldBad:I

    move/from16 v19, v0

    sub-int v17, v4, v19

    .line 2269
    .local v17, "term_bad":I
    add-int v19, v18, v17

    if-eqz v19, :cond_6

    .line 2271
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-int v19, v18, v17

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v20, v24, v26

    .line 2274
    :cond_6
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 2275
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 2277
    const/4 v10, 0x0

    .line 2278
    .local v10, "isPacketBAD":Z
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    .line 2280
    .local v22, "tmuspacketthre":D
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    cmpl-double v19, v20, v22

    if-lez v19, :cond_7

    .line 2282
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BAD LOSS detect term loss"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, " bad="

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2283
    if-eqz v9, :cond_7

    .line 2285
    const/4 v10, 0x1

    .line 2289
    :cond_7
    if-eqz v10, :cond_8

    .line 2291
    const/4 v15, 0x2

    .line 2312
    :goto_3
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    const-wide/16 v24, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v16, v15

    .line 2314
    .end local v15    # "ret":I
    .restart local v16    # "ret":I
    goto/16 :goto_2

    .line 2295
    .end local v16    # "ret":I
    .restart local v15    # "ret":I
    :cond_8
    const/16 v19, -0x4b

    move/from16 v0, v19

    if-le v5, v0, :cond_9

    .line 2297
    const/4 v15, 0x0

    goto :goto_3

    .line 2299
    :cond_9
    const/16 v19, -0x4b

    move/from16 v0, v19

    if-gt v5, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ePDGTracker;->tmushandoutthre:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v5, v0, :cond_a

    .line 2301
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ePDG] RSSI is mid, rssi= "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, " average Loss : "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2302
    const/4 v15, 0x1

    goto :goto_3

    .line 2306
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "[ePDG] RSSI is BAD, rssi= "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, " average Loss : "

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2307
    const/4 v15, 0x2

    goto/16 :goto_3
.end method

.method public ePDGHandOverStatus(I)V
    .locals 9
    .param p1, "extendedRAT"    # I

    .prologue
    .line 3296
    const/4 v8, 0x0

    .line 3298
    .local v8, "apnfid":I
    const/16 v1, 0x12c

    if-ne p1, v1, :cond_0

    .line 3300
    const/4 v8, 0x1

    .line 3304
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 3307
    .local v0, "mydc":Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_3

    .line 3310
    const/16 v1, 0x68

    if-eq p1, v1, :cond_1

    const/16 v1, 0x69

    if-ne p1, v1, :cond_5

    .line 3312
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mydc is null!! : extendedRAT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so create it "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3313
    invoke-direct {p0, v8}, Lcom/android/server/ePDGTracker;->createPDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 3314
    iget-boolean v1, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGConnection;->setFQDNByTestApp(ZLjava/lang/String;)V

    .line 3315
    iget-boolean v1, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGConnection;->setEPDGAddrByTestApp(ZLjava/lang/String;)V

    .line 3317
    iget v1, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 3319
    :cond_2
    iget v1, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    iget v2, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    iget v3, p0, Lcom/android/server/ePDGTracker;->call_status:I

    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    iget v6, p0, Lcom/android/server/ePDGTracker;->DataState:I

    iget v7, p0, Lcom/android/server/ePDGTracker;->MobileTech:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ePDGConnection;->setinitialvalue(IIIZZII)V

    .line 3335
    :cond_3
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/ePDGConnection;->ePDGHandOverStatus(I)V

    .line 3337
    :goto_1
    return-void

    .line 3323
    :cond_4
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGConnection;->setWIFIStatus(ZZ)V

    goto :goto_0

    .line 3328
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mydc is null!! : extendedRAT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " just go out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public ePDGHandvoertriggering(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "req"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ePDGHandvoertriggering is called!! myfeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1747
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v2

    .line 1748
    .local v2, "fid":I
    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2

    if-nez v2, :cond_2

    .line 1750
    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v1

    .line 1751
    .local v1, "dc":Lcom/android/server/ePDGConnection;
    const/4 v0, 0x0

    .line 1753
    .local v0, "PRi":I
    if-eqz p2, :cond_0

    .line 1754
    const/4 v0, 0x2

    .line 1759
    :goto_0
    if-nez v1, :cond_1

    .line 1760
    const-string v4, "ePDGHandvoertriggering : dc is null. so it will be return."

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1771
    .end local v0    # "PRi":I
    .end local v1    # "dc":Lcom/android/server/ePDGConnection;
    :goto_1
    return v3

    .line 1757
    .restart local v0    # "PRi":I
    .restart local v1    # "dc":Lcom/android/server/ePDGConnection;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1763
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/server/ePDGConnection;->setinitPrichange(I)V

    goto :goto_1

    .line 1768
    .end local v0    # "PRi":I
    .end local v1    # "dc":Lcom/android/server/ePDGConnection;
    :cond_2
    if-eqz p2, :cond_3

    .line 1769
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->ePDGStart(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 1771
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->ePDGStop(Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public ePDGLosStart(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 1490
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getEPDGID(I)I

    move-result v0

    .line 1491
    .local v0, "fid":I
    if-le v0, v3, :cond_0

    .line 1492
    const/4 v1, 0x2

    .line 1513
    :goto_0
    return v1

    .line 1496
    :cond_0
    if-ne v0, v2, :cond_2

    .line 1498
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 1513
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStart(I)I

    move-result v1

    goto :goto_0

    .line 1500
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 1502
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 1503
    const/4 v0, 0x1

    goto :goto_1

    .line 1505
    :cond_3
    if-ne v0, v3, :cond_1

    .line 1507
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 1508
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public ePDGLosStop(I)I
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1176
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getEPDGID(I)I

    move-result v0

    .line 1179
    .local v0, "fid":I
    if-le v0, v5, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return v1

    .line 1195
    :cond_1
    if-ne v0, v4, :cond_4

    .line 1197
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 1211
    :cond_2
    :goto_1
    if-ne v0, v4, :cond_3

    .line 1213
    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    if-nez v2, :cond_0

    .line 1222
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStop(I)I

    move-result v1

    goto :goto_0

    .line 1199
    :cond_4
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 1201
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 1202
    const/4 v0, 0x1

    goto :goto_1

    .line 1204
    :cond_5
    if-ne v0, v5, :cond_2

    .line 1206
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 1207
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public ePDGPrefTechdone(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 3276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ePDGPrefTechdone: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3279
    return-void
.end method

.method public ePDGStart(I)I
    .locals 11
    .param p1, "fid"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v10, 0x1

    .line 1563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ePDGStart is called!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1565
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aput-boolean v10, v4, p1

    .line 1582
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v9, v4, p1

    .line 1584
    .local v9, "status":I
    if-eqz v9, :cond_0

    if-eq v9, v3, :cond_0

    const/4 v4, 0x6

    if-ne v9, v4, :cond_1

    .line 1588
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aleady connected!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1589
    const/4 v3, 0x0

    .line 1713
    :goto_0
    return v3

    .line 1591
    :cond_1
    if-ne v9, v10, :cond_2

    .line 1593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aleady connecting state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    move v3, v10

    .line 1594
    goto :goto_0

    .line 1607
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    if-nez v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->isUsingOnlyWifi(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NO network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1610
    const/4 v3, 0x3

    goto :goto_0

    .line 1634
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ePDGTracker;->makeidentity()Ljava/lang/String;

    move-result-object v8

    .line 1637
    .local v8, "identity":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 1639
    const-string v4, "SIM is not ready so just go out"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1657
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1659
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_6

    .line 1661
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->createPDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1662
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ePDGConnection;->setFQDNByTestApp(ZLjava/lang/String;)V

    .line 1663
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ePDGConnection;->setEPDGAddrByTestApp(ZLjava/lang/String;)V

    .line 1666
    iget v3, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 1668
    :cond_5
    iget v1, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    iget v2, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    iget v3, p0, Lcom/android/server/ePDGTracker;->call_status:I

    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    iget v6, p0, Lcom/android/server/ePDGTracker;->DataState:I

    iget v7, p0, Lcom/android/server/ePDGTracker;->MobileTech:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ePDGConnection;->setinitialvalue(IIIZZII)V

    .line 1695
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1696
    .local v1, "msg_connect":Landroid/os/Message;
    iput v10, v1, Landroid/os/Message;->what:I

    .line 1699
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1700
    .local v2, "msg_lost":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1704
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGConnection;->ePDGbringUp(Landroid/os/Message;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1706
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v10, v3, p1

    :goto_2
    move v3, v10

    .line 1713
    goto/16 :goto_0

    .line 1672
    .end local v1    # "msg_connect":Landroid/os/Message;
    .end local v2    # "msg_lost":Landroid/os/Message;
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    invoke-virtual {v0, v10, v3}, Lcom/android/server/ePDGConnection;->setWIFIStatus(ZZ)V

    goto :goto_1

    .line 1710
    .restart local v1    # "msg_connect":Landroid/os/Message;
    .restart local v2    # "msg_lost":Landroid/os/Message;
    :cond_8
    const-string v3, "connection req Error"

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public ePDGStart(Ljava/lang/String;)I
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 1519
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v0

    .line 1520
    .local v0, "fid":I
    if-le v0, v3, :cond_0

    .line 1521
    const/4 v1, 0x2

    .line 1542
    :goto_0
    return v1

    .line 1525
    :cond_0
    if-ne v0, v2, :cond_2

    .line 1527
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 1542
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStart(I)I

    move-result v1

    goto :goto_0

    .line 1529
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 1531
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 1532
    const/4 v0, 0x1

    goto :goto_1

    .line 1534
    :cond_3
    if-ne v0, v3, :cond_1

    .line 1536
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 1537
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public ePDGStop(I)I
    .locals 10
    .param p1, "fid"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x6

    .line 1290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ePDGStop is called!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1291
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aput-boolean v7, v4, p1

    .line 1293
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v2, v4, p1

    .line 1296
    .local v2, "status":I
    if-eq v2, v9, :cond_0

    if-ne v2, v6, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return v3

    .line 1300
    :cond_1
    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v4, v8, :cond_2

    .line 1302
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    if-nez p1, :cond_0

    .line 1311
    :cond_2
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v4, :cond_0

    .line 1320
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1322
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_3

    .line 1324
    const-string v4, "something wrong!! no dc but status is connected?? anyway return inactive"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1340
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1341
    .local v1, "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1342
    invoke-virtual {v0, v1}, Lcom/android/server/ePDGConnection;->ePDGteardown(Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1344
    const-string v4, "something wrong!! SM and status is mismatched?? anyway return inactive"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1349
    :cond_4
    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v4, v8, :cond_9

    .line 1351
    if-eqz p1, :cond_6

    .line 1353
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v6, v4, p1

    .line 1381
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v4, p1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto :goto_0

    .line 1357
    :cond_6
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v4, v4, p1

    if-nez v4, :cond_8

    .line 1359
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v6, v3, p1

    .line 1360
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v3, :cond_7

    .line 1362
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v3, p1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    .line 1364
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getapntypewithfid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7, v7}, Lcom/android/server/ePDGConnection;->ePDGDeactivateDataCall(Ljava/lang/String;II)V

    .line 1367
    const/16 v3, 0x8

    goto :goto_0

    .line 1371
    :cond_8
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v9, v4, p1

    goto :goto_1

    .line 1375
    :cond_9
    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_a

    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 1377
    :cond_a
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v6, v4, p1

    goto :goto_1
.end method

.method public ePDGStop(Ljava/lang/String;)I
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1230
    const-string v2, "APPALL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1232
    const-string v1, "APPALL Called"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1233
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 1234
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 1235
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 1236
    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->ePDGStop(I)I

    move-result v1

    .line 1283
    :cond_0
    :goto_0
    return v1

    .line 1239
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v0

    .line 1240
    .local v0, "fid":I
    if-gt v0, v5, :cond_0

    .line 1256
    if-ne v0, v4, :cond_4

    .line 1258
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    .line 1272
    :cond_2
    :goto_1
    if-ne v0, v4, :cond_3

    .line 1274
    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwappRef:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    if-nez v2, :cond_0

    .line 1283
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->ePDGStop(I)I

    move-result v1

    goto :goto_0

    .line 1260
    :cond_4
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    .line 1262
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwcbsRef:Z

    .line 1263
    const/4 v0, 0x1

    goto :goto_1

    .line 1265
    :cond_5
    if-ne v0, v5, :cond_2

    .line 1267
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->vzwmmsRef:Z

    .line 1268
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public fidtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "fid"    # I

    .prologue
    .line 3380
    packed-switch p1, :pswitch_data_0

    .line 3385
    const-string v0, "UnKnow"

    :goto_0
    return-object v0

    .line 3381
    :pswitch_0
    const-string v0, "IMS"

    goto :goto_0

    .line 3382
    :pswitch_1
    const-string v0, "VZWAPP"

    goto :goto_0

    .line 3383
    :pswitch_2
    const-string v0, "CF"

    goto :goto_0

    .line 3384
    :pswitch_3
    const-string v0, "STATIC"

    goto :goto_0

    .line 3380
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAPNwithFid(I)Ljava/lang/String;
    .locals 2
    .param p1, "fid"    # I

    .prologue
    .line 1831
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1832
    .local v0, "mydc":Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_0

    .line 1833
    const-string v1, "unknown"

    .line 1835
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/ePDGConnection;->mApn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDebugInfo(II)[D
    .locals 1
    .param p1, "infotype"    # I
    .param p2, "itemnum"    # I

    .prologue
    .line 3371
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEPDGID(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1473
    sparse-switch p1, :sswitch_data_0

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong feature type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1484
    const/16 v0, 0xa

    :goto_0
    return v0

    .line 1475
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1477
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1479
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 1481
    :sswitch_3
    const/4 v0, 0x7

    goto :goto_0

    .line 1473
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public getEPDGfeatureID(Ljava/lang/String;)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 2057
    const-string v0, "VZWIMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    const/4 v0, 0x0

    .line 2066
    :goto_0
    return v0

    .line 2059
    :cond_0
    const-string v0, "VZWAPP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2060
    const/4 v0, 0x1

    goto :goto_0

    .line 2061
    :cond_1
    const-string v0, "CF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2062
    const/4 v0, 0x2

    goto :goto_0

    .line 2063
    :cond_2
    const-string v0, "Static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2064
    const/4 v0, 0x3

    goto :goto_0

    .line 2066
    :cond_3
    const/16 v0, 0x3e7

    goto :goto_0
.end method

.method public getIpv4(I)Ljava/net/InetAddress;
    .locals 6
    .param p1, "mid"    # I

    .prologue
    .line 2933
    invoke-virtual {p0, p1}, Lcom/android/server/ePDGTracker;->getLinkpro(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 2935
    .local v4, "mylink":Landroid/net/LinkProperties;
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 2937
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2938
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 2939
    check-cast v3, Ljava/net/Inet4Address;

    .line 2940
    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2946
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinkpro(I)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "mid"    # I

    .prologue
    .line 3091
    packed-switch p1, :pswitch_data_0

    .line 3098
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    :goto_0
    return-object v0

    .line 3094
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 3096
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 3091
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNetPrefer(Ljava/lang/String;)I
    .locals 9
    .param p1, "reqtype"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 3421
    const-string v1, "MMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3423
    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 3425
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_1

    .line 3427
    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->createPDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 3428
    iget-boolean v1, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGConnection;->setFQDNByTestApp(ZLjava/lang/String;)V

    .line 3429
    iget-boolean v1, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    iget-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGConnection;->setEPDGAddrByTestApp(ZLjava/lang/String;)V

    .line 3432
    iget v1, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 3434
    :cond_0
    iget v1, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    iget v2, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    iget v3, p0, Lcom/android/server/ePDGTracker;->call_status:I

    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    iget v6, p0, Lcom/android/server/ePDGTracker;->DataState:I

    iget v7, p0, Lcom/android/server/ePDGTracker;->MobileTech:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ePDGConnection;->setinitialvalue(IIIZZII)V

    .line 3442
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/ePDGConnection;->getprefer()I

    move-result v8

    .line 3443
    .local v8, "retvalue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetPrefer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3450
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    .end local v8    # "retvalue":I
    :goto_1
    return v8

    .line 3438
    .restart local v0    # "dc":Lcom/android/server/ePDGConnection;
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ePDGConnection;->setWIFIStatus(ZZ)V

    goto :goto_0

    .line 3449
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    :cond_3
    const-string v1, "getNetPrefer: wrong string"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3450
    const/4 v8, 0x2

    goto :goto_1
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "ipv"    # Ljava/lang/String;

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "ipv"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3393
    invoke-virtual {p0, p2}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 3394
    .local v0, "mydc":Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_0

    .line 3405
    :goto_0
    return-object v1

    .line 3397
    :cond_0
    const-string v2, "INET"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3398
    iget-object v1, v0, Lcom/android/server/ePDGConnection;->pcscfAddr_ipv4:[Ljava/lang/String;

    goto :goto_0

    .line 3400
    :cond_1
    const-string v2, "INET6"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3401
    iget-object v1, v0, Lcom/android/server/ePDGConnection;->pcscfAddr_ipv6:[Ljava/lang/String;

    goto :goto_0

    .line 3404
    :cond_2
    const-string v2, " ipv is not matched"

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getapntypewithfid(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2072
    packed-switch p1, :pswitch_data_0

    .line 2096
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2076
    :pswitch_1
    const-string v0, "ims"

    goto :goto_0

    .line 2080
    :pswitch_2
    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2082
    :cond_0
    const-string v0, "cbs"

    goto :goto_0

    .line 2085
    :cond_1
    const-string v0, "vzwapp"

    goto :goto_0

    .line 2088
    :pswitch_3
    const-string v0, "CF"

    goto :goto_0

    .line 2090
    :pswitch_4
    const-string v0, "static"

    goto :goto_0

    .line 2092
    :pswitch_5
    const-string v0, "cbs"

    goto :goto_0

    .line 2094
    :pswitch_6
    const-string v0, "mms"

    goto :goto_0

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getePDGLinkProp(I)Landroid/net/LinkProperties;
    .locals 7
    .param p1, "epdgtypeid"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2718
    packed-switch p1, :pswitch_data_0

    .line 2749
    :goto_0
    :pswitch_0
    return-object v0

    .line 2724
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2726
    :cond_0
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    aget-object v2, v0, v5

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v3, v0, v5

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    aget-object v4, v0, v5

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    aget-object v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mkae ims LinkProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2729
    :cond_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 2735
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2737
    :cond_2
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecIf:[Ljava/lang/String;

    aget-object v2, v0, v6

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v3, v0, v6

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecGW:[Ljava/lang/String;

    aget-object v4, v0, v6

    iget-object v0, p0, Lcom/android/server/ePDGTracker;->iPsecDNS:[Ljava/lang/String;

    aget-object v5, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "make cbs LinkProperties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2740
    :cond_3
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    goto/16 :goto_0

    .line 2718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getePDGPDNStatus(I)I
    .locals 2
    .param p1, "networktype"    # I

    .prologue
    const/4 v0, 0x2

    .line 2695
    sparse-switch p1, :sswitch_data_0

    .line 2710
    :goto_0
    return v0

    .line 2699
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0

    .line 2702
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    .line 2704
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v1, v0

    goto :goto_0

    .line 2707
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0

    .line 2695
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x13 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public getePDGstatuswithfid(I)I
    .locals 2
    .param p1, "fid"    # I

    .prologue
    .line 2682
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v0, v1, p1

    .line 2684
    .local v0, "mMyIMSstatus":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2686
    const/4 v0, 0x2

    .line 2689
    :cond_0
    return v0
.end method

.method public getfeatureID(Ljava/lang/String;)I
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 2036
    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2037
    const/4 v0, 0x0

    .line 2051
    :goto_0
    return v0

    .line 2038
    :cond_0
    const-string v0, "vzwapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2039
    const/4 v0, 0x1

    goto :goto_0

    .line 2040
    :cond_1
    const-string v0, "CF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2041
    const/4 v0, 0x2

    goto :goto_0

    .line 2042
    :cond_2
    const-string v0, "Static"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2043
    const/4 v0, 0x3

    goto :goto_0

    .line 2044
    :cond_3
    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2045
    const/4 v0, 0x6

    goto :goto_0

    .line 2046
    :cond_4
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2047
    const/4 v0, 0x7

    goto :goto_0

    .line 2048
    :cond_5
    const-string v0, "APPALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2049
    const/16 v0, 0x3e6

    goto :goto_0

    .line 2051
    :cond_6
    const/16 v0, 0x3e7

    goto :goto_0
.end method

.method public getisMobileavail()Z
    .locals 1

    .prologue
    .line 1823
    iget-boolean v0, p0, Lcom/android/server/ePDGTracker;->mobile_avail:Z

    return v0
.end method

.method public handleConnect(Landroid/net/NetworkInfo;Z)V
    .locals 9
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isIMS"    # Z

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v4, 0x1

    .line 2117
    iget v5, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v5, v4, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 2120
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    move v1, v4

    .line 2121
    .local v1, "newstatus":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-nez v5, :cond_0

    if-ne v1, v4, :cond_0

    .line 2123
    iput-boolean v1, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    .line 2124
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandrequestagain()V

    .line 2127
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is Handover possible= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2131
    .end local v1    # "newstatus":Z
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 2205
    :goto_1
    return-void

    .line 2120
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2136
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2138
    const-string v4, "handle connected call but state is not connected"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2149
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    if-ne v5, v4, :cond_5

    .line 2151
    const-string v4, "[ePDG] wifi is connected!!! - aleady check go out"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2156
    :cond_5
    const-string v5, "[ePDG] wifi is connected!!!"

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2157
    iput-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    .line 2161
    const-string v5, "net.loss"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2162
    .local v3, "threshold":Ljava/lang/String;
    if-nez v3, :cond_7

    .line 2164
    const/16 v5, 0x63

    iput v5, p0, Lcom/android/server/ePDGTracker;->thre:I

    .line 2190
    :goto_2
    iget v5, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-eq v5, v8, :cond_6

    iget v5, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v5, v7, :cond_a

    .line 2192
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->determineTMUSRSSI(Z)I

    move-result v5

    iput v5, p0, Lcom/android/server/ePDGTracker;->wifidetailstatus:I

    .line 2193
    iget v5, p0, Lcom/android/server/ePDGTracker;->wifidetailstatus:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ePDGTracker;->setTWiFistatus(ZI)V

    goto :goto_1

    .line 2166
    :cond_7
    iget v5, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-eq v5, v8, :cond_8

    iget v5, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v5, v7, :cond_9

    .line 2168
    :cond_8
    const/4 v2, 0x1

    .line 2171
    .local v2, "sysvalue":I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2175
    :goto_3
    mul-int/lit8 v5, v2, -0x1

    iput v5, p0, Lcom/android/server/ePDGTracker;->tmushandoutthre:I

    .line 2177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ePDG] get TMUS handout threshold "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "chvalue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ePDGTracker;->tmushandoutthre:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threshold exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2183
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "sysvalue":I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ePDG] get packet loss threshold "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2185
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/ePDGTracker;->thre:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 2186
    :catch_1
    move-exception v0

    .line 2187
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threshold exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2198
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->startmonitoring(Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 2200
    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->setWIFIstatus(Z)V

    goto/16 :goto_1
.end method

.method public handleDisconnect(Landroid/net/NetworkInfo;Z)V
    .locals 6
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isIMS"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2497
    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v4, v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 2499
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    move v1, v2

    .line 2500
    .local v1, "newstatus":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    .line 2502
    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 2503
    .local v0, "imsdc":Lcom/android/server/ePDGConnection;
    if-eqz v0, :cond_0

    .line 2505
    const-string v4, "we lost IMS PDN so will set lost "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2506
    invoke-virtual {v0, v3}, Lcom/android/server/ePDGConnection;->ePDGHandOverStatus(I)V

    .line 2511
    .end local v0    # "imsdc":Lcom/android/server/ePDGConnection;
    .end local v1    # "newstatus":Z
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 2534
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 2499
    goto :goto_0

    .line 2514
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2516
    const-string v2, "handle Disconnected call but state is connected!!"

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2520
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    if-nez v4, :cond_4

    .line 2522
    const-string v2, "[ePDG] wifi is Disconnected!!! - aleady check go out"

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2527
    :cond_4
    const-string v4, "[ePDG] wifi is Disconnected!!!"

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2528
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    .line 2531
    iput-boolean v2, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 2532
    invoke-virtual {p0, v3}, Lcom/android/server/ePDGTracker;->setWIFIstatus(Z)V

    .line 2533
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->stopmonitoring()V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 496
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unhandled msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 517
    :sswitch_0
    const-string v4, "we start temp code!!! "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->temptestcode()V

    goto :goto_0

    .line 522
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "we get rsp!! rsp type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 523
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 524
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/ePDGConnInfo;

    .line 525
    .local v3, "sendingResult":Lcom/android/server/ePDGConnInfo;
    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->onConnectionRsp(Lcom/android/server/ePDGConnInfo;)V

    goto :goto_0

    .line 529
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "sendingResult":Lcom/android/server/ePDGConnInfo;
    :sswitch_2
    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    if-eqz v4, :cond_0

    .line 532
    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v4, v6, :cond_2

    .line 534
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/ePDGTracker;->determineTMUSRSSI(Z)I

    move-result v2

    .line 535
    .local v2, "currentstat":I
    iget v4, p0, Lcom/android/server/ePDGTracker;->wifidetailstatus:I

    if-eq v4, v2, :cond_0

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ePDG] sig status changed!! currend = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OLD="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ePDGTracker;->wifidetailstatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 538
    iput v2, p0, Lcom/android/server/ePDGTracker;->wifidetailstatus:I

    .line 539
    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    iget v5, p0, Lcom/android/server/ePDGTracker;->wifidetailstatus:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ePDGTracker;->setTWiFistatus(ZI)V

    goto :goto_0

    .line 545
    .end local v2    # "currentstat":I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/ePDGTracker;->startmonitoring(Z)Z

    move-result v1

    .line 546
    .local v1, "currenloss":Z
    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    if-eq v4, v1, :cond_0

    .line 548
    iput-boolean v1, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    .line 549
    iget-boolean v4, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->setWIFIstatus(Z)V

    goto :goto_0

    .line 556
    .end local v1    # "currenloss":Z
    :sswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delayed rsp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 557
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    goto/16 :goto_0

    .line 562
    :sswitch_4
    const-string v4, "EVENT_SERVICE_CHANGE "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->onServiceStateChange()V

    goto/16 :goto_0

    .line 567
    :sswitch_5
    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v4, v6, :cond_0

    .line 569
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CALLSTATE_CH : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/ePDGTracker;->mcallstate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 570
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->onCallStateChange(I)V

    goto/16 :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x309 -> :sswitch_0
    .end sparse-switch
.end method

.method handleWFCPreferChange(Z)V
    .locals 5
    .param p1, "change"    # Z

    .prologue
    .line 638
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "PREFERRED_OPTION"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWFCPreferChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 652
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    iget v2, p0, Lcom/android/server/ePDGTracker;->wfcprefer:I

    invoke-virtual {v0, v2}, Lcom/android/server/ePDGConnection;->setWFCPreferChange(I)V

    goto :goto_0

    .line 655
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    :cond_0
    return-void
.end method

.method handleWFCSettingChange(Z)V
    .locals 6
    .param p1, "change"    # Z

    .prologue
    const/4 v5, 0x1

    .line 661
    const/4 v2, 0x1

    .line 663
    .local v2, "isCellonly":Z
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "CELL_ONLY"

    invoke-static {v3, v4, v5}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 666
    if-eqz v2, :cond_0

    .line 667
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    .line 671
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleWFCSettingChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 676
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    iget v3, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    invoke-virtual {v0, v3}, Lcom/android/server/ePDGConnection;->setWFCsettingChange(I)V

    goto :goto_1

    .line 669
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iput v5, p0, Lcom/android/server/ePDGTracker;->WFC_setting:I

    goto :goto_0

    .line 686
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public isAnyConnecting()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 1432
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v3, v0

    .line 1434
    .local v1, "status":I
    if-eq v1, v2, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 1440
    .end local v1    # "status":I
    :cond_0
    :goto_1
    return v2

    .line 1430
    .restart local v1    # "status":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1440
    .end local v1    # "status":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isConnection(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 3351
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v1, p1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v1, p1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aget v1, v1, p1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnection(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3341
    const-string v1, "ims"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3342
    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->isConnection(I)Z

    move-result v0

    .line 3346
    :cond_0
    :goto_0
    return v0

    .line 3343
    :cond_1
    const-string v1, "vzwapp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGTracker;->isConnection(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isControlType(ILjava/lang/String;)Z
    .locals 6
    .param p1, "version"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2989
    const/16 v5, 0x3e4

    if-ne p1, v5, :cond_3

    .line 2991
    invoke-virtual {p0, p2}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v0

    .line 2992
    .local v0, "fid":I
    const/4 v5, 0x6

    if-eq v0, v5, :cond_0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_1

    .line 2994
    :cond_0
    const/4 v0, 0x1

    .line 2996
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v2

    .line 3003
    .end local v0    # "fid":I
    .local v2, "mycon":Lcom/android/server/ePDGConnection;
    :goto_0
    packed-switch p1, :pswitch_data_0

    move v3, v4

    .line 3056
    :cond_2
    :goto_1
    return v3

    .line 3000
    .end local v2    # "mycon":Lcom/android/server/ePDGConnection;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v2

    .restart local v2    # "mycon":Lcom/android/server/ePDGConnection;
    goto :goto_0

    .line 3006
    :pswitch_0
    if-eqz v2, :cond_4

    .line 3008
    invoke-virtual {v2, p2}, Lcom/android/server/ePDGConnection;->setQosInfo(Ljava/lang/String;)Z

    goto :goto_1

    .line 3012
    :cond_4
    const-string v4, "[ePDG] get qos but no ims dc "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3018
    :pswitch_1
    if-nez v2, :cond_2

    .line 3025
    const-string v4, "[ePDG] get pcs_ch but no ims dc "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3031
    :pswitch_2
    if-eqz v2, :cond_5

    .line 3033
    invoke-virtual {v2, p2}, Lcom/android/server/ePDGConnection;->setPCSInfo(Ljava/lang/String;)Z

    goto :goto_1

    .line 3037
    :cond_5
    const-string v4, "[ePDG] get qos but no ims dc "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3043
    :pswitch_3
    if-eqz v2, :cond_6

    .line 3045
    const-string v5, "[ePDG] DISCONNECTED_DONE "

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3046
    const v5, 0x40006

    invoke-virtual {v2, v5, v4}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    .line 3047
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 3051
    .end local v1    # "msg":Landroid/os/Message;
    :cond_6
    const-string v4, "[ePDG] get DISCONNECTED_DONE no dc "

    invoke-direct {p0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3003
    nop

    :pswitch_data_0
    .packed-switch 0x3e4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isHandoverPossible(I)Z
    .locals 2
    .param p1, "fid"    # I

    .prologue
    const/4 v0, 0x1

    .line 1446
    if-eqz p1, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return v0

    .line 1449
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ePDGTracker;->mIMS_HO_avail:Z

    if-nez v1, :cond_0

    .line 1452
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialAttachtype(I)Z
    .locals 4
    .param p1, "fid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1459
    iget v2, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 1467
    :cond_1
    :goto_0
    return v0

    .line 1462
    :cond_2
    if-eq p1, v0, :cond_1

    move v0, v1

    .line 1467
    goto :goto_0
.end method

.method public isIpv4Connected()Z
    .locals 6

    .prologue
    .line 2951
    const/4 v4, 0x0

    .line 2952
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 2954
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2955
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 2956
    check-cast v3, Ljava/net/Inet4Address;

    .line 2957
    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2959
    const/4 v4, 0x1

    .line 2964
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_1
    return v4
.end method

.method public isIpv6Connected()Z
    .locals 6

    .prologue
    .line 2968
    const/4 v4, 0x0

    .line 2969
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 2971
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2972
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 2973
    check-cast v3, Ljava/net/Inet6Address;

    .line 2974
    .local v3, "i6addr":Ljava/net/Inet6Address;
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2976
    const/4 v4, 0x1

    .line 2981
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i6addr":Ljava/net/Inet6Address;
    :cond_1
    return v4
.end method

.method public isUsingOnlyWifi(I)Z
    .locals 2
    .param p1, "fid"    # I

    .prologue
    .line 1547
    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    .line 1549
    const/4 v0, 0x0

    .line 1553
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public issameaddr(ILjava/lang/String;)Z
    .locals 3
    .param p1, "mid"    # I
    .param p2, "newaddr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2915
    const/4 v2, 0x4

    if-le p1, v2, :cond_1

    .line 2927
    :cond_0
    :goto_0
    return v0

    .line 2918
    :cond_1
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-nez v2, :cond_2

    .line 2920
    const-string v0, "dc is connected but addr is not set, so just think it is same addr"

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    move v0, v1

    .line 2921
    goto :goto_0

    .line 2924
    :cond_2
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->iPsecAddr:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2925
    goto :goto_0
.end method

.method public notifyEPDGCallResult(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 17
    .param p1, "version"    # I
    .param p2, "status"    # I
    .param p3, "cid"    # I
    .param p4, "active"    # I
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "ifname"    # Ljava/lang/String;
    .param p7, "addresses"    # Ljava/lang/String;
    .param p8, "dnses"    # Ljava/lang/String;
    .param p9, "gateways"    # Ljava/lang/String;
    .param p10, "suggestedRetryTime"    # I
    .param p11, "apntype"    # Ljava/lang/String;

    .prologue
    .line 3110
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGTracker;->isControlType(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3220
    :goto_0
    return-void

    .line 3115
    :cond_0
    const-string v4, "[ePDG] notifyEPDGCallResult start "

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3118
    const/16 v16, 0x0

    .line 3119
    .local v16, "pdnNum":I
    const/4 v14, 0x0

    .line 3120
    .local v14, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/ePDGConnInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/android/server/ePDGConnInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    .local v3, "sendingResult":Lcom/android/server/ePDGConnInfo;
    const/4 v13, 0x0

    .line 3124
    .local v13, "dc":Lcom/android/server/ePDGConnection;
    const/4 v5, 0x0

    .line 3127
    .local v5, "mid":I
    if-nez p11, :cond_6

    .line 3129
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->findePDGConnectionbyCid(I)Lcom/android/server/ePDGConnection;

    move-result-object v13

    .line 3131
    if-nez v13, :cond_1

    .line 3133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no dc has this cid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3137
    :cond_1
    invoke-virtual {v13}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v5

    .line 3140
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/ePDGTracker;->getLinkpro(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 3142
    .local v15, "oldlink":Landroid/net/LinkProperties;
    invoke-virtual {v13}, Lcom/android/server/ePDGConnection;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not connected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3149
    :cond_2
    invoke-virtual {v13}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Lcom/android/server/ePDGTracker;->issameaddr(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "same addr so return mid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " addr :  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3157
    :cond_3
    invoke-virtual {v15}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v15}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p8

    .line 3159
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/ePDGTracker;->setLinkp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/ePDGTracker;->getLinkpro(I)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected & update ipv6 addr= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v13}, Lcom/android/server/ePDGConnection;->getConnectionID()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/ePDGNotifier;->notifyADDRChange(I)V

    goto/16 :goto_0

    .line 3169
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected & ipv4 addr change, mid= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " addr"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3170
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/server/ePDGTracker;->resetCurrentConnection(ILcom/android/server/ePDGConnection;)Z

    goto/16 :goto_0

    .line 3177
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/android/server/ePDGTracker;->resetCurrentConnection(ILcom/android/server/ePDGConnection;)Z

    goto/16 :goto_0

    .line 3185
    .end local v15    # "oldlink":Landroid/net/LinkProperties;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker;->getfeatureID(Ljava/lang/String;)I

    move-result v16

    .line 3187
    const/4 v4, 0x6

    move/from16 v0, v16

    if-eq v0, v4, :cond_7

    const/4 v4, 0x7

    move/from16 v0, v16

    if-ne v0, v4, :cond_8

    .line 3189
    :cond_7
    const/16 v16, 0x1

    .line 3192
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v13

    .line 3194
    if-nez v13, :cond_9

    .line 3195
    const-string v4, "[ePDG] Error. notifyEPDGCallResult : ePDGConnection is null "

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3198
    :cond_9
    move-object/from16 v0, p7

    iput-object v0, v3, Lcom/android/server/ePDGConnInfo;->mIpsecAddr:Ljava/lang/String;

    .line 3199
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/android/server/ePDGConnInfo;->mIface:Ljava/lang/String;

    .line 3200
    move-object/from16 v0, p9

    iput-object v0, v3, Lcom/android/server/ePDGConnInfo;->mIpsecGW:Ljava/lang/String;

    .line 3201
    move-object/from16 v0, p8

    iput-object v0, v3, Lcom/android/server/ePDGConnInfo;->mdnss:Ljava/lang/String;

    .line 3203
    if-eqz p2, :cond_a

    .line 3205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ePDG] notifyEPDGCallResult status error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3206
    const v4, 0x40006

    move/from16 v0, p2

    invoke-virtual {v13, v4, v0}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v14

    .line 3209
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3213
    :cond_a
    move/from16 v0, p3

    iput v0, v13, Lcom/android/server/ePDGConnection;->cid:I

    .line 3214
    const v4, 0x40005

    invoke-virtual {v13, v4}, Lcom/android/server/ePDGConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 3215
    const/4 v4, 0x0

    invoke-static {v14, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3216
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 3217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ePDG] notifyEPDGCallResult send success => type = [ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ] ,ifname = [ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ] ,addresses = [ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ] ,dnses = [ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ] ,gateways = [ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ] ,suggestedRetryTime = [ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ] ,apntype = [ "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyEPDGPDNStatus(IIILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "cid"    # I
    .param p3, "active"    # I
    .param p4, "newaddr"    # Ljava/lang/String;

    .prologue
    .line 3224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ePDG] notifyEPDGPDNStatus receive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new addr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3226
    const/4 v2, 0x0

    .line 3227
    .local v2, "pdnNum":I
    const/4 v1, 0x0

    .line 3233
    .local v1, "msg":Landroid/os/Message;
    invoke-direct {p0, p2}, Lcom/android/server/ePDGTracker;->findePDGConnectionbyCid(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 3235
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    if-nez v0, :cond_1

    .line 3270
    :cond_0
    :goto_0
    return-void

    .line 3238
    :cond_1
    if-nez p3, :cond_0

    .line 3240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we lost PDN!! cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/ePDGConnection;->mFid:I

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGTracker;->fidtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 3241
    const v3, 0x40006

    const/16 v4, 0x1392

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    .line 3244
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method onCallStateChange(I)V
    .locals 3
    .param p1, "callstate"    # I

    .prologue
    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call state change : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 624
    iput p1, p0, Lcom/android/server/ePDGTracker;->call_status:I

    .line 626
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 628
    .local v0, "imsdc":Lcom/android/server/ePDGConnection;
    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0, p1}, Lcom/android/server/ePDGConnection;->setCallStatus(I)V

    .line 633
    :cond_0
    return-void
.end method

.method onServiceStateChange()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 583
    iget-object v5, p0, Lcom/android/server/ePDGTracker;->myServiceState:Landroid/telephony/ServiceState;

    if-nez v5, :cond_1

    .line 617
    :cond_0
    return-void

    .line 586
    :cond_1
    iget-object v5, p0, Lcom/android/server/ePDGTracker;->myServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    iput v5, p0, Lcom/android/server/ePDGTracker;->DataState:I

    .line 587
    iget-object v5, p0, Lcom/android/server/ePDGTracker;->myServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v5

    iput v5, p0, Lcom/android/server/ePDGTracker;->MobileTech:I

    .line 591
    iget v5, p0, Lcom/android/server/ePDGTracker;->DataState:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/server/ePDGTracker;->MobileTech:I

    const/16 v6, 0xe

    if-ne v5, v6, :cond_3

    move v3, v4

    .line 593
    .local v3, "newmobile_avail":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->mobile_avail:Z

    if-eq v5, v3, :cond_4

    .line 595
    iput-boolean v3, p0, Lcom/android/server/ePDGTracker;->mobile_avail:Z

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile Network is changed, now!!  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/ePDGTracker;->mobile_avail:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 599
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_4

    .line 601
    iget-object v5, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v5, v1}, Lcom/android/server/ePDGNotifier;->notifyPDPState(I)V

    .line 603
    iget-boolean v5, p0, Lcom/android/server/ePDGTracker;->mobile_avail:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    aget-boolean v5, v5, v1

    if-ne v5, v4, :cond_2

    .line 605
    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->ePDGStart(I)I

    .line 599
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 591
    .end local v1    # "i":I
    .end local v3    # "newmobile_avail":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 612
    .restart local v3    # "newmobile_avail":Z
    :cond_4
    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 613
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    if-eqz v0, :cond_5

    .line 614
    iget v4, p0, Lcom/android/server/ePDGTracker;->DataState:I

    iget v5, p0, Lcom/android/server/ePDGTracker;->MobileTech:I

    invoke-virtual {v0, v4, v5}, Lcom/android/server/ePDGConnection;->setNetworkstate(II)V

    goto :goto_2
.end method

.method public requestpcscfaddr(Lcom/android/server/ePDGConnection;)V
    .locals 2
    .param p1, "mycon"    # Lcom/android/server/ePDGConnection;

    .prologue
    .line 3066
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->isIpv4Connected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->isIpv6Connected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3068
    const-string v0, "IPV4V6"

    .line 3085
    .local v0, "ipvtype":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/ePDGConnection;->pcsch(Ljava/lang/String;)Z

    .line 3086
    return-void

    .line 3071
    .end local v0    # "ipvtype":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->isIpv4Connected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3073
    const-string v0, "IP"

    .restart local v0    # "ipvtype":Ljava/lang/String;
    goto :goto_0

    .line 3075
    .end local v0    # "ipvtype":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->isIpv6Connected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3077
    const-string v0, "IPV6"

    .restart local v0    # "ipvtype":Ljava/lang/String;
    goto :goto_0

    .line 3081
    .end local v0    # "ipvtype":Ljava/lang/String;
    :cond_2
    const-string v0, "IPV6"

    .line 3083
    .restart local v0    # "ipvtype":Ljava/lang/String;
    const-string v1, "maybe not connected yet, so just set ipv6 for default"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetCB(I)V
    .locals 4
    .param p1, "mid"    # I

    .prologue
    .line 1162
    invoke-direct {p0, p1}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1163
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1166
    .local v1, "msg_connect":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1168
    .local v2, "msg_lost":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1169
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ePDGConnection;->resetCBLooper(Landroid/os/Message;Landroid/os/Message;)V

    .line 1171
    .end local v1    # "msg_connect":Landroid/os/Message;
    .end local v2    # "msg_lost":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public resetCurrentConnection(ILcom/android/server/ePDGConnection;)Z
    .locals 4
    .param p1, "fid"    # I
    .param p2, "dc"    # Lcom/android/server/ePDGConnection;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1405
    const-string v3, "resetCurrentConnection called!! "

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1406
    if-nez p2, :cond_0

    .line 1408
    const-string v2, "something wrong!! no dc but status is connected?? "

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 1422
    :goto_0
    return v1

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1413
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1414
    invoke-virtual {p2, v0}, Lcom/android/server/ePDGConnection;->ePDGteardown(Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1416
    const-string v2, "something wrong!! SM and status is mismatched?? anyway return inactive"

    invoke-direct {p0, v2}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1421
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    const/4 v3, 0x4

    aput v3, v1, p1

    move v1, v2

    .line 1422
    goto :goto_0
.end method

.method public setEPDGAddrByTestApp(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "ePDGAddr"    # Ljava/lang/String;

    .prologue
    .line 2548
    iput-boolean p1, p0, Lcom/android/server/ePDGTracker;->ePDGAddrStaticFlag:Z

    .line 2549
    iput-object p2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrForTestApp:Ljava/lang/String;

    .line 2550
    return-void
.end method

.method public setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .param p2, "ifname"    # Ljava/lang/String;
    .param p3, "addrlist"    # Ljava/lang/String;
    .param p4, "gatewaylist"    # Ljava/lang/String;
    .param p5, "dnsslist"    # Ljava/lang/String;

    .prologue
    .line 2758
    const/4 v3, 0x0

    .line 2759
    .local v3, "addresses":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2760
    .local v6, "dnses":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2765
    .local v8, "gateways":[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 2766
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1    # "linkProperties":Landroid/net/LinkProperties;
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 2772
    .restart local p1    # "linkProperties":Landroid/net/LinkProperties;
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2774
    if-eqz p3, :cond_0

    .line 2776
    const-string v14, ","

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2779
    :cond_0
    if-eqz v3, :cond_8

    array-length v14, v3

    if-lez v14, :cond_8

    .line 2780
    move-object v5, v3

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_9

    aget-object v1, v5, v9

    .line 2781
    .local v1, "addr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2782
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_3

    .line 2780
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2768
    .end local v1    # "addr":Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .line 2786
    .restart local v1    # "addr":Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_3
    :try_start_1
    const-string v14, "/"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2787
    .local v4, "ap":[Ljava/lang/String;
    array-length v14, v4

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 2788
    const/4 v14, 0x0

    aget-object v1, v4, v14

    .line 2789
    const/4 v14, 0x1

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 2795
    .local v2, "addrPrefixLen":I
    :goto_3
    :try_start_2
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v10

    .line 2799
    .local v10, "ia":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2800
    if-nez v2, :cond_4

    .line 2802
    instance-of v14, v10, Ljava/net/Inet4Address;

    if-eqz v14, :cond_7

    const/16 v2, 0x20

    .line 2804
    :cond_4
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addr/pl="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2805
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v10, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 2806
    .local v11, "la":Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2869
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "ia":Ljava/net/InetAddress;
    .end local v11    # "la":Landroid/net/LinkAddress;
    .end local v12    # "len$":I
    :catch_0
    move-exception v7

    .line 2870
    .local v7, "e":Ljava/net/UnknownHostException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setLinkProperties: UnknownHostException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2871
    const/4 v13, 0x0

    .line 2876
    .end local v7    # "e":Ljava/net/UnknownHostException;
    .local v13, "result":Z
    :goto_5
    if-nez v13, :cond_5

    .line 2880
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 2883
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setLinkProperties: result="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2885
    return v13

    .line 2791
    .end local v13    # "result":Z
    .restart local v1    # "addr":Ljava/lang/String;
    .restart local v4    # "ap":[Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "addrPrefixLen":I
    goto :goto_3

    .line 2796
    :catch_1
    move-exception v7

    .line 2797
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric ip addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2802
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "ia":Ljava/net/InetAddress;
    :cond_7
    const/16 v2, 0x80

    goto/16 :goto_4

    .line 2810
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "ia":Ljava/net/InetAddress;
    .end local v12    # "len$":I
    :cond_8
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no address for ifname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2814
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_9
    if-eqz p5, :cond_a

    .line 2816
    const-string v14, ","

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2820
    :cond_a
    if-eqz v6, :cond_e

    array-length v14, v6

    if-lez v14, :cond_e

    .line 2821
    move-object v5, v6

    array-length v12, v5

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v12, :cond_e

    aget-object v1, v5, v9

    .line 2822
    .restart local v1    # "addr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2823
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v14

    if-eqz v14, :cond_c

    .line 2821
    :cond_b
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2826
    :cond_c
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v10

    .line 2830
    .restart local v10    # "ia":Ljava/net/InetAddress;
    if-nez v10, :cond_d

    .line 2832
    :try_start_6
    const-string v14, "null!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 2827
    .end local v10    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v7

    .line 2828
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric dns addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2836
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "ia":Ljava/net/InetAddress;
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "not null!! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {v10}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v14

    if-nez v14, :cond_b

    .line 2838
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_7

    .line 2844
    .end local v1    # "addr":Ljava/lang/String;
    .end local v10    # "ia":Ljava/net/InetAddress;
    :cond_e
    if-eqz p4, :cond_f

    .line 2846
    const-string v14, ","

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2850
    :cond_f
    if-eqz v8, :cond_10

    array-length v14, v8

    if-nez v14, :cond_11

    .line 2851
    :cond_10
    const/4 v14, 0x0

    new-array v8, v14, [Ljava/lang/String;

    .line 2854
    :cond_11
    move-object v5, v8

    array-length v12, v5

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v12, :cond_13

    aget-object v1, v5, v9

    .line 2855
    .restart local v1    # "addr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2856
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v14

    if-eqz v14, :cond_12

    .line 2854
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2859
    :cond_12
    :try_start_7
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v10

    .line 2864
    .restart local v10    # "ia":Ljava/net/InetAddress;
    :try_start_8
    new-instance v14, Landroid/net/RouteInfo;

    invoke-direct {v14, v10}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_9

    .line 2860
    .end local v10    # "ia":Ljava/net/InetAddress;
    :catch_3
    move-exception v7

    .line 2861
    .restart local v7    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v14, Ljava/net/UnknownHostException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Non-numeric gateway addr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2868
    .end local v1    # "addr":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_13
    const/4 v13, 0x1

    .restart local v13    # "result":Z
    goto/16 :goto_5
.end method

.method public setFQDNByTestApp(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 2543
    iput-boolean p1, p0, Lcom/android/server/ePDGTracker;->FQDNStaticFlag:Z

    .line 2544
    iput-object p2, p0, Lcom/android/server/ePDGTracker;->FQDNForTestApp:Ljava/lang/String;

    .line 2545
    return-void
.end method

.method public setLinkp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "mid"    # I
    .param p2, "ifname"    # Ljava/lang/String;
    .param p3, "addrlist"    # Ljava/lang/String;
    .param p4, "gatewaylist"    # Ljava/lang/String;
    .param p5, "dnsslist"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2890
    if-ne p1, v6, :cond_1

    .line 2892
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2893
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    aget-object v0, v0, v6

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mVZWAPPLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 2910
    :cond_0
    :goto_0
    return-void

    .line 2898
    :cond_1
    if-nez p1, :cond_2

    .line 2900
    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGTracker;->setEPDGLinkProperties(Landroid/net/LinkProperties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2901
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    aget-object v0, v0, v7

    if-eqz v0, :cond_0

    .line 2903
    iget-object v0, p0, Lcom/android/server/ePDGTracker;->mNetworkAgent:[Landroid/net/NetworkAgent;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/android/server/ePDGTracker;->mIMSLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 2908
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNotifier(Lcom/android/server/ePDGNotifier;)V
    .locals 0
    .param p1, "Notifier"    # Lcom/android/server/ePDGNotifier;

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    .line 2539
    return-void
.end method

.method public setTWiFistatus(ZI)V
    .locals 4
    .param p1, "wifistatus"    # Z
    .param p2, "detailstatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 1911
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v2, :cond_0

    .line 1913
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v2}, Lcom/android/server/ePDGNotifier;->notifyWIFIStatus()V

    .line 1916
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    .line 1919
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 1920
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/ePDGConnection;->setWIFIStatus(ZI)V

    goto :goto_0

    .line 1922
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandrequestagain()V

    .line 1951
    :goto_1
    return-void

    .line 1929
    :cond_2
    iget v2, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v2, v3, :cond_3

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandsetfeature()V

    .line 1936
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    goto :goto_1
.end method

.method public setWIFIstatus(Z)V
    .locals 4
    .param p1, "wifistatus"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1955
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    if-eqz v2, :cond_0

    .line 1957
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGNotifier:Lcom/android/server/ePDGNotifier;

    invoke-virtual {v2}, Lcom/android/server/ePDGNotifier;->notifyWIFIStatus()V

    .line 1960
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/ePDGTracker;->mWifiConnected:Z

    .line 1963
    iget-object v2, p0, Lcom/android/server/ePDGTracker;->mePDGConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ePDGConnection;

    .line 1964
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    iget-boolean v2, p0, Lcom/android/server/ePDGTracker;->isgood:Z

    invoke-virtual {v0, p1, v2}, Lcom/android/server/ePDGConnection;->setWIFIStatus(ZZ)V

    goto :goto_0

    .line 1966
    .end local v0    # "dc":Lcom/android/server/ePDGConnection;
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandrequestagain()V

    .line 1995
    :goto_1
    return-void

    .line 1973
    :cond_2
    iget v2, p0, Lcom/android/server/ePDGTracker;->myfeature:I

    if-ne v2, v3, :cond_3

    .line 1975
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->checkdcandsetfeature()V

    .line 1980
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ePDGTracker;->ePDGAddrofThisnetwork:Ljava/lang/String;

    goto :goto_1
.end method

.method public startmonitoring(Z)Z
    .locals 24
    .param p1, "isfist"    # Z

    .prologue
    .line 2321
    const/4 v14, 0x0

    .line 2322
    .local v14, "ret":Z
    const-string v17, "net.wifisigmon"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2323
    .local v13, "operator":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 2325
    const-string v17, "[ePDG] packet loss check is disabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2326
    const/16 v17, 0x1

    .line 2461
    :goto_0
    return v17

    .line 2328
    :cond_0
    const-string v17, "yes"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2330
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ePDG] packet loss check is disabled "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2331
    const/16 v17, 0x1

    goto :goto_0

    .line 2340
    :cond_1
    const/4 v12, 0x0

    .line 2343
    .local v12, "myWifiinfo":[I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ePDGTracker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/net/wifi/IWifiManager;->getWifiRSSIandLoss()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 2349
    :goto_1
    if-nez v12, :cond_2

    .line 2351
    const-string v17, "[ePDG] WiFi info is null. So it will be skipped this time."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2352
    const/16 v17, 0x0

    goto :goto_0

    .line 2344
    :catch_0
    move-exception v7

    .line 2345
    .local v7, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ePDG] getWifiRSSIandLoss RemoteException : "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2354
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v10, 0x0

    .line 2355
    .local v10, "loss":D
    const/16 v17, 0x1

    aget v8, v12, v17

    .line 2356
    .local v8, "good":I
    const/16 v17, 0x2

    aget v4, v12, v17

    .line 2357
    .local v4, "bad":I
    const-wide/16 v18, 0x0

    .line 2358
    .local v18, "term_loss":D
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v17, "###.##"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2360
    .local v6, "df":Ljava/text/DecimalFormat;
    const/16 v17, 0x0

    aget v5, v12, v17

    .line 2361
    .local v5, "currentRssi":I
    add-int v17, v8, v4

    if-eqz v17, :cond_3

    .line 2363
    int-to-double v0, v4

    move-wide/from16 v20, v0

    add-int v17, v8, v4

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v10, v20, v22

    .line 2366
    :cond_3
    if-eqz p1, :cond_4

    .line 2368
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ePDG] Start monitoring!! RSSI="

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v20, 0x0

    aget v20, v12, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " Good!! = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v20, 0x1

    aget v20, v12, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, ", Bad!! = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v20, 0x2

    aget v20, v12, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, ", Loss = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2369
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 2370
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 2376
    :cond_4
    const/16 v17, -0x4b

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 2378
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ePDG] RSSI is too weak!! rssi= "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " so just report bad wifi status!! "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2379
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 2380
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 2381
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    .line 2382
    const/4 v14, 0x0

    .line 2452
    :goto_2
    if-eqz v14, :cond_e

    .line 2454
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v20, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3
    move/from16 v17, v14

    .line 2461
    goto/16 :goto_0

    .line 2386
    :cond_5
    const/4 v9, 0x0

    .line 2388
    .local v9, "isweak":Z
    const/16 v17, -0x46

    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 2391
    const/4 v9, 0x1

    .line 2394
    :cond_6
    add-int v17, v8, v4

    if-eqz v17, :cond_7

    .line 2396
    int-to-double v0, v4

    move-wide/from16 v20, v0

    add-int v17, v8, v4

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v10, v20, v22

    .line 2398
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ePDGTracker;->oldGood:I

    move/from16 v17, v0

    sub-int v16, v8, v17

    .line 2399
    .local v16, "term_good":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ePDGTracker;->oldBad:I

    move/from16 v17, v0

    sub-int v15, v4, v17

    .line 2401
    .local v15, "term_bad":I
    add-int v17, v16, v15

    if-eqz v17, :cond_8

    .line 2403
    int-to-double v0, v15

    move-wide/from16 v20, v0

    add-int v17, v16, v15

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v18, v20, v22

    .line 2406
    :cond_8
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/ePDGTracker;->oldGood:I

    .line 2407
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/ePDGTracker;->oldBad:I

    .line 2409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ePDGTracker;->isFeatureSwitch:[Z

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aget-boolean v17, v17, v20

    if-eqz v17, :cond_9

    .line 2415
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ePDGTracker;->thre:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v17, v18, v20

    if-gez v17, :cond_a

    .line 2417
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    .line 2418
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 2424
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 2426
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ePDG] we get low level sig, loss ="

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " eve loss = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2427
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2432
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ePDGTracker;->isbeforeSigstat:Z

    .line 2434
    const/16 v17, 0x14

    move/from16 v0, v17

    if-gt v15, v0, :cond_c

    if-eqz v9, :cond_d

    .line 2436
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ePDG] we get low level sig, loss ="

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " eve loss = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " isWeek? "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " 1st time but many packet so report"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2437
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2442
    :cond_d
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[ePDG] we get low level sig, loss ="

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " eve loss = "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " but just 1 time so not report it "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2443
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 2458
    .end local v9    # "isweak":Z
    .end local v15    # "term_bad":I
    .end local v16    # "term_good":I
    :cond_e
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/ePDGTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v20, 0x2ee0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ePDGTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3
.end method

.method public stopmonitoring()V
    .locals 3

    .prologue
    .line 2467
    const-string v1, "net.wifisigmon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2468
    .local v0, "operator":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2470
    const-string v1, "[ePDG] packet loss check is disabled"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2487
    :goto_0
    return-void

    .line 2473
    :cond_0
    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] packet loss check is disabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2484
    :cond_1
    const-string v1, "[ePDG] Stop monitoring!!"

    invoke-direct {p0, v1}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    .line 2485
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGTracker;->removeMessages(I)V

    goto :goto_0
.end method

.method public temptestcode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1721
    invoke-direct {p0, v5}, Lcom/android/server/ePDGTracker;->findePDGConnection(I)Lcom/android/server/ePDGConnection;

    move-result-object v0

    .line 1723
    .local v0, "dc":Lcom/android/server/ePDGConnection;
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1724
    .local v1, "msg_connect":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 1727
    invoke-virtual {p0}, Lcom/android/server/ePDGTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1728
    .local v2, "msg_lost":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1732
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->mcc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ePDGTracker;->mnc:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ePDGConnection;->ePDGbringUp(Landroid/os/Message;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1734
    iget-object v3, p0, Lcom/android/server/ePDGTracker;->isFeatureStatus:[I

    aput v5, v3, v5

    .line 1741
    :goto_0
    return-void

    .line 1738
    :cond_0
    const-string v3, "connection req Error"

    invoke-direct {p0, v3}, Lcom/android/server/ePDGTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
