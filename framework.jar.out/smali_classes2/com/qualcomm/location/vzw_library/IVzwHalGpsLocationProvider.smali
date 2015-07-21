.class public abstract Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;
.super Ljava/lang/Object;
.source "IVzwHalGpsLocationProvider.java"


# static fields
.field public static final ENGINE_STATUS_ENGINE_OFF:I = 0x4

.field public static final ENGINE_STATUS_ENGINE_ON:I = 0x3

.field public static final ENGINE_STATUS_NONE:I = 0x0

.field public static final ENGINE_STATUS_SESSION_BEGIN:I = 0x1

.field public static final ENGINE_STATUS_SESSION_END:I = 0x2

.field public static final GPS_EVENT_AGPS_AUTH_DNS_FAIL:I = 0x6

.field public static final GPS_EVENT_AGPS_AUTH_EXPIRED:I = 0x5

.field public static final GPS_EVENT_AGPS_AUTH_FAIL:I = 0x3

.field public static final GPS_EVENT_AGPS_AUTH_PASS:I = 0x2

.field public static final GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE:I = 0x4

.field public static final GPS_EVENT_DEVICE_STATUS:I = 0x19

.field public static final GPS_EVENT_ESTABLISH_CONNECTION_FAILED:I = 0x1

.field public static final GPS_EVENT_FIRST_FIX:I = 0xa

.field public static final GPS_EVENT_FIX_REQUESTED:I = 0xc

.field public static final GPS_EVENT_FIX_REQ_FAIL:I = 0xb

.field public static final GPS_EVENT_GENERAL_AGPS_FAILURE:I = 0xd

.field public static final GPS_EVENT_GENERAL_FAILURE:I = 0xe

.field public static final GPS_EVENT_INIT_CONFIG_NOT_PROVIDED:I = 0xf

.field public static final GPS_EVENT_INIT_FAIL:I = 0x7

.field public static final GPS_EVENT_INIT_IN_PROGRESS:I = 0x65

.field public static final GPS_EVENT_INIT_PASS:I = 0x8

.field public static final GPS_EVENT_INIT_SATELLITE_STATUS:I = 0x11

.field public static final GPS_EVENT_LOCATION_AVAILABLE:I = 0x9

.field public static final GPS_EVENT_LOCATION_REQUEST_TIMEOUT:I = 0x10

.field public static final GPS_EVENT_SECURITY_FAILED:I = 0x12

.field public static final GPS_EVENT_SET_FIX_MODE_FAIL:I = 0x13

.field public static final GPS_EVENT_SET_FIX_RATE_FAIL:I = 0x14

.field public static final GPS_EVENT_SET_GPS_PERFORMANCE_FAIL:I = 0x15

.field public static final GPS_EVENT_SET_PDE_FAIL:I = 0x16

.field public static final GPS_EVENT_STARTED:I = 0x17

.field public static final GPS_EVENT_STOPPED:I = 0x18

.field public static final GPS_EVENT_TRACKING_SESSION_TIMEDOUT:I = 0x131

.field public static final GPS_POSITION_MODE_AFLT:I = 0x3

.field public static final GPS_POSITION_MODE_CID:I = 0x7

.field public static final GPS_POSITION_MODE_ECID:I = 0x8

.field public static final GPS_POSITION_MODE_HYBRID:I = 0xb

.field public static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x0

.field public static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GPS_POSITION_MODE_OPTIMAL_ACCURACY:I = 0x5

.field public static final GPS_POSITION_MODE_OPTIMAL_DATA:I = 0x6

.field public static final GPS_POSITION_MODE_OPTIMAL_SPEED:I = 0x4

.field public static final GPS_POSITION_MODE_STANDALONE:I = 0x2

.field public static final GPS_POSITION_MODE_WIFI_MSA:I = 0x9

.field public static final GPS_POSITION_MODE_WIFI_MSB:I = 0xa

.field public static final VZW_GPS_LOCATION_PROVIDER_NAME:Ljava/lang/String; = "vzw_gps"

.field private static mImp:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->mImp:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->mImp:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    invoke-direct {v0}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;-><init>()V

    sput-object v0, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->mImp:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    .line 114
    :cond_0
    sget-object v0, Lcom/qualcomm/location/vzw_library/IVzwHalGpsLocationProvider;->mImp:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    return-object v0
.end method


# virtual methods
.method public abstract getCredentials()Ljava/lang/String;
.end method

.method public abstract getGpsResetType()I
.end method

.method public abstract getLocSrvAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getPdeAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract init(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
.end method

.method public abstract isSupported()Z
.end method

.method public abstract setCredentials(Ljava/lang/String;)V
.end method

.method public abstract setGpsReset(I)Ljava/lang/Boolean;
.end method

.method public abstract setLocSrvAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract setPdeAddress(Ljava/net/InetSocketAddress;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z
.end method

.method public abstract stop()Z
.end method
