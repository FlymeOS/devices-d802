.class public Lcom/android/server/ePDGConnection;
.super Lcom/android/internal/util/StateMachine;
.source "ePDGConnection.java"


# static fields
.field static final BAD_LOSSINWIFI:I = 0x138c

.field protected static final BASE:I = 0x40000

.field static final CBS_APN_CHANGED:I = 0x12c

.field static final CONNECTIVITY_FAIL:I = 0x8

.field static final CON_FAIL_RSP:I = 0x1

.field static final CON_LOST:I = 0x3

.field static final CON_SUCCESS_RSP:I = 0x0

.field protected static final DBG:Z = true

.field static final DISCONNECTED_SUCCESS:I = 0x2

.field static final EPDG_ONLY_INROAM:I = 0x68

.field protected static final EVENT_APN_CHANGED:I = 0x4001b

.field protected static final EVENT_APN_DISCONNECT_NOW:I = 0x4001d

.field protected static final EVENT_BAD_WIFI_STATUS:I = 0x4000b

.field protected static final EVENT_CALLSTATUS_CH:I = 0x40015

.field protected static final EVENT_CONNECTED:I = 0x40005

.field protected static final EVENT_DELAYED_DISCONNECT:I = 0x4001c

.field protected static final EVENT_DELAYED_TEMP_COMPLETE:I = 0x40021

.field protected static final EVENT_DISCONNECTED:I = 0x40006

.field protected static final EVENT_EPDG_CONNECTED:I = 0x40013

.field protected static final EVENT_EPDG_RECOVERY_WAIT:I = 0x40025

.field protected static final EVENT_EPDG_REQUEST:I = 0x40002

.field protected static final EVENT_EPDG_SETUP_DATA_CALL:I = 0x4000a

.field protected static final EVENT_EPDG_TIME:I = 0x4001f

.field protected static final EVENT_FQDN_RSP:I = 0x40008

.field protected static final EVENT_HANDOVER_FAIL:I = 0x4000c

.field protected static final EVENT_LTEREGI_FAIL:I = 0x40018

.field protected static final EVENT_LTE_CONNECTED:I = 0x40012

.field protected static final EVENT_MANGER_START:I = 0x40004

.field protected static final EVENT_MANGER_STOP:I = 0x40003

.field protected static final EVENT_NET_STATE:I = 0x40011

.field protected static final EVENT_PCSCF_CH:I = 0x4000e

.field protected static final EVENT_PDN_PRI_CH:I = 0x40010

.field protected static final EVENT_QOS_INFO:I = 0x4000f

.field protected static final EVENT_RADIO_OFF:I = 0x4001e

.field protected static final EVENT_RETRY:I = 0x4001a

.field protected static final EVENT_ROAM_IMFO:I = 0x40023

.field protected static final EVENT_SET_INIT_VALUE:I = 0x40020

.field protected static final EVENT_TIME_OUT:I = 0x40007

.field protected static final EVENT_UNKNOWN_TECH:I = 0x40022

.field protected static final EVENT_USER_DISCONNECT:I = 0x40009

.field protected static final EVENT_WFCSETTING_CH:I = 0x40016

.field protected static final EVENT_WFC_PREFER_CH:I = 0x40014

.field protected static final EVENT_WIFI_CONNECT:I = 0x40000

.field protected static final EVENT_WIFI_CONNECT_DETAIL:I = 0x40024

.field protected static final EVENT_WIFI_DISCONNECT:I = 0x40001

.field protected static final EVENT_ePDGREGI_FAIL:I = 0x40017

.field protected static final EVENT_ePDGRTP_FAIL:I = 0x40019

.field static final EXIT_FAIL_STATUS:I = 0xa

.field static final FAIL_CAUSE_BASE:I = 0x1388

.field static final FAIL_CONNECTION:I = 0x138b

.field static final FAIL_EPS_SCAN:I = 0x138a

.field static final FAIL_NO_RSP:I = 0x1389

.field static final FixedLTE:I = 0x1

.field static final FixedePDG:I = 0x2

.field static final HANDOVER_FAIL:I = 0x138d

.field static final HANDOVER_TO_LTE:I = 0x6

.field static final HANDOVER_TO_ePDG:I = 0x7

.field static final HandoverError:I = 0x64

.field static final IMSREGI_FAIL_LTE:I = 0x65

.field static final IMSREGI_FAIL_ePDG:I = 0x66

.field static final IMS_APN_CHANGED:I = 0xc8

.field public static final IMS_CELL_ONLY:I = 0x3

.field public static final IMS_CELL_PREF:I = 0x2

.field static final IMS_DEREGI:I = 0x191

.field static final IMS_INTHEHOME:I = 0x69

.field static final IMS_REGI_OK:I = 0x190

.field static final IMS_TYPE:I = 0x0

.field public static final IMS_WIFI_ONLY:I = 0x1

.field public static final IMS_WIFI_PREF:I = 0x0

.field static final IWLAN_S2b:I = 0x12

.field protected static final LOG_TAG:Ljava/lang/String; = "ePDG"

.field static final LTEConnected:I = 0x1

.field static final LTE_TECH:I = 0xe

.field static final NETWROKLost:I = 0x1392

.field static final NO_APN:I = 0x138f

.field static final NO_LIST:I = 0x3e7

.field public static final PDN_IS_NOT_AVA:I = 0x2

.field public static final PDN_MMS_TYPE:I = 0x0

.field public static final PDN_TMUS_TYPE:I = 0x1

.field static final PREF_IWLAN_TECH:I = 0x2

.field static final PREF_WWAN_TECH:I = 0x0

.field static final RADIO_POWER_OFF:I = 0x1f4

.field static final REQ_TIME_OUT:I = 0x3e9

.field static final RTPTIMEOUT:I = 0x1390

.field static final RTPTIMEOUT_ePDG:I = 0x67

.field static final SCAN_FAIL:I = 0x3e8

.field static final VZWAPP_TYPE:I = 0x1

.field static final WIFISIG_BAD:I = 0x2

.field static final WIFISIG_GOOD:I = 0x0

.field static final WIFISIG_MID:I = 0x1

.field static final WRONGTECH:I = 0x1391

.field static final WiFi_LOST:I = 0x138e

.field static final ePDGConnected:I = 0x2

.field protected static mCount:I


# instance fields
.field public CallState:I

.field protected FQDNForTestApp:Ljava/lang/String;

.field protected FQDNStaticFlag:Z

.field public WFCPrefer:I

.field public WFCSettings:Z

.field public cid:I

.field public currentPref:I

.field protected ePDGAddrForTestApp:[Ljava/lang/String;

.field protected ePDGAddrStaticFlag:Z

.field protected isChangingRAT:Z

.field public isGoodPacket:Z

.field public isIMSRegi:Z

.field protected isManager:Z

.field protected isMobileavail:Z

.field public isRoaming:Z

.field public isSmCauseForEPDG:Z

.field public isWaitingDereig:Z

.field protected isWaitingRAT:Z

.field protected isWiFi:Z

.field protected ispreferchangeFailcausenull:Z

.field public mApn:Ljava/lang/String;

.field public mCompletedMsg:Landroid/os/Message;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentGW:Ljava/lang/String;

.field protected mEIf:Ljava/lang/String;

.field mExtendedRat:I

.field protected mFailReason:I

.field protected mFid:I

.field protected mFqdn:Ljava/lang/String;

.field protected mGWList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

.field protected mLastNetworkReason:I

.field public mLostMsg:Landroid/os/Message;

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field protected mV4Addr:Ljava/lang/String;

.field protected mV6Addr:Ljava/lang/String;

.field protected mcc:Ljava/lang/String;

.field protected mnc:Ljava/lang/String;

.field protected mobileRadioTech:I

.field protected mobileservicestate:I

.field public myfeature:I

.field protected pcscfAddr_ipv4:[Ljava/lang/String;

.field protected pcscfAddr_ipv6:[Ljava/lang/String;

.field wifiDetailedState:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 82
    iput v1, p0, Lcom/android/server/ePDGConnection;->mFailReason:I

    .line 83
    iput v1, p0, Lcom/android/server/ePDGConnection;->mLastNetworkReason:I

    .line 85
    iput v1, p0, Lcom/android/server/ePDGConnection;->mFid:I

    .line 91
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isWiFi:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isChangingRAT:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isWaitingRAT:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isMobileavail:Z

    .line 98
    iput v3, p0, Lcom/android/server/ePDGConnection;->mobileservicestate:I

    .line 99
    iput v1, p0, Lcom/android/server/ePDGConnection;->mobileRadioTech:I

    .line 107
    iput-boolean v3, p0, Lcom/android/server/ePDGConnection;->isManager:Z

    .line 112
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mV4Addr:Ljava/lang/String;

    .line 115
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mV6Addr:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mEIf:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    .line 127
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 179
    iput v1, p0, Lcom/android/server/ePDGConnection;->currentPref:I

    .line 209
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/ePDGConnection;->cid:I

    .line 210
    iput-boolean v3, p0, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 213
    const-string v0, "UnKnown"

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mApn:Ljava/lang/String;

    .line 215
    iput v1, p0, Lcom/android/server/ePDGConnection;->mExtendedRat:I

    .line 280
    iput v1, p0, Lcom/android/server/ePDGConnection;->WFCPrefer:I

    .line 281
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->WFCSettings:Z

    .line 282
    iput v1, p0, Lcom/android/server/ePDGConnection;->CallState:I

    .line 283
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isRoaming:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isIMSRegi:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isWaitingDereig:Z

    .line 296
    iput v1, p0, Lcom/android/server/ePDGConnection;->wifiDetailedState:I

    .line 299
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 307
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->FQDNForTestApp:Ljava/lang/String;

    .line 308
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->FQDNStaticFlag:Z

    .line 309
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->ePDGAddrForTestApp:[Ljava/lang/String;

    .line 310
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->ePDGAddrStaticFlag:Z

    .line 312
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->ispreferchangeFailcausenull:Z

    .line 317
    iput-object v2, p0, Lcom/android/server/ePDGConnection;->mContext:Landroid/content/Context;

    .line 319
    iput v1, p0, Lcom/android/server/ePDGConnection;->myfeature:I

    .line 322
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->isSmCauseForEPDG:Z

    .line 327
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    iput v0, p0, Lcom/android/server/ePDGConnection;->myfeature:I

    .line 329
    return-void
.end method

.method static makePDGConnection(I)Lcom/android/server/ePDGConnection;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyQoSInfo(Landroid/net/NetworkCapabilities$Flow;)V
    .locals 7
    .param p1, "flow"    # Landroid/net/NetworkCapabilities$Flow;

    .prologue
    .line 408
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.lge.internal.telephony.qos-changed"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v4, "intent_qos":Landroid/content/Intent;
    const-string v5, "type"

    const-string v6, "ims"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v5, "id"

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v5, "status"

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getState()Landroid/net/NetworkCapabilities$FlowState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities$FlowState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v5, "tx-desc"

    const-string v6, "tx"

    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v5, "rx-desc"

    const-string v6, "rx"

    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v5, "notifyQoSInfo : Broadcast QoS Information"

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 419
    const-string v5, "    type : ims "

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getState()Landroid/net/NetworkCapabilities$FlowState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkCapabilities$FlowState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    tx-desc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "tx"

    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    rx-desc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "rx"

    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities$Flow;->getFlowDescriptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 425
    const-string v5, "tx"

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilterCount(Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, "TXcount":I
    const-string v5, "rx"

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilterCount(Ljava/lang/String;)I

    move-result v0

    .line 428
    .local v0, "RXcount":I
    const-string v5, "TX-filterCount"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    const-string v5, "RX-filterCount"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    TXcount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    RXcount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 434
    if-nez v1, :cond_3

    .line 435
    const-string v5, "tx-filter"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v5, "    tx-filter : "

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 445
    :cond_0
    if-nez v0, :cond_4

    .line 446
    const-string v5, "rx-filter"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v5, "    rx-filter : "

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 455
    :cond_1
    iget-object v5, p0, Lcom/android/server/ePDGConnection;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 457
    iget-object v5, p0, Lcom/android/server/ePDGConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 459
    :cond_2
    return-void

    .line 438
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 439
    const-string v5, "tx"

    invoke-virtual {p1, v3, v5}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilter(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "filter":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tx-filter["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    tx-filter["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "filter":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 450
    const-string v5, "rx"

    invoke-virtual {p1, v3, v5}, Landroid/net/NetworkCapabilities$Flow;->getFlowFilter(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .restart local v2    # "filter":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rx-filter["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    rx-filter["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private setFlowState(Landroid/net/NetworkCapabilities$Flow;I)Z
    .locals 4
    .param p1, "flow"    # Landroid/net/NetworkCapabilities$Flow;
    .param p2, "qos_status"    # I

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getState()Landroid/net/NetworkCapabilities$FlowState;

    move-result-object v0

    .line 465
    .local v0, "flowState":Landroid/net/NetworkCapabilities$FlowState;
    packed-switch p2, :pswitch_data_0

    .line 533
    :goto_0
    return v1

    .line 468
    :pswitch_0
    sget-object v2, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    if-eq v0, v2, :cond_0

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnomal Flow State Change: QoS ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Current State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), New State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkCapabilities$FlowState;->ACTIVATED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_0
    sget-object v1, Landroid/net/NetworkCapabilities$FlowState;->ACTIVATED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities$Flow;->setState(Landroid/net/NetworkCapabilities$FlowState;)V

    .line 533
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 479
    :pswitch_1
    sget-object v2, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    if-ne v0, v2, :cond_2

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnomal Flow State Change: QoS ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Current State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), New State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkCapabilities$FlowState;->ENABLED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_2
    sget-object v1, Landroid/net/NetworkCapabilities$FlowState;->ENABLED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities$Flow;->setState(Landroid/net/NetworkCapabilities$FlowState;)V

    goto :goto_1

    .line 490
    :pswitch_2
    sget-object v2, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    if-ne v0, v2, :cond_3

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnomal Flow State Change: QoS ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Current State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), New State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    :cond_3
    sget-object v1, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities$Flow;->setState(Landroid/net/NetworkCapabilities$FlowState;)V

    goto/16 :goto_1

    .line 501
    :pswitch_3
    sget-object v2, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    if-ne v0, v2, :cond_4

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnomal Flow State Change: QoS ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Current State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), New State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkCapabilities$FlowState;->DISABLED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_4
    sget-object v1, Landroid/net/NetworkCapabilities$FlowState;->DISABLED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities$Flow;->setState(Landroid/net/NetworkCapabilities$FlowState;)V

    goto/16 :goto_1

    .line 512
    :pswitch_4
    sget-object v2, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    if-ne v0, v2, :cond_5

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnomal Flow State Change: QoS ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Current State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), New State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkCapabilities$FlowState;->SUSPENDED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_5
    sget-object v1, Landroid/net/NetworkCapabilities$FlowState;->SUSPENDED:Landroid/net/NetworkCapabilities$FlowState;

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities$Flow;->setState(Landroid/net/NetworkCapabilities$FlowState;)V

    goto/16 :goto_1

    .line 523
    :pswitch_5
    sget-object v2, Landroid/net/NetworkCapabilities$FlowState;->INACTIVE:Landroid/net/NetworkCapabilities$FlowState;

    if-ne v0, v2, :cond_1

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abnomal Flow State Change: QoS ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities$Flow;->getID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Modified Event Received at State ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkSameAddr(Ljava/lang/String;)I
    .locals 3
    .param p1, "GWaddr"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 375
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const-string v2, "if it is second pdn, we do not configure list"

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 382
    const/16 v0, 0x3e7

    goto :goto_1
.end method

.method protected clearSettings()V
    .locals 1

    .prologue
    .line 346
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/ePDGConnection;->cid:I

    .line 353
    return-void
.end method

.method public ePDGDeactivateDataCall(Ljava/lang/String;II)V
    .locals 3
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "reason"    # I

    .prologue
    .line 945
    const-string v1, "[ePDG] Deactivate data call start : "

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ILGTelephony;->ePDGDeactivateDataCall(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] Deactivate data call RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ePDGHandOverStatus(I)V
    .locals 0
    .param p1, "extendedRAT"    # I

    .prologue
    .line 1040
    return-void
.end method

.method public ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;

    .prologue
    .line 918
    const-string v0, "[ePDG] ePDG Setup Data Call start : "

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    if-nez v0, :cond_0

    .line 921
    const-string v0, "Jphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ILGTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    if-nez v0, :cond_1

    .line 926
    const-string v0, "[ePDG] pref change cause mLGphoneinterface is null"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 941
    :goto_0
    return-void

    .line 929
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ePDGConnection;->isChangingRAT:Z

    if-eqz v0, :cond_2

    .line 931
    const-string v0, "[ePDG] wait!! until rat change : "

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ePDGConnection;->isWaitingRAT:Z

    goto :goto_0

    .line 936
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ILGTelephony;->ePDGSetupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mApn:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    :catch_0
    move-exception v8

    .line 938
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ePDG] setup data call RemoteException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ePDGbringUp(Landroid/os/Message;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "onCompletedMsg"    # Landroid/os/Message;
    .param p2, "onLostMsg"    # Landroid/os/Message;
    .param p3, "mymcc"    # Ljava/lang/String;
    .param p4, "mymnc"    # Ljava/lang/String;
    .param p5, "fid"    # I

    .prologue
    .line 680
    iput-object p3, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    .line 681
    iput-object p4, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    .line 682
    iput-object p1, p0, Lcom/android/server/ePDGConnection;->mCompletedMsg:Landroid/os/Message;

    .line 683
    iput-object p2, p0, Lcom/android/server/ePDGConnection;->mLostMsg:Landroid/os/Message;

    .line 684
    iput p5, p0, Lcom/android/server/ePDGConnection;->mFid:I

    .line 685
    const v0, 0x40002

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(I)V

    .line 686
    const/4 v0, 0x1

    return v0
.end method

.method public ePDGteardown(Landroid/os/Message;)Z
    .locals 1
    .param p1, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method public getAPNTypewithFid(I)Ljava/lang/String;
    .locals 2
    .param p1, "fid"    # I

    .prologue
    .line 1015
    packed-switch p1, :pswitch_data_0

    .line 1034
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1021
    :pswitch_0
    const-string v0, "ims"

    goto :goto_0

    .line 1024
    :pswitch_1
    iget v0, p0, Lcom/android/server/ePDGConnection;->myfeature:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/ePDGConnection;->myfeature:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1025
    :cond_0
    const-string v0, "cbs"

    goto :goto_0

    .line 1027
    :cond_1
    const-string v0, "vzwapp"

    goto :goto_0

    .line 1030
    :pswitch_2
    const-string v0, "vzwCF"

    goto :goto_0

    .line 1032
    :pswitch_3
    const-string v0, "vzwstatic"

    goto :goto_0

    .line 1015
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getConnectionID()I
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/android/server/ePDGConnection;->mFid:I

    return v0
.end method

.method public getHostByName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "strFQDN"    # Ljava/lang/String;

    .prologue
    .line 875
    const/4 v3, 0x0

    .line 877
    .local v3, "objIPs":[Ljava/net/InetAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHostByName ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 880
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 887
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 888
    .local v2, "objIPStrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "nIndex":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 889
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 890
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHostByName ip=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    .end local v1    # "nIndex":I
    .end local v2    # "objIPStrs":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 884
    const/4 v2, 0x0

    .line 893
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    return-object v2
.end method

.method public getprefer()I
    .locals 1

    .prologue
    .line 1045
    const/4 v0, 0x2

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 899
    const-string v0, "ePDG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/ePDGConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void
.end method

.method protected makeFQDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/android/server/ePDGConnection;->FQDNStaticFlag:Z

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->FQDNForTestApp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 860
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 871
    :goto_0
    return-object v0

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 865
    :cond_1
    const-string v0, "makeFQDN Fail"

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 866
    const/4 v0, 0x0

    goto :goto_0

    .line 869
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epdg.epc.mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pub.3gppnetwork.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    .line 871
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    goto :goto_0
.end method

.method protected notifyePDGCompleted(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 821
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ePDGConnection;->notifyePDGCompleted(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method protected notifyePDGCompleted(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "reason"    # I
    .param p3, "ipaddr"    # Ljava/lang/String;
    .param p4, "ipif"    # Ljava/lang/String;
    .param p5, "ipsecGW"    # Ljava/lang/String;
    .param p6, "idnss"    # Ljava/lang/String;

    .prologue
    .line 826
    const/4 v10, 0x0

    .line 829
    .local v10, "connectionCompletedMsg":Landroid/os/Message;
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x138d

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 831
    :cond_0
    iget-object v10, p0, Lcom/android/server/ePDGConnection;->mLostMsg:Landroid/os/Message;

    .line 839
    :goto_0
    if-nez v10, :cond_2

    .line 840
    const-string v1, "connectionCompletedMsg is null!!!!!!!!!!!!!! "

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 852
    :goto_1
    return-void

    .line 835
    :cond_1
    iget-object v10, p0, Lcom/android/server/ePDGConnection;->mCompletedMsg:Landroid/os/Message;

    goto :goto_0

    .line 844
    :cond_2
    new-instance v0, Lcom/android/server/ePDGConnInfo;

    iget v3, p0, Lcom/android/server/ePDGConnection;->mFid:I

    iget-object v4, p0, Lcom/android/server/ePDGConnection;->mCurrentGW:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ePDGConnection;->mFqdn:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/ePDGConnInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .local v0, "sendingResult":Lcom/android/server/ePDGConnInfo;
    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 848
    :try_start_0
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 849
    :catch_0
    move-exception v11

    .line 850
    .local v11, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG notification ERROR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNetworkupdate(ZII)Z
    .locals 1
    .param p1, "isWiFi"    # Z
    .param p2, "mobileState"    # I
    .param p3, "mobileTech"    # I

    .prologue
    .line 772
    const/4 v0, 0x0

    return v0
.end method

.method protected onPCSChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 641
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "pcscf_address":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetPcscfAddressCompleted, pcscf_address.length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 645
    array-length v2, v1

    if-lez v2, :cond_0

    .line 646
    aget-object v2, v1, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ePDGConnection;->pcscfAddr_ipv4:[Ljava/lang/String;

    .line 648
    :cond_0
    array-length v2, v1

    if-le v2, v4, :cond_1

    .line 649
    aget-object v2, v1, v4

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ePDGConnection;->pcscfAddr_ipv6:[Ljava/lang/String;

    .line 652
    :cond_1
    array-length v2, v1

    if-lez v2, :cond_2

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetPcscfAddressCompleted, IPv4 PCSCF Addresses : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 655
    :cond_2
    array-length v2, v1

    if-le v2, v4, :cond_3

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetPcscfAddressCompleted, IPv6 PCSCF Addresses : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 659
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->LGP_DATA_IMS_PCSCF_RESTORATION:Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgdata/LgDataFeature$DataFeature;->getValue()Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 661
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.internal.telephony.pcscf-changed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "intent_qos":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 667
    .end local v0    # "intent_qos":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method protected onQoSChanged(Ljava/lang/String;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    .line 538
    const/4 v0, 0x0

    .line 545
    .local v0, "QoSInfo":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " GET QoS Info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 547
    const-string v7, ";"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 550
    if-nez v0, :cond_0

    .line 552
    const-string v6, "onQoSChanged : EXIT with Error, QoSInfo is null"

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 635
    :goto_0
    return-void

    .line 556
    :cond_0
    array-length v7, v0

    if-ge v7, v9, :cond_1

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQoSChanged : EXIT with Error, there is no full information, # of qos entities: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 565
    .local v3, "qos_cid":I
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 566
    .local v4, "qos_qid":I
    const/4 v7, 0x2

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 573
    .local v5, "qos_status":I
    iget v7, p0, Lcom/android/server/ePDGConnection;->cid:I

    if-eq v7, v3, :cond_2

    .line 575
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGetQoSChanged : EXIT, QoS Event is not for this data connection, cid ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ePDGConnection;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), qos_cid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 568
    .end local v3    # "qos_cid":I
    .end local v4    # "qos_qid":I
    .end local v5    # "qos_status":I
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQoSChanged : Catch Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "qos_cid":I
    .restart local v4    # "qos_qid":I
    .restart local v5    # "qos_status":I
    :cond_2
    iget-object v7, p0, Lcom/android/server/ePDGConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-ne v5, v6, :cond_3

    :goto_1
    invoke-virtual {v7, v4, v6}, Landroid/net/NetworkCapabilities;->getFlow(IZ)Landroid/net/NetworkCapabilities$Flow;

    move-result-object v2

    .line 580
    .local v2, "flow":Landroid/net/NetworkCapabilities$Flow;
    if-nez v2, :cond_4

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQoSChanged : Failed to create/find Flow for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    .end local v2    # "flow":Landroid/net/NetworkCapabilities$Flow;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 586
    .restart local v2    # "flow":Landroid/net/NetworkCapabilities$Flow;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQoSChanged : Handing for QoS Status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 588
    packed-switch v5, :pswitch_data_0

    .line 634
    :cond_5
    :goto_2
    const-string v6, "onQoSChanged : EXIT with Success"

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    :pswitch_0
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities$Flow;->clearFlow()V

    .line 595
    :pswitch_1
    array-length v6, v0

    if-le v6, v9, :cond_6

    aget-object v6, v0, v9

    if-eqz v6, :cond_6

    aget-object v6, v0, v9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 597
    const-string v6, "tx"

    aget-object v7, v0, v9

    invoke-virtual {v2, v6, v7}, Landroid/net/NetworkCapabilities$Flow;->putFlowDescriptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_6
    array-length v6, v0

    if-le v6, v10, :cond_7

    aget-object v6, v0, v10

    if-eqz v6, :cond_7

    aget-object v6, v0, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 601
    const-string v6, "rx"

    aget-object v7, v0, v10

    invoke-virtual {v2, v6, v7}, Landroid/net/NetworkCapabilities$Flow;->putFlowDescriptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_7
    array-length v6, v0

    if-le v6, v11, :cond_8

    aget-object v6, v0, v11

    if-eqz v6, :cond_8

    aget-object v6, v0, v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 605
    const-string v6, "tx"

    aget-object v7, v0, v11

    invoke-virtual {v2, v6, v7}, Landroid/net/NetworkCapabilities$Flow;->putFlowFilters(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_8
    array-length v6, v0

    if-le v6, v12, :cond_9

    aget-object v6, v0, v12

    if-eqz v6, :cond_9

    aget-object v6, v0, v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 609
    const-string v6, "rx"

    aget-object v7, v0, v12

    invoke-virtual {v2, v6, v7}, Landroid/net/NetworkCapabilities$Flow;->putFlowFilters(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_9
    invoke-direct {p0, v2, v5}, Lcom/android/server/ePDGConnection;->setFlowState(Landroid/net/NetworkCapabilities$Flow;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQoSChanged : Flow Updated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 615
    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    invoke-direct {p0, v2}, Lcom/android/server/ePDGConnection;->notifyQoSInfo(Landroid/net/NetworkCapabilities$Flow;)V

    goto/16 :goto_2

    .line 620
    :pswitch_2
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities$Flow;->clearFlow()V

    .line 621
    iget-object v6, p0, Lcom/android/server/ePDGConnection;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v6, v4}, Landroid/net/NetworkCapabilities;->removeFlow(I)Z

    .line 625
    :pswitch_3
    invoke-direct {p0, v2, v5}, Lcom/android/server/ePDGConnection;->setFlowState(Landroid/net/NetworkCapabilities$Flow;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQoSChanged : Flow Updated : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 628
    invoke-direct {p0, v2}, Lcom/android/server/ePDGConnection;->notifyQoSInfo(Landroid/net/NetworkCapabilities$Flow;)V

    goto/16 :goto_2

    .line 588
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pcsch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public resetCBLooper(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "onCompletedMsg"    # Landroid/os/Message;
    .param p2, "onLostMsg"    # Landroid/os/Message;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/ePDGConnection;->mCompletedMsg:Landroid/os/Message;

    .line 389
    iput-object p2, p0, Lcom/android/server/ePDGConnection;->mLostMsg:Landroid/os/Message;

    .line 390
    return-void
.end method

.method public setCallStatus(I)V
    .locals 1
    .param p1, "callstatus"    # I

    .prologue
    .line 730
    const v0, 0x40015

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 731
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "setcon"    # Landroid/content/Context;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/server/ePDGConnection;->mContext:Landroid/content/Context;

    .line 340
    return-void
.end method

.method public setEPDGAddrByTestApp(ZLjava/lang/String;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "ePDGAddr"    # Ljava/lang/String;

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/android/server/ePDGConnection;->ePDGAddrStaticFlag:Z

    .line 913
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->ePDGAddrForTestApp:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 914
    return-void
.end method

.method public setEPDGForIODT(Ljava/lang/String;)I
    .locals 1
    .param p1, "GWAddr"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setEPDGGWAddr([Ljava/lang/String;)I
    .locals 4
    .param p1, "GWAddr"    # [Ljava/lang/String;

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    const/4 v2, 0x0

    .line 370
    :goto_0
    return v2

    .line 366
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "s":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/android/server/ePDGConnection;->mGWList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0
.end method

.method public setFQDNByTestApp(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 908
    iput-boolean p1, p0, Lcom/android/server/ePDGConnection;->FQDNStaticFlag:Z

    .line 909
    iput-object p2, p0, Lcom/android/server/ePDGConnection;->FQDNForTestApp:Ljava/lang/String;

    .line 910
    return-void
.end method

.method public setManagerStatus(Z)V
    .locals 1
    .param p1, "setvalue"    # Z

    .prologue
    .line 700
    if-eqz p1, :cond_0

    .line 702
    const v0, 0x40004

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(I)V

    .line 709
    :goto_0
    return-void

    .line 706
    :cond_0
    const v0, 0x40003

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(I)V

    goto :goto_0
.end method

.method public setNetworkstate(II)V
    .locals 1
    .param p1, "mobileState"    # I
    .param p2, "mobileTech"    # I

    .prologue
    .line 719
    const v0, 0x40011

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/ePDGConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 720
    return-void
.end method

.method public setPCSInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pcs"    # Ljava/lang/String;

    .prologue
    .line 402
    const v0, 0x4000e

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ePDGConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public setQosInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "qos"    # Ljava/lang/String;

    .prologue
    .line 396
    const v0, 0x4000f

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ePDGConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public setWFCPreferChange(I)V
    .locals 1
    .param p1, "prefer"    # I

    .prologue
    .line 725
    const v0, 0x40014

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 726
    return-void
.end method

.method public setWFCsettingChange(I)V
    .locals 1
    .param p1, "isWFCEnable"    # I

    .prologue
    .line 735
    const v0, 0x40016

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 736
    return-void
.end method

.method public setWIFIStatus(ZI)V
    .locals 1
    .param p1, "setvalue"    # Z
    .param p2, "detail_status"    # I

    .prologue
    .line 797
    if-eqz p1, :cond_0

    .line 799
    const v0, 0x40024

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    const v0, 0x40001

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWIFIStatus(ZZ)V
    .locals 1
    .param p1, "setvalue"    # Z
    .param p2, "isgood"    # Z

    .prologue
    .line 778
    if-eqz p1, :cond_1

    .line 780
    iget v0, p0, Lcom/android/server/ePDGConnection;->mFid:I

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 782
    const v0, 0x4000b

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(I)V

    .line 793
    :goto_0
    return-void

    .line 786
    :cond_0
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(I)V

    goto :goto_0

    .line 791
    :cond_1
    const v0, 0x40001

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(I)V

    goto :goto_0
.end method

.method public setePDGsetprefTest(Ljava/lang/String;I)V
    .locals 8
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "data_pref"    # I

    .prologue
    const-wide/16 v6, 0xfa0

    const/4 v4, 0x1

    const v3, 0x40021

    .line 955
    iget v1, p0, Lcom/android/server/ePDGConnection;->currentPref:I

    if-ne v1, p2, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 961
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] data_perf is changed so change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 963
    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    if-nez v1, :cond_1

    .line 965
    const-string v1, "Jphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ILGTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ILGTelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    if-nez v1, :cond_2

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] pref change cause mLGphoneinterface is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 978
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ePDGConnection;->mLGPhoneService:Lcom/android/internal/telephony/ILGTelephony;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ILGTelephony;->setePDGsetprefTest(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 980
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->ispreferchangeFailcausenull:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/ePDGConnection;->ispreferchangeFailcausenull:Z

    if-eqz v1, :cond_4

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] pref change cause apn is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->ispreferchangeFailcausenull:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ePDG] setePDGsetprefTest RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 997
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    iput p2, p0, Lcom/android/server/ePDGConnection;->currentPref:I

    .line 999
    iget-boolean v1, p0, Lcom/android/server/ePDGConnection;->isChangingRAT:Z

    if-eqz v1, :cond_5

    .line 1001
    invoke-virtual {p0, v3}, Lcom/android/server/ePDGConnection;->removeMessages(I)V

    .line 1002
    invoke-virtual {p0, v3}, Lcom/android/server/ePDGConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/server/ePDGConnection;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 1006
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/ePDGConnection;->isChangingRAT:Z

    .line 1007
    invoke-virtual {p0, v3}, Lcom/android/server/ePDGConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1, v6, v7}, Lcom/android/server/ePDGConnection;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0
.end method

.method public setinitPrichange(I)V
    .locals 1
    .param p1, "privalue"    # I

    .prologue
    .line 714
    const v0, 0x40010

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ePDGConnection;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 715
    return-void
.end method

.method public setinitialvalue(IIIZZII)V
    .locals 3
    .param p1, "WFC_setting"    # I
    .param p2, "wfcprefer"    # I
    .param p3, "call_status"    # I
    .param p4, "isWifiConnected"    # Z
    .param p5, "isgood"    # Z
    .param p6, "mobileState"    # I
    .param p7, "mobileTech"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 741
    iput p6, p0, Lcom/android/server/ePDGConnection;->mobileservicestate:I

    .line 742
    iput p7, p0, Lcom/android/server/ePDGConnection;->mobileRadioTech:I

    .line 744
    if-nez p6, :cond_0

    const/16 v0, 0xe

    if-ne p7, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/ePDGConnection;->isMobileavail:Z

    .line 747
    iput p2, p0, Lcom/android/server/ePDGConnection;->WFCPrefer:I

    .line 749
    if-eq p1, v1, :cond_1

    .line 751
    iput-boolean v2, p0, Lcom/android/server/ePDGConnection;->WFCSettings:Z

    .line 758
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setinitialvalue, WFC settings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/ePDGConnection;->WFCSettings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wfcprefer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ePDGConnection;->WFCPrefer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " call status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isWiFi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGood"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMobileava"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/ePDGConnection;->isMobileavail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->log(Ljava/lang/String;)V

    .line 761
    iput p3, p0, Lcom/android/server/ePDGConnection;->CallState:I

    .line 763
    iput-boolean p4, p0, Lcom/android/server/ePDGConnection;->isWiFi:Z

    .line 764
    iput-boolean p5, p0, Lcom/android/server/ePDGConnection;->isGoodPacket:Z

    .line 766
    const v0, 0x40020

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ePDGConnection;->sendMessage(Landroid/os/Message;)V

    .line 767
    return-void

    :cond_0
    move v0, v2

    .line 744
    goto :goto_0

    .line 755
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/ePDGConnection;->WFCSettings:Z

    goto :goto_1
.end method
