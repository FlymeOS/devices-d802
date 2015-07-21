.class public Lcom/android/internal/telephony/lgdata/LGDataRecovery;
.super Landroid/os/Handler;
.source "LGDataRecovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadPingToDnsServer;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadIPtable;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$DataLogFormatter;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$RecoverySignType;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$DataStallSympton;,
        Lcom/android/internal/telephony/lgdata/LGDataRecovery$RecoveryRoutine;
    }
.end annotation


# static fields
.field private static final AGGRESSIVE_DELAY_IN_MS:I = 0xea60

.field private static final CONNECTION_COMPLETE_CHECK_TIMER:I = 0x2710

.field protected static final CONN_COMPLETE_CHECK_ALARM_TAG_EXTRA:Ljava/lang/String; = "conn.check.alram.tag"

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DEFAULT_DUMP:Ljava/lang/String; = "lgdatadump.log"

.field protected static final DNSFAIL_DUMP:Ljava/lang/String; = "dnsfailhistory.log"

.field protected static final DNS_PROPERTY:Ljava/lang/String; = "net.dns1"

.field private static final EAI_ADDRFAMILY:I = 0x1

.field private static final EAI_AGAIN:I = 0x2

.field private static final EAI_BADFLAGS:I = 0x3

.field private static final EAI_BADHINTS:I = 0xc

.field private static final EAI_FAIL:I = 0x4

.field private static final EAI_FAMILY:I = 0x5

.field private static final EAI_MEMORY:I = 0x6

.field private static final EAI_NODATA:I = 0x7

.field private static final EAI_NONAME:I = 0x8

.field private static final EAI_OVERFLOW:I = 0xe

.field private static final EAI_PROTOCOL:I = 0xd

.field private static final EAI_SERVICE:I = 0x9

.field private static final EAI_SOCKTYPE:I = 0xa

.field private static final EAI_SYSTEM:I = 0xb

.field private static final EVENT_CONN_CHECK_ALARM_EXPIRED:I = 0x4281e

.field private static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field private static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field private static final EVENT_DATA_SATE_CONNECTED:I = 0x4281a

.field private static final EVENT_DATA_SATE_DISCONNECTED:I = 0x4281b

.field private static final EVENT_DNS_FAIL_OBSERVED:I = 0x4281c

.field private static final EVENT_GET_MODEM_PACKET_COUNT_DONE:I = 0x4281f

.field private static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field private static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field private static final EVENT_SCREEN_OFF:I = 0x42819

.field private static final EVENT_SCREEN_ON:I = 0x42818

.field private static final EVENT_STALL_ALARM_EXPIRED:I = 0x4281d

.field private static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field private static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field private static final INTENT_IMS_CALL_STATE:Ljava/lang/String; = "com.lge.ims.action.CALL_STATE"

.field private static final INTENT_LGDATA_CONN_COMPLETE_CHECK_ALARM:Ljava/lang/String; = "com.lge.internal.telephony.lge-data-conn-check-alarm"

.field private static final INTENT_LGDATA_PULL_LOG:Ljava/lang/String; = "lg-data-pulllog"

.field private static final INTENT_LGDATA_STALL_ALARM:Ljava/lang/String; = "com.lge.internal.telephony.lge-data-stall-alarm"

.field protected static final IPTABLES_DUMP:Ljava/lang/String; = "iptablesinfo.log"

.field protected static final LGDR_LOG:Ljava/lang/String; = "LGDataRecoveryLog.log"

.field private static final MIN_TIME_DNS_STATCHECK:I = 0x6

.field protected static final NETINFO_DUMP:Ljava/lang/String; = "netinfo.log"

.field protected static final NETSTAT_LOG:Ljava/lang/String; = "netstat.log"

.field private static final NON_AGGRESSIVE_DELAY_IN_MS:I = 0x57e40

.field private static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final ROUTE_INFO_URI:Ljava/lang/String; = "/proc/net/route"

.field protected static final STALL_INFO_FILE:Ljava/lang/String; = "datastallinfo.log"

.field protected static final SUSPECTED_SYMPTON_FOR_DATA_STALL:Ljava/lang/String; = "setting.lge-data-suspected-sympton"

.field protected static final V6ROUTE_INFO_URI:Ljava/lang/String; = "/proc/net/ipv6_route"

.field protected static final WIFI_INTERFACE:Ljava/lang/String; = "wlan0"

.field private static mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

.field private static mCpResponseFailCount:I

.field private static mCpResponseFlag:Z

.field private static mLGDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# instance fields
.field private DATA_STALL_NOT_SUSPECTED:Z

.field private final DBG:Z

.field private final DBG2:Z

.field private final LOG_TAG:Ljava/lang/String;

.field private PRIVACY_ENABLE:Z

.field isScreenOn:Z

.field private lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

.field private mConnectionInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCpResponseHandler:Landroid/os/Handler;

.field private mCpResponseHandlerThread:Landroid/os/HandlerThread;

.field private mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field private mIMScall:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsWifiConnected:Z

.field private mLGContext:Lcom/lge/systemservice/core/LGContext;

.field private mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

.field private mNetdObserverEx:Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;

.field private mNumOfDnsFailNoConn:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mTime1stDnsfailNoConn:J

.field private mVoicecall:Z

.field private modemVendor:Ljava/lang/String;

.field private supportCPtrafficstat:Z

.field private threadNetinfo:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    sput-object v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    .line 103
    sput-object v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    .line 104
    sput-boolean v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFlag:Z

    .line 105
    sput v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFailCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 913
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    const-string v1, "GSM"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->LOG_TAG:Ljava/lang/String;

    .line 80
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->DBG:Z

    .line 81
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->DBG2:Z

    .line 82
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->PRIVACY_ENABLE:Z

    .line 87
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;

    .line 88
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    .line 89
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mContext:Landroid/content/Context;

    .line 90
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGContext:Lcom/lge/systemservice/core/LGContext;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    .line 93
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->supportCPtrafficstat:Z

    .line 94
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z

    .line 95
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    .line 96
    iput v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNumOfDnsFailNoConn:I

    .line 97
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mTime1stDnsfailNoConn:J

    .line 98
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsPsRestricted:Z

    .line 99
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mVoicecall:Z

    .line 100
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z

    .line 101
    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->DATA_STALL_NOT_SUSPECTED:Z

    .line 109
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 110
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isScreenOn:Z

    .line 112
    iput-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 113
    const-string v1, "QCT"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->modemVendor:Ljava/lang/String;

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    .line 212
    new-instance v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 915
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 916
    sput-object p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .line 917
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mContext:Landroid/content/Context;

    .line 918
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGContext:Lcom/lge/systemservice/core/LGContext;

    .line 920
    const-string v1, "1"

    const-string v2, "persist.service.privacy.enable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    iput-boolean v6, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->PRIVACY_ENABLE:Z

    .line 924
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    sput-object v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    .line 926
    new-instance v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;

    const-string v2, "mCpResponseHandlerThread"

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$2;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    .line 960
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 964
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 965
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 967
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    const-string v1, "com.lge.internal.telephony.lge-data-stall-alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    const-string v1, "com.lge.internal.telephony.lge-data-conn-check-alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 972
    const-string v1, "lg-data-pulllog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    const-string v1, "com.lge.ims.action.CALL_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 974
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 976
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    const v2, 0x42008

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 979
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    const v2, 0x42007

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 982
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 984
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x42010

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 986
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x42009

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 988
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x42016

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 990
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const v2, 0x42017

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 994
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startNetdListener()V

    .line 996
    const-string v1, "LGDataRecovery has created."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 998
    return-void
.end method

.method private Dumpinfo(JI)V
    .locals 11
    .param p1, "Id"    # J
    .param p3, "symton"    # I

    .prologue
    const/4 v10, 0x0

    .line 1745
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Symton: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v5, "<-- ConnectionInfos -->"

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 1749
    .local v1, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1752
    .end local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_0
    const-string v5, "<-- ip rule show -->"

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    const-string v5, "ip rule show"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1754
    .local v4, "line":Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-direct {p0, v4, v5, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1757
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    const-string v5, "<-- netcfg -->"

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    const-string v5, "netcfg"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1759
    .restart local v4    # "line":Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-direct {p0, v4, v5, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1762
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    const-string v5, "<-- proc/net/route -->"

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const-string v5, "proc/net/route"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1764
    .restart local v4    # "line":Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-direct {p0, v4, v5, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1767
    .end local v4    # "line":Ljava/lang/String;
    :cond_3
    const-string v5, "<-- proc/net/route by API -->"

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->loggingRouteInfos()V

    .line 1770
    const-string v5, "<-- proc/net/dev -->"

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    const-string v5, "proc/net/dev"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1772
    .restart local v4    # "line":Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-direct {p0, v4, v5, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 1774
    .end local v4    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findDefaultConnInfo()Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v1

    .line 1775
    .restart local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    if-eqz v1, :cond_5

    .line 1776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- proc/net/xt_quota/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lgdatadump.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proc/net/xt_quota/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1779
    .restart local v4    # "line":Ljava/lang/String;
    const-string v5, "lgdatadump.log"

    invoke-direct {p0, v4, v5, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    .line 1789
    .end local v4    # "line":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x2

    if-ne p3, v5, :cond_8

    .line 1790
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "yyyy-MM-dd kk:mm:ss"

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Symton: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "iptablesinfo.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_6

    .line 1793
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1794
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    .line 1796
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-nez v5, :cond_7

    .line 1797
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGContext:Lcom/lge/systemservice/core/LGContext;

    const-string v6, "lgnetworkmanagementservice"

    invoke-virtual {v5, v6}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/systemservice/core/LGNetworkManager;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    .line 1802
    :cond_7
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    if-eqz v5, :cond_8

    .line 1803
    const-string v5, "\n"

    const-string v6, "iptablesinfo.log"

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1804
    const-string v5, "<-- iptables -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    const-string v6, "iptables -L"

    invoke-virtual {v5, v6}, Lcom/lge/systemservice/core/LGNetworkManager;->runShellCommand(Ljava/lang/String;)V

    .line 1806
    const-string v5, "<-- iptables -t nat -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    const-string v6, "iptables -t nat -L"

    invoke-virtual {v5, v6}, Lcom/lge/systemservice/core/LGNetworkManager;->runShellCommand(Ljava/lang/String;)V

    .line 1808
    const-string v5, "<-- iptables -t mangle -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    const-string v6, "iptables -t mangle -L"

    invoke-virtual {v5, v6}, Lcom/lge/systemservice/core/LGNetworkManager;->runShellCommand(Ljava/lang/String;)V

    .line 1810
    const-string v5, "<-- iptables -t raw -L -->"

    const-string v6, "iptablesinfo.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    const-string v6, "iptables -t raw -L"

    invoke-virtual {v5, v6}, Lcom/lge/systemservice/core/LGNetworkManager;->runShellCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    :cond_8
    :goto_6
    return-void

    .line 1813
    :catch_0
    move-exception v2

    .line 1814
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "failed for logging iptables"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->loggingRouteInfos()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Lcom/lge/systemservice/core/LGContext;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGContext:Lcom/lge/systemservice/core/LGContext;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isActive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Landroid/os/INetworkManagementService;)Landroid/os/INetworkManagementService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Lcom/lge/systemservice/core/LGNetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Lcom/lge/systemservice/core/LGNetworkManager;)Lcom/lge/systemservice/core/LGNetworkManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Lcom/lge/systemservice/core/LGNetworkManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGNetworkManager:Lcom/lge/systemservice/core/LGNetworkManager;

    return-object p1
.end method

.method static synthetic access$400()Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->PRIVACY_ENABLE:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doRecovery()V
    .locals 2

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getRecoveryAction()I

    move-result v0

    .line 796
    .local v0, "action":I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 797
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->putRecoveryAction(I)V

    .line 799
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->doRecovery(I)V

    .line 800
    return-void
.end method

.method private doRecovery(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x2

    .line 803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 804
    packed-switch p1, :pswitch_data_0

    .line 848
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 806
    :pswitch_0
    const-string v2, "RECOVERY_ACTION:: PING_CHECK"

    const-string v3, "datastallinfo.log"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 808
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v2, v3, :cond_0

    .line 810
    iget v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I

    if-ne v2, v6, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RECOVERY_ACTION:: PING_CHECK with APN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 812
    new-instance v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadPingToDnsServer;

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadPingToDnsServer;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadPingToDnsServer;->start()V

    goto :goto_0

    .line 818
    .end local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_1
    const-string v2, "RECOVERY_ACTION:: CLEANUP_CONN"

    const-string v3, "datastallinfo.log"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 820
    .restart local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v2, v3, :cond_1

    .line 822
    iget v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I

    if-ne v2, v6, :cond_1

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RECOVERY_ACTION:: CLEANUP_CONN with APN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpConnection(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Z)V

    goto :goto_1

    .line 830
    .end local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mVoicecall:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z

    if-eqz v2, :cond_4

    .line 831
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice or mIMS call exist, Do not RADIO OFF mVoicecall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mVoicecall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /mIMScall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIMScall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->putRecoveryAction(I)V

    .line 852
    :cond_3
    :goto_2
    return-void

    .line 834
    :cond_4
    const-string v2, "RECOVERY_ACTION:: RADIO_OFFON"

    const-string v3, "datastallinfo.log"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mLGDataRecovery:Lcom/android/internal/telephony/lgdata/LGDataRecovery;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartRadio(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    goto :goto_2

    .line 839
    :pswitch_3
    const-string v2, "RECOVERY_ACTION:: DCT_RESTART"

    const-string v3, "datastallinfo.log"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 842
    :pswitch_4
    const-string v2, "RECOVERY_ACTION:: RILD_RESTART"

    const-string v3, "datastallinfo.log"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 845
    :pswitch_5
    const-string v2, "RECOVERY_ACTION:: MODEM_RESTART"

    const-string v3, "datastallinfo.log"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 804
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private declared-synchronized doStallCheckwithPktCnt()V
    .locals 14

    .prologue
    .line 681
    monitor-enter p0

    const/4 v2, 0x0

    .line 682
    .local v2, "stallsympton":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 683
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v10, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    if-ne v3, v10, :cond_a

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v10, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v3, v10, :cond_a

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " StallCheck iface = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " APN = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 685
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 686
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I

    .line 687
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 688
    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v3, :cond_1

    .line 689
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforCP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 691
    :cond_1
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v10, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v12, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v4, v10, v12

    .line 692
    .local v4, "timegap":J
    const-wide/16 v10, 0x32

    cmp-long v3, v4, v10

    if-lez v3, :cond_0

    .line 693
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v10, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v12, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v6, v10, v12

    .line 694
    .local v6, "txincreaseAP":J
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v10, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v12, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v8, v10, v12

    .line 695
    .local v8, "txincreaseCP":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "] txincreaseAP : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "    txincreaseCP : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 696
    iget v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    if-eqz v3, :cond_0

    .line 699
    iget v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    const/16 v10, 0xa

    if-le v3, v10, :cond_0

    .line 700
    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v3, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_7

    .line 701
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_2

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_2

    .line 703
    const-string v3, "TX_INCREASE_BOTH_AP_CP but no Rx. It can be a problem of network or radio. QXDM log required."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 704
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v10, "default"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " :: TX_INCREASE_BOTH_AP_CP but no Rx QXDM log required"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "datastallinfo.log"

    invoke-direct {p0, v3, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v2, 0x7

    .line 707
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 681
    .end local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "timegap":J
    .end local v6    # "txincreaseAP":J
    .end local v8    # "txincreaseCP":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 711
    .restart local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "timegap":J
    .restart local v6    # "txincreaseAP":J
    .restart local v8    # "txincreaseCP":J
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    .line 713
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 714
    const/4 v2, 0x4

    .line 716
    :cond_3
    const/4 v3, 0x2

    :try_start_1
    iput v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I

    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " :: ONLY_AP_TX_INCREASE"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "datastallinfo.log"

    invoke-direct {p0, v3, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 720
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_6

    .line 721
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v10, "ims"

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 722
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    .line 723
    const/4 v2, 0x2

    .line 725
    :cond_5
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " :: NO_AP_TX_INCREASE"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "datastallinfo.log"

    invoke-direct {p0, v3, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " only CP Tx Cnt increase. QCT APP may work do not recovery"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 733
    :cond_7
    const/4 v3, 0x3

    if-ge v2, v3, :cond_8

    .line 734
    const/4 v2, 0x3

    .line 736
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "STALL_SYPTOM "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " :: ONLY_TX_INCREASE"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "datastallinfo.log"

    invoke-direct {p0, v3, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 742
    .end local v4    # "timegap":J
    .end local v6    # "txincreaseAP":J
    .end local v8    # "txincreaseCP":J
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " conn with "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " is not Active change LState to DOWN WARNING!!"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 743
    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    iput-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    .line 744
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I

    goto/16 :goto_0

    .line 747
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ConnInfo for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "  Lstate : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "  FState :"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 748
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->recoverySign:I

    goto/16 :goto_0

    .line 751
    .end local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doStallCheckwithPktCnt stallsympton = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 752
    if-nez v2, :cond_d

    .line 753
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->putRecoveryAction(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    :cond_c
    :goto_1
    monitor-exit p0

    return-void

    .line 755
    :cond_d
    :try_start_2
    const-string v3, "AME"

    const-string v10, "ro.build.target_region"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "ESA"

    const-string v10, "ro.build.target_region"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    const/4 v3, 0x7

    if-ne v2, v3, :cond_f

    .line 756
    const-string v3, "MISSION Hey, Dude! please recover me when network/radio path is the problem"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 757
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->doRecovery(I)V

    goto :goto_1

    .line 759
    :cond_f
    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    .line 760
    const-string v3, "recovery needed"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->doRecovery()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getRecoveryAction()I
    .locals 4

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 771
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 776
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 777
    return v0
.end method

.method private getShellCmdResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1965
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1966
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 1969
    .local v9, "runtime":Ljava/lang/Runtime;
    const/4 v3, 0x0

    .line 1970
    .local v3, "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1971
    .local v4, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 1974
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v9, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 1975
    .local v8, "process":Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1976
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .local v5, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1980
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1981
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1986
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 1987
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "process":Ljava/lang/Process;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting i/o stream. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1989
    if-eqz v0, :cond_0

    .line 1991
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1996
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 1998
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 2003
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 2005
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 2012
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-object v7

    .line 1989
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "process":Ljava/lang/Process;
    :cond_3
    if-eqz v1, :cond_4

    .line 1991
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1996
    :cond_4
    :goto_5
    if-eqz v5, :cond_5

    .line 1998
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 2003
    :cond_5
    :goto_6
    if-eqz v3, :cond_9

    .line 2005
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 2008
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 2006
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 2008
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 1989
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "process":Ljava/lang/Process;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v0, :cond_6

    .line 1991
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1996
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 1998
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 2003
    :cond_7
    :goto_9
    if-eqz v3, :cond_8

    .line 2005
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 2008
    :cond_8
    :goto_a
    throw v10

    .line 1992
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "process":Ljava/lang/Process;
    :catch_2
    move-exception v10

    goto :goto_5

    .line 1999
    :catch_3
    move-exception v10

    goto :goto_6

    .line 1992
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "process":Ljava/lang/Process;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v10

    goto :goto_2

    .line 1999
    :catch_5
    move-exception v10

    goto :goto_3

    .line 2006
    :catch_6
    move-exception v10

    goto :goto_4

    .line 1992
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    goto :goto_8

    .line 1999
    :catch_8
    move-exception v11

    goto :goto_9

    .line 2006
    :catch_9
    move-exception v11

    goto :goto_a

    .line 1989
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "process":Ljava/lang/Process;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 1986
    .end local v8    # "process":Ljava/lang/Process;
    :catch_a
    move-exception v2

    goto :goto_1

    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "process":Ljava/lang/Process;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_9
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4
.end method

.method private hasDefaultRouteInfo(Ljava/lang/String;)Z
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1613
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v8, :cond_0

    .line 1614
    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1615
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    .line 1618
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v8, :cond_3

    .line 1620
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p1}, Landroid/os/INetworkManagementService;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v7

    .line 1622
    .local v7, "routeInfos":[Landroid/net/RouteInfo;
    move-object v0, v7

    .local v0, "arr$":[Landroid/net/RouteInfo;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v6, v0, v4

    .line 1624
    .local v6, "ri":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 1626
    .local v2, "dstAddr":Ljava/net/InetAddress;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasDefaultRouteInfo iface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,dstAddr: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1629
    const-string v8, "0.0.0.0"

    invoke-static {v8}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "::"

    invoke-static {v8}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 1631
    :cond_1
    const/4 v8, 0x1

    .line 1639
    .end local v0    # "arr$":[Landroid/net/RouteInfo;
    .end local v2    # "dstAddr":Ljava/net/InetAddress;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "ri":Landroid/net/RouteInfo;
    .end local v7    # "routeInfos":[Landroid/net/RouteInfo;
    :goto_1
    return v8

    .line 1622
    .restart local v0    # "arr$":[Landroid/net/RouteInfo;
    .restart local v2    # "dstAddr":Ljava/net/InetAddress;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "ri":Landroid/net/RouteInfo;
    .restart local v7    # "routeInfos":[Landroid/net/RouteInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1634
    .end local v0    # "arr$":[Landroid/net/RouteInfo;
    .end local v2    # "dstAddr":Ljava/net/InetAddress;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "ri":Landroid/net/RouteInfo;
    .end local v7    # "routeInfos":[Landroid/net/RouteInfo;
    :catch_0
    move-exception v3

    .line 1635
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "fail to get routeInfo."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1638
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasDefaultRouteInfo iface: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , return false "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1639
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isActive(Ljava/lang/String;)Z
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1644
    const/4 v1, 0x0

    .line 1645
    .local v1, "netInterface":Ljava/net/NetworkInterface;
    if-nez p1, :cond_0

    .line 1647
    const-string v3, "iface is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1663
    :goto_0
    return v2

    .line 1652
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 1653
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is Active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    const/4 v2, 0x1

    goto :goto_0

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    .local v0, "ex":Ljava/net/SocketException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain network interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1662
    .end local v0    # "ex":Ljava/net/SocketException;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not Active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDataStallAlarmNeeded()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v3

    if-eqz v3, :cond_1

    .line 489
    const-string v3, "DataConnectionState not in service."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 501
    :cond_0
    :goto_0
    return v2

    .line 493
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 495
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v3, v4, :cond_2

    .line 496
    const-string v2, "There is at least one connInfo connected."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 497
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private logF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1917
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1918
    return-void
.end method

.method private declared-synchronized logF(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "timestamp"    # Z

    .prologue
    .line 1947
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private loggingRouteInfos()V
    .locals 6

    .prologue
    .line 1951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1953
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getAllRouteInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;

    .line 1954
    .local v1, "ri":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1957
    .end local v1    # "ri":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1958
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "netinfo.log"

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1961
    :cond_1
    return-void
.end method

.method private onConnCompletedCheckAlarmExpired(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v0

    .line 536
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnCompletedCheckAlarmExpired for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 537
    if-nez v0, :cond_0

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is no Conn for ConnCompleteCheck for this iface: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " WARNING"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 578
    :goto_0
    return-void

    .line 541
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    .line 542
    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    if-ne v1, v4, :cond_1

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there is no need to do ConnCompleteCheck for this iface: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "WARNING"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v1, v4, :cond_5

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " didn\'t receive connected event from telephony framework"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->modemVendor:Ljava/lang/String;

    const-string v4, "QCT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 550
    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v4, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v1, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v2, v4, v6

    .line 551
    .local v2, "txincrease":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConnCompletedCheckAlarmExpired txincrease = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 552
    iget v1, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    if-lez v1, :cond_2

    .line 553
    const-string v1, "IPC data path block is suspicious : ONLY_AP_TX_INCREASE_ON_DHCP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " :: CONN COMPLETE FAIL, ONLY_AP_TX_INCREASE_ON_DHCP"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "datastallinfo.log"

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 558
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 559
    const-string v1, "IPC data path block is suspicious : NO_AP_TX_INCREASE_ON_DHCP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " :: CONN COMPLETE FAIL, NO_AP_TX_INCREASE_ON_DHCP"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "datastallinfo.log"

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_3
    const-string v1, "QCRIL problem is suspicions"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " :: CONN COMPLETE FAIL, QCRIL error suspicious"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "datastallinfo.log"

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 571
    .end local v2    # "txincrease":J
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "does not complete"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STALL_SYPTOM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " :: CONN COMPLETE FAIL "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "datastallinfo.log"

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_5
    const-string v1, "FState is CONNECTED but ConnCompletedCheckAlarmExpired WARNING"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onDataStallAlarmExpired(I)V
    .locals 4
    .param p1, "tag"    # I

    .prologue
    .line 505
    iget v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    if-eq v2, p1, :cond_0

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLGDataStallAlarm: ignore, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 532
    :goto_0
    return-void

    .line 512
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 513
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    const-string v2, "onLGDataStallAlarm: There is no Conn that needs traffic check."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mVoicecall:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 521
    const-string v2, "onLGDataStallAlarm: Do not stall check during 2G voice call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 526
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NETCONNINFO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 529
    .end local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->doStallCheckwithPktCnt()V

    .line 531
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method private onDataStateConnected(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 590
    const-string v5, "onDataStateConnected"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 592
    const-string v5, "apn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "apnName":Ljava/lang/String;
    const-string v5, "apnType"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "apnType":Ljava/lang/String;
    const-string v5, "iface"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, "iface":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 600
    const-string v5, "iface is null ignore this connected intent"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v2

    .line 605
    .local v2, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isActive(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not linked up data block"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STALL_SYPTOM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: CONNECTED_BUT_IFACE_LINK_DOWN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "datastallinfo.log"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    if-eqz v2, :cond_0

    .line 609
    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    iput-object v5, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    goto :goto_0

    .line 615
    :cond_2
    if-nez v2, :cond_3

    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t find conninfo with this active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") create NewConnInfo WARNING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 617
    new-instance v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    .line 618
    .local v4, "newConn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iput-object v3, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    .line 619
    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    iput-object v5, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    .line 620
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    move-object v2, v4

    .line 624
    .end local v4    # "newConn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_3
    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v5, v6, :cond_6

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This conn("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") receives first connected notification"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 626
    iput-object v0, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    .line 627
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopConnectionCompleteCheckTimer(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 628
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 629
    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v5, :cond_4

    .line 630
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforCP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 632
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 633
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startDataStallAlarm(Z)V

    .line 635
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->CONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    iput-object v5, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    .line 638
    :cond_6
    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 639
    iget-object v5, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private onDataStateDisconnected(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 644
    const-string v4, "apn"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "apnName":Ljava/lang/String;
    const-string v4, "apnType"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "apnType":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataStateDisconnected for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 647
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 648
    .local v2, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conn for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has apn type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ::remove it"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 650
    iget-object v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 651
    iget-object v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 652
    const-string v4, " This conn has no apntype which is connected update FState to DISCONNECTED"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 653
    sget-object v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    iput-object v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    .line 654
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    goto :goto_0

    .line 658
    .end local v2    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopDataStallAlarm()V

    .line 661
    :cond_2
    return-void
.end method

.method private onDnsFailObserved(Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;)V
    .locals 22
    .param p1, "result"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;

    .prologue
    .line 382
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->dumpDnsFail(Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findIfaceforNonPidDns()Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->PRIVACY_ENABLE:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 385
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onDnsFailObserved on iface ::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " hostname:: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 388
    if-nez v5, :cond_2

    .line 389
    const-string v18, "onDnsFailObserved Wi-Fi enabled but no route info for DNS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 483
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    const-string v18, "wlan0"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 392
    const-string v18, "onDnsFailObserved DNS fail on Wi-Fi connection"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_3
    const-string v18, "onDnsFailObserved Wi-Fi enabled but wlan0 does not have route info for DNS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_4
    if-eqz v5, :cond_5

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 398
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findDefaultConnInfo()Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v4

    .line 399
    .local v4, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    if-nez v4, :cond_7

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNumOfDnsFailNoConn:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mTime1stDnsfailNoConn:J

    .line 402
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onDnsFailObserved First DNS fail No Conn::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mTime1stDnsfailNoConn:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 408
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNumOfDnsFailNoConn:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNumOfDnsFailNoConn:I

    goto :goto_0

    .line 404
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 405
    .local v14, "timeCurrDNSFail":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mTime1stDnsfailNoConn:J

    move-wide/from16 v18, v0

    sub-long v18, v14, v18

    const-wide/16 v20, 0x3e8

    div-long v12, v18, v20

    .line 406
    .local v12, "time":J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onDnsFailObserved DNS fail time during no Conn::"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "sec"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 410
    .end local v12    # "time":J
    .end local v14    # "timeCurrDNSFail":J
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "STALL_SYPTOM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " :: NO_ROUTE_INFO"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "datastallinfo.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    .end local v4    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_8
    const-string v18, "rmnet"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 413
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onDnsFailObserved iface "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has route for default DNS"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 414
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNumOfDnsFailNoConn:I

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 416
    const-string v18, "onDnsFailObserved stall alarm is not working ignore DNS fail report"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 417
    const-string v18, "     stall alarm is not working ignore DNS fail report"

    const-string v19, "dnsfailhistory.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 420
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v4

    .line 421
    .restart local v4    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    if-nez v4, :cond_a

    .line 422
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "can\'t find conninfo with this active iface ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") create NewConnInfo WARNING"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 423
    new-instance v10, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    .line 424
    .local v10, "newConn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iput-object v5, v10, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    .line 425
    sget-object v18, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    move-object v4, v10

    .line 429
    .end local v10    # "newConn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_a
    if-eqz v4, :cond_11

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const-string v19, "default"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 430
    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->hasDefaultRouteInfo(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 431
    const-string v18, "Default connection doesn\'t have Default Route"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 432
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "STALL_SYPTOM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " :: NO_ROUTE_INFO"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "datastallinfo.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "     connection("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") for Default DNS doesn\'t have Default Route"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "dnsfailhistory.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getAPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-result-object v11

    .line 438
    .local v11, "stat":Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    if-nez v11, :cond_c

    .line 439
    const-string v18, "onDnsFailObserved()... Failure to get getAPTrafficStat()"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    .line 444
    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    .line 446
    :cond_d
    iget-wide v0, v11, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 447
    .local v16, "timefromlastDnsFail":J
    const-wide/16 v18, 0x6

    cmp-long v18, v16, v18

    if-lez v18, :cond_1

    .line 448
    iget-wide v0, v11, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    move-wide/from16 v20, v0

    sub-long v8, v18, v20

    .line 449
    .local v8, "increasedTxcnt":J
    iget-wide v0, v11, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    move-wide/from16 v20, v0

    sub-long v6, v18, v20

    .line 450
    .local v6, "increasedRxcnt":J
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "increasedTxcnt : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "   increasedRxcnt : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 451
    const-wide/16 v18, 0x1

    cmp-long v18, v8, v18

    if-gez v18, :cond_f

    .line 452
    const-string v18, "onDnsFailObserved no Tx increase & route info exist"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 453
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "STALL_SYPTOM "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " / "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " :: NO_TX_INCREASE_ON_DNSFAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "datastallinfo.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v18, "     NO_TX_INCREASE from LAST DNS FAIL"

    const-string v19, "dnsfailhistory.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->dumpIptableInfo()V

    .line 475
    :cond_e
    :goto_2
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->lastStatForDnsFail:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    goto/16 :goto_0

    .line 460
    :cond_f
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_10

    const-wide/16 v18, 0x1

    cmp-long v18, v6, v18

    if-gez v18, :cond_10

    .line 461
    const-string v18, "onDnsFailObserved only Tx increase & route info exist"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 462
    const-string v18, "     ONLY TX_INCREASE from LAST DNS FAIL"

    const-string v19, "dnsfailhistory.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-wide v0, v11, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v18, v0

    iget-object v0, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v12, v18, v20

    .line 465
    .restart local v12    # "time":J
    const-wide/16 v18, 0x3c

    cmp-long v18, v12, v18

    if-lez v18, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopDataStallAlarm()V

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onDataStallAlarmExpired(I)V

    goto :goto_2

    .line 471
    .end local v12    # "time":J
    :cond_10
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-lez v18, :cond_e

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_e

    .line 472
    const-string v18, "onDnsFailObserved both Tx Rx increase ignore DNS fail report"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 473
    const-string v18, "     TX_RX_INCREASE from LAST DNS FAIL "

    const-string v19, "dnsfailhistory.log"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 478
    .end local v6    # "increasedRxcnt":J
    .end local v8    # "increasedTxcnt":J
    .end local v11    # "stat":Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    .end local v16    # "timefromlastDnsFail":J
    :cond_11
    const-string v18, "onDnsFailObserved Non Default connection has main DNS route info Don\'t care this case"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onScreenOFF()V
    .locals 1

    .prologue
    .line 665
    sget-object v0, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_INTEL_DATACONNECTION_LG_DATA_RECOVERY_SKIP_SCREEN_OFF:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const-string v0, "onScreenOFF, reStartDataStallAlarm() skipped"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 672
    :goto_0
    return-void

    .line 668
    :cond_0
    const-string v0, "onScreenOFF"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->reStartDataStallAlarm()V

    goto :goto_0
.end method

.method private onScreenON()V
    .locals 1

    .prologue
    .line 676
    const-string v0, "onScreenON"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->reStartDataStallAlarm()V

    .line 679
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 1001
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 1005
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1006
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1008
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1009
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1012
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1014
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 1015
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 1016
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 1017
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 1020
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_3

    .line 1021
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1022
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMService:Landroid/os/INetworkManagementService;

    .line 1024
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    if-nez v2, :cond_4

    .line 1025
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceEx;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    .line 1029
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    if-eqz v2, :cond_5

    .line 1030
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementServiceEx;->unregisterObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :cond_5
    :goto_0
    const-string v2, "LGDataRecovery has disposed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1037
    return-void

    .line 1032
    :catch_0
    move-exception v1

    .line 1033
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not unregister InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dumpDnsFail(Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;

    .prologue
    .line 1820
    const-string v1, "net.dns1"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1822
    .local v0, "dnsAddr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;->hostName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DNS server addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findIfaceforNonPidDns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isWifiConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dnsfailhistory.log"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->logF(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    return-void
.end method

.method protected dumpIptableInfo()V
    .locals 0

    .prologue
    .line 1838
    return-void
.end method

.method protected dumpNetInfo()V
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->threadNetinfo:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->threadNetinfo:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->threadNetinfo:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->stop()V

    .line 1830
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->threadNetinfo:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;

    .line 1831
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->threadNetinfo:Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ThreadNetinfo;->start()V

    .line 1832
    return-void
.end method

.method public errorCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 1667
    const/4 v0, 0x0

    .line 1669
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1727
    const-string v0, "unknown error code."

    .line 1731
    :goto_0
    return-object v0

    .line 1671
    :pswitch_0
    const-string v0, "address family for hostname not supported."

    .line 1672
    goto :goto_0

    .line 1675
    :pswitch_1
    const-string v0, "temporary failure in name resolution."

    .line 1676
    goto :goto_0

    .line 1679
    :pswitch_2
    const-string v0, "invalid value for ai_flags."

    .line 1680
    goto :goto_0

    .line 1683
    :pswitch_3
    const-string v0, "non-recoverable failure in name resolution."

    .line 1684
    goto :goto_0

    .line 1687
    :pswitch_4
    const-string v0, "ai_family not supported."

    .line 1688
    goto :goto_0

    .line 1691
    :pswitch_5
    const-string v0, "memory allocation failure."

    .line 1692
    goto :goto_0

    .line 1695
    :pswitch_6
    const-string v0, "no address associated with hostname."

    .line 1696
    goto :goto_0

    .line 1699
    :pswitch_7
    const-string v0, "hostname nor servname provided, or not known."

    .line 1700
    goto :goto_0

    .line 1703
    :pswitch_8
    const-string v0, "servname not supported for ai_socktype."

    .line 1704
    goto :goto_0

    .line 1707
    :pswitch_9
    const-string v0, "ai_socktype not supported."

    .line 1708
    goto :goto_0

    .line 1711
    :pswitch_a
    const-string v0, "system error returned in errno."

    .line 1712
    goto :goto_0

    .line 1715
    :pswitch_b
    const-string v0, "invalid value for hints."

    .line 1716
    goto :goto_0

    .line 1719
    :pswitch_c
    const-string v0, "resolved protocol is unknown."

    .line 1720
    goto :goto_0

    .line 1723
    :pswitch_d
    const-string v0, "argument buffer overflow."

    .line 1724
    goto :goto_0

    .line 1669
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findConnInfowithIface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1219
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1220
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 1221
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " find conn iface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1229
    .end local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 1226
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "find nothing"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1228
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v2, "mConnectionInfos has no conn List"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findDefaultConnInfo()Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .locals 4

    .prologue
    .line 1233
    const-string v2, "findDefaultConnInfo"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1234
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1235
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 1236
    .local v0, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->types:Ljava/util/ArrayList;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " find default conn  iface :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1245
    .end local v0    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 1241
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "find nothing"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1245
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1243
    :cond_2
    const-string v2, "mConnectionInfos has no conn List"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public findIfaceforNonPidDns()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1588
    const-string v4, "net.dns1"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1589
    .local v1, "dnsAddr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1591
    .local v0, "defaultIface":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1592
    const-string v4, ""

    .line 1607
    :goto_0
    return-object v4

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getAllRouteInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;

    .line 1596
    .local v3, "ri":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    iget-object v4, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->dstAddr:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1597
    iget-object v4, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->iface:Ljava/lang/String;

    goto :goto_0

    .line 1598
    :cond_2
    iget-object v4, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->dstAddr:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "0.0.0.0"

    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object v4, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->dstAddr:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "::"

    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 1600
    :cond_4
    iget-object v0, v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;->iface:Ljava/lang/String;

    goto :goto_1

    .line 1604
    .end local v3    # "ri":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    :cond_5
    if-eqz v0, :cond_6

    move-object v4, v0

    .line 1605
    goto :goto_0

    .line 1607
    :cond_6
    const-string v4, ""

    goto :goto_0
.end method

.method public getAPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1309
    new-instance v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    .line 1313
    .local v1, "resultCnt":Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v3, :cond_0

    .line 1314
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    .line 1318
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->sStatsService:Landroid/net/INetworkStatsService;

    if-eqz v3, :cond_2

    .line 1319
    if-eqz p1, :cond_1

    .line 1320
    iget-wide v4, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-static {p1}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1321
    iget-wide v4, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-static {p1}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    .line 1335
    .end local v1    # "resultCnt":Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    :goto_0
    return-object v1

    .line 1325
    .restart local v1    # "resultCnt":Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    :cond_2
    :try_start_1
    const-string v3, "Stats Service is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 1326
    goto :goto_0

    .line 1329
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "fail to get Stats Service"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    move-object v1, v2

    .line 1332
    goto :goto_0
.end method

.method public getAllRouteInfos()Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1503
    const-string v24, "/proc/net/route"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1504
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v22, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_0

    .line 1507
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1514
    :cond_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1515
    .local v23, "s":Ljava/lang/String;
    const-string v24, "\t"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1517
    .local v7, "fields":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v24, v0

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 1518
    const/16 v24, 0x0

    aget-object v13, v7, v24

    .line 1519
    .local v13, "iface":Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v4, v7, v24

    .line 1520
    .local v4, "dest":Ljava/lang/String;
    const/16 v24, 0x2

    aget-object v9, v7, v24

    .line 1521
    .local v9, "gate":Ljava/lang/String;
    const/16 v24, 0x3

    aget-object v8, v7, v24

    .line 1522
    .local v8, "flags":Ljava/lang/String;
    const/16 v24, 0x7

    aget-object v16, v7, v24

    .line 1524
    .local v16, "mask":Ljava/lang/String;
    const/16 v24, 0x8

    :try_start_0
    aget-object v24, v7, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1526
    .local v17, "mtu":I
    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v5

    .line 1528
    .local v5, "destAddr":Ljava/net/InetAddress;
    const/16 v24, 0x10

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v19

    .line 1531
    .local v19, "prefixLength":I
    new-instance v14, Landroid/net/LinkAddress;

    move/from16 v0, v19

    invoke-direct {v14, v5, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1534
    .local v14, "linkAddress":Landroid/net/LinkAddress;
    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-static {v9, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v11

    .line 1537
    .local v11, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v20, Landroid/net/RouteInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v11}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1538
    .local v20, "route":Landroid/net/RouteInfo;
    new-instance v21, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v17

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Landroid/net/RouteInfo;I)V

    .line 1540
    .local v21, "routeWithIface":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1541
    .end local v5    # "destAddr":Ljava/net/InetAddress;
    .end local v11    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v14    # "linkAddress":Landroid/net/LinkAddress;
    .end local v17    # "mtu":I
    .end local v19    # "prefixLength":I
    .end local v20    # "route":Landroid/net/RouteInfo;
    .end local v21    # "routeWithIface":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    :catch_0
    move-exception v6

    .line 1542
    .local v6, "e":Ljava/lang/Exception;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error parsing route "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1549
    .end local v4    # "dest":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "fields":[Ljava/lang/String;
    .end local v8    # "flags":Ljava/lang/String;
    .end local v9    # "gate":Ljava/lang/String;
    .end local v13    # "iface":Ljava/lang/String;
    .end local v16    # "mask":Ljava/lang/String;
    .end local v23    # "s":Ljava/lang/String;
    :cond_2
    const-string v24, "/proc/net/ipv6_route"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1551
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1552
    .restart local v23    # "s":Ljava/lang/String;
    const-string v24, "\\s+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1553
    .restart local v7    # "fields":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v24, v0

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 1554
    const/16 v24, 0x9

    aget-object v24, v7, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 1556
    .restart local v13    # "iface":Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v4, v7, v24

    .line 1557
    .restart local v4    # "dest":Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v18, v7, v24

    .line 1558
    .local v18, "prefix":Ljava/lang/String;
    const/16 v24, 0x4

    aget-object v9, v7, v24

    .line 1562
    .restart local v9    # "gate":Ljava/lang/String;
    const/16 v24, 0x10

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    .line 1566
    .restart local v19    # "prefixLength":I
    invoke-static {v4}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 1567
    .restart local v5    # "destAddr":Ljava/net/InetAddress;
    new-instance v14, Landroid/net/LinkAddress;

    move/from16 v0, v19

    invoke-direct {v14, v5, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 1569
    .restart local v14    # "linkAddress":Landroid/net/LinkAddress;
    invoke-static {v9}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 1571
    .local v10, "gateAddr":Ljava/net/InetAddress;
    new-instance v20, Landroid/net/RouteInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v14, v10}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1572
    .restart local v20    # "route":Landroid/net/RouteInfo;
    new-instance v21, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Ljava/lang/String;Landroid/net/RouteInfo;I)V

    .line 1574
    .restart local v21    # "routeWithIface":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1575
    .end local v5    # "destAddr":Ljava/net/InetAddress;
    .end local v10    # "gateAddr":Ljava/net/InetAddress;
    .end local v14    # "linkAddress":Landroid/net/LinkAddress;
    .end local v19    # "prefixLength":I
    .end local v20    # "route":Landroid/net/RouteInfo;
    .end local v21    # "routeWithIface":Lcom/android/internal/telephony/lgdata/LGDataRecovery$RouteInfoWithIface;
    :catch_1
    move-exception v6

    .line 1576
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Error parsing route "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1583
    .end local v4    # "dest":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "fields":[Ljava/lang/String;
    .end local v9    # "gate":Ljava/lang/String;
    .end local v13    # "iface":Ljava/lang/String;
    .end local v18    # "prefix":Ljava/lang/String;
    .end local v23    # "s":Ljava/lang/String;
    :cond_4
    return-object v22
.end method

.method public getCPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    .locals 5
    .param p1, "APN"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1341
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFlag:Z

    .line 1344
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1346
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1348
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x4281f

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1349
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->getModemPacketCount(Ljava/lang/String;Landroid/os/Message;)V

    .line 1350
    const-string v2, "sent getModemPacketCount request"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1352
    const-string v2, "wait for notify from EVENT_GET_MODEM_PACKET_COUNT_DONE event"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1353
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1355
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1360
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFlag:Z

    if-eqz v2, :cond_1

    .line 1361
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    .line 1373
    :goto_1
    return-object v2

    .line 1355
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1364
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    sget v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFailCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFailCount:I

    .line 1365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout to get modem packet count. cnt= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFailCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1366
    sget v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFailCount:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 1370
    sput v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFailCount:I

    .line 1373
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    goto :goto_1
.end method

.method public getFileSystemInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1472
    const/4 v2, 0x0

    .line 1473
    .local v2, "fstream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .local v3, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1478
    .local v4, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1483
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "s":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1484
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1486
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1488
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .local v1, "ex":Ljava/io/IOException;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting i/o stream. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1490
    if-eqz v2, :cond_0

    .line 1492
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1498
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-object v5

    .line 1490
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_3

    .line 1492
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 1495
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1493
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    move-object v2, v3

    .line 1495
    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1490
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_2

    .line 1492
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1495
    :cond_2
    :goto_4
    throw v7

    .line 1493
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 1490
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1486
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .end local v3    # "fstream":Ljava/io/FileInputStream;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefine Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 376
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 296
    :sswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onScreenON()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 300
    :sswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onScreenOFF()V

    goto :goto_0

    .line 304
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopDataStallAlarm()V

    goto :goto_0

    .line 308
    :sswitch_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 312
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onDataStateConnected(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    :cond_1
    const-string v1, "Data state changed w/o intent"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onDataStateDisconnected(Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    :cond_2
    const-string v1, "Data state changed w/o intent"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;

    if-eqz v1, :cond_3

    .line 329
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onDnsFailObserved(Lcom/android/internal/telephony/lgdata/LGDataRecovery$DnsFailInfo;)V

    goto :goto_0

    .line 331
    :cond_3
    const-string v1, "DNS fail observed w/o result"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onDataStallAlarmExpired(I)V

    goto :goto_0

    .line 340
    :sswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "iface"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "iface":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->onConnCompletedCheckAlarmExpired(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    .end local v0    # "iface":Ljava/lang/String;
    :sswitch_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mVoicecall:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopDataStallAlarm()V

    goto :goto_0

    .line 354
    :sswitch_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mVoicecall:Z

    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 356
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 361
    :sswitch_b
    const-string v1, "EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopDataStallAlarm()V

    .line 363
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsPsRestricted:Z

    goto/16 :goto_0

    .line 367
    :sswitch_c
    const-string v1, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsPsRestricted:Z

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->DATA_STALL_NOT_SUSPECTED:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startDataStallAlarm(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x42007 -> :sswitch_9
        0x42008 -> :sswitch_a
        0x42009 -> :sswitch_2
        0x42010 -> :sswitch_3
        0x42016 -> :sswitch_b
        0x42017 -> :sswitch_c
        0x42818 -> :sswitch_0
        0x42819 -> :sswitch_1
        0x4281a -> :sswitch_4
        0x4281b -> :sswitch_5
        0x4281c -> :sswitch_6
        0x4281d -> :sswitch_7
        0x4281e -> :sswitch_8
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1912
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataMonitoring] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    return-void
.end method

.method protected onGetModemPacketCountDone(ILandroid/os/AsyncResult;)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    .line 1841
    const-string v2, "onGetModemPacketCountDone entry"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1842
    if-nez p2, :cond_0

    .line 1843
    const-string v2, "onGetModemPacketCountDone AsyncResult is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1844
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iput-wide v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1845
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iput-wide v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1866
    :goto_0
    const-string v2, "onGetModemPacketCountDone complete. Now notify."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1867
    monitor-enter p0

    .line 1868
    const/4 v2, 0x1

    :try_start_0
    sput-boolean v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCpResponseFlag:Z

    .line 1869
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1870
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    return-void

    .line 1846
    :cond_0
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1847
    const-string v2, "onGetModemPacketCountDone AsyncResult.result is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1848
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iput-wide v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1849
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iput-wide v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    goto :goto_0

    .line 1852
    :cond_1
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 1854
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemPacketCountDone: result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1858
    :cond_2
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1859
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1860
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    aget v3, v1, v6

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1861
    sget-object v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mCP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    goto :goto_0

    .line 1863
    :cond_3
    const-string v2, "getModemPacketCountDone return valuse is abnormal"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1870
    .end local v0    # "i":I
    .end local v1    # "result":[I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public putRecoveryAction(I)V
    .locals 3
    .param p1, "action"    # I

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio.data.stall.recovery.action"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 786
    sget-object v1, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_TOOL_MLT_DEBUG_INFO:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 787
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DATA_RECOVERY_ACTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 788
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 792
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public reStartDataStallAlarm()V
    .locals 1

    .prologue
    .line 1443
    const-string v0, "reStartDataBlockObserver"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopDataStallAlarm()V

    .line 1446
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startDataStallAlarm(Z)V

    .line 1449
    :cond_0
    return-void
.end method

.method public startConnectionCompleteCheckAlarm(Ljava/lang/String;)V
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1188
    const/16 v2, 0x2710

    .line 1190
    .local v2, "delayInMs":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startConnectionCompleteCheckAlarm: iface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1192
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1195
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.internal.telephony.lge-data-conn-check-alarm"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "conn.check.alram.tag"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v1

    .line 1198
    .local v1, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    if-eqz v1, :cond_0

    .line 1199
    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    .line 1201
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    iget-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1204
    :cond_0
    return-void
.end method

.method public startDataStallAlarm(Z)V
    .locals 8
    .param p1, "suspectedBlock"    # Z

    .prologue
    .line 1396
    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mIsWifiConnected:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1397
    const-string v3, "startDataStallAlarm is ignored due to WiFi connected."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1426
    :goto_0
    return-void

    .line 1402
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isScreenOn:Z

    if-eqz v3, :cond_2

    .line 1403
    :cond_1
    const v1, 0xea60

    .line 1407
    .local v1, "delayInMs":I
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    .line 1408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDataStallAlarm: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v1, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s suspectedFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1411
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1414
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.internal.telephony.lge-data-stall-alarm"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "data.stall.alram.tag"

    iget v4, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1416
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 1423
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1405
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "delayInMs":I
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const v1, 0x57e40

    .restart local v1    # "delayInMs":I
    goto :goto_1
.end method

.method public startNetdListener()V
    .locals 5

    .prologue
    .line 1378
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    if-nez v2, :cond_0

    .line 1379
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1380
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementServiceEx;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    .line 1382
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;Lcom/android/internal/telephony/lgdata/LGDataRecovery$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;

    .line 1386
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    if-eqz v2, :cond_1

    .line 1387
    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNMServiceEx:Landroid/os/INetworkManagementServiceEx;

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mNetdObserverEx:Lcom/android/internal/telephony/lgdata/LGDataRecovery$NetdObserverEx;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementServiceEx;->registerObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :cond_1
    :goto_0
    return-void

    .line 1389
    :catch_0
    move-exception v1

    .line 1390
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopConnectionCompleteCheckTimer(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .prologue
    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopConnectionCompleteCheckTimer: iface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnCheckAlarmIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1208
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1211
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1212
    iget-object v1, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1213
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    .line 1215
    :cond_0
    return-void
.end method

.method public stopDataStallAlarm()V
    .locals 3

    .prologue
    .line 1429
    iget v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDataStallAlarm: current tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataStallAlarmIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1432
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1435
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 1439
    :cond_0
    return-void
.end method

.method public declared-synchronized updateConnectionInfosList(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 1114
    monitor-enter p0

    :try_start_0
    const-string v5, " UpdateConnectionInfos "

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    const/4 v0, 0x0

    .line 1116
    .local v0, "alreadyexist":Z
    const/4 v4, 0x0

    .line 1119
    .local v4, "numofList":I
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1121
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iteratorConnectionInfo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1122
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .line 1124
    .local v1, "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iget-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Found conn with iface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1126
    if-nez p2, :cond_7

    .line 1127
    if-nez v4, :cond_2

    .line 1128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update LState to LINKDOWN fot this iface : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1129
    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKDOWN:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    iput-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    .line 1130
    iget-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->mConnCheckAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_1

    .line 1131
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopConnectionCompleteCheckTimer(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 1134
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 1135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1138
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "there are more than 2 connInfos for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remove it WARNING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1139
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1153
    .end local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v3    # "iteratorConnectionInfo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;>;"
    :catch_0
    move-exception v2

    .line 1154
    .local v2, "e":Ljava/util/ConcurrentModificationException;
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 1157
    .end local v2    # "e":Ljava/util/ConcurrentModificationException;
    :cond_3
    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eqz p2, :cond_4

    .line 1158
    new-instance v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    .line 1159
    .restart local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    iput-object p1, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    .line 1160
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    .line 1161
    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    iput-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    .line 1162
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 1163
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->mConnectionInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    .end local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_4
    if-eqz p2, :cond_5

    .line 1167
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->findConnInfowithIface(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    move-result-object v1

    .line 1168
    .restart local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    if-nez v1, :cond_9

    .line 1169
    const-string v5, "conn is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1180
    .end local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->isDataStallAlarmNeeded()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1181
    const-string v5, "There is no ConnectionInfo Connected stopstallAlarm."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->stopDataStallAlarm()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1184
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 1142
    .restart local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .restart local v3    # "iteratorConnectionInfo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;>;"
    :cond_7
    :try_start_3
    iget-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    sget-object v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    if-ne v5, v6, :cond_8

    .line 1143
    const-string v5, "same notification occured ignore this one."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1114
    .end local v0    # "alreadyexist":Z
    .end local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .end local v3    # "iteratorConnectionInfo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;>;"
    .end local v4    # "numofList":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1146
    .restart local v0    # "alreadyexist":Z
    .restart local v1    # "conn":Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;
    .restart local v3    # "iteratorConnectionInfo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;>;"
    .restart local v4    # "numofList":I
    :cond_8
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has conninfo update LState to LINKUP / FState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1147
    const/4 v0, 0x1

    .line 1148
    sget-object v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;->LINKUP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;

    iput-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->LState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$LinkState;
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1170
    .end local v3    # "iteratorConnectionInfo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;>;"
    :cond_9
    :try_start_5
    iget-object v5, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->FState:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    sget-object v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;->DISCONNECTED:Lcom/android/internal/telephony/lgdata/LGDataRecovery$FrameworkState;

    if-ne v5, v6, :cond_a

    .line 1171
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->startConnectionCompleteCheckAlarm(Ljava/lang/String;)V

    goto :goto_1

    .line 1173
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FState of conn for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is NOT DISCONNECTED. WARNING "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1174
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforAP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V

    .line 1175
    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->supportCPtrafficstat:Z

    if-eqz v5, :cond_5

    .line 1176
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->updateTrafficStatforCP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public updateTrafficStatforAP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V
    .locals 10
    .param p1, "conn"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .prologue
    .line 1249
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getAPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-result-object v4

    .line 1251
    .local v4, "resultCnt":Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    if-nez v4, :cond_0

    .line 1252
    const-string v5, "updateTrafficStatforAP()... Failure to get getAPTrafficStat()"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1272
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    if-nez v5, :cond_1

    .line 1257
    new-instance v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;-><init>(Lcom/android/internal/telephony/lgdata/LGDataRecovery;)V

    iput-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    .line 1261
    :goto_1
    iput-object v4, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    .line 1262
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v8, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v2, v6, v8

    .line 1263
    .local v2, "increasedTxcnt":J
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v8, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    sub-long v0, v6, v8

    .line 1264
    .local v0, "increasedRxcnt":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    .line 1265
    const/4 v5, 0x0

    iput v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    .line 1269
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prev stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curr stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sentSinceLastRecv for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " systemtime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1259
    .end local v0    # "increasedRxcnt":J
    .end local v2    # "increasedTxcnt":J
    :cond_1
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iput-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatAP:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    goto/16 :goto_1

    .line 1267
    .restart local v0    # "increasedRxcnt":J
    .restart local v2    # "increasedTxcnt":J
    :cond_2
    iget v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    int-to-long v6, v5

    add-long/2addr v6, v2

    long-to-int v5, v6

    iput v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->sentSinceLastRecv:I

    goto/16 :goto_2
.end method

.method public updateTrafficStatforCP(Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;)V
    .locals 12
    .param p1, "conn"    # Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;

    .prologue
    const-wide/16 v10, 0x0

    .line 1275
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->APN:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->getCPTrafficStat(Ljava/lang/String;)Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    move-result-object v4

    .line 1277
    .local v4, "resultCnt":Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1278
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1279
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    iput-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    .line 1281
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    .line 1282
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    iput-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    .line 1283
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v4, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    iput-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    .line 1285
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v8, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v2, v6, v8

    .line 1286
    .local v2, "increasedTxcnt":J
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v8, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    sub-long v0, v6, v8

    .line 1289
    .local v0, "increasedRxcnt":J
    cmp-long v5, v2, v10

    if-ltz v5, :cond_0

    cmp-long v5, v0, v10

    if-gez v5, :cond_1

    .line 1290
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    sub-long v2, v6, v10

    .line 1291
    iget-object v5, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v5, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    sub-long v0, v6, v10

    .line 1302
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Modem Prev stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->PrevStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Modem Curr stat for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->iface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :: txCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->txCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rxCnt= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->rxCnt:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/lgdata/LGDataRecovery$ConnectionInfo;->CurrStatModem:Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;

    iget-wide v6, v6, Lcom/android/internal/telephony/lgdata/LGDataRecovery$TrafficStat;->systime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/LGDataRecovery;->log(Ljava/lang/String;)V

    .line 1305
    return-void
.end method
