.class public interface abstract Lcom/lge/wifi/extension/ILgWifiMonitorHelper;
.super Ljava/lang/Object;
.source "ILgWifiMonitorHelper.java"


# static fields
.field public static final BASE:I = 0x24000

.field public static final HS20_ANQP_3GPP_CONNECT_EVENT:I = 0x2404e

.field public static final HS20_ANQP_FETCH_START_EVENT:I = 0x2404a

.field public static final HS20_ANQP_FETCH_SUCCESS_EVENT:I = 0x2404b

.field public static final HS20_ANQP_RC_CONNECT_EVENT:I = 0x2404f

.field public static final HS20_ANQP_RX_DATA_EVENT:I = 0x2404c

.field public static final HS20_ANQP_TLS_CONNECT_EVENT:I = 0x24050

.field public static final HS20_AP_EVENT:I = 0x24047

.field public static final HS20_GAS_RESP_INFO_EVENT:I = 0x24049

.field public static final HS20_NO_MATCH_EVENT:I = 0x24048

.field public static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_RX_DATA_EVENT:I = 0x2404d

.field public static final INTERWORKING_PREFIX_STR:Ljava/lang/String; = "INTERWORKING-"

.field public static final WAPI_AUTHENTICATION_FAILURE_EVENT:I = 0x24012

.field public static final WAPI_CERTIFICATION_FAILURE_EVENT:I = 0x24013

.field public static final WIFI_AUTO_CONNECT_EVENT:I = 0x24011


# virtual methods
.method public abstract convertEapEventToLge(Ljava/lang/String;)I
.end method

.method public abstract handleConnectPolicyEvent(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end method

.method public abstract handleInterworkingEvent(Ljava/lang/String;Lcom/android/internal/util/StateMachine;)V
.end method

.method public abstract handleLgeEvent(ILjava/lang/String;)V
.end method

.method public abstract handleWAPIEvent(Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
.end method

.method public abstract updateNetworkID(I)V
.end method
