.class public Lcom/vzw/location/VzwGpsStatus;
.super Ljava/lang/Object;
.source "VzwGpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/VzwGpsStatus$NmeaListener;,
        Lcom/vzw/location/VzwGpsStatus$Listener;,
        Lcom/vzw/location/VzwGpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field public static final GPS_EVENT_AGPS_AUTH_DNS_FAIL:I = 0x6

.field public static final GPS_EVENT_AGPS_AUTH_EXPIRED:I = 0x5

.field public static final GPS_EVENT_AGPS_AUTH_FAIL:I = 0x3

.field public static final GPS_EVENT_AGPS_AUTH_PASS:I = 0x2

.field public static final GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE:I = 0x4

.field public static final GPS_EVENT_DEVICE_STATUS:I = 0x19

.field public static final GPS_EVENT_ESTABLISH_PDE_CONNECTION_FAILED:I = 0x1

.field public static final GPS_EVENT_FIRST_FIX:I = 0xa

.field public static final GPS_EVENT_FIX_REQUESTED:I = 0xc

.field public static final GPS_EVENT_FIX_REQ_FAIL:I = 0xb

.field public static final GPS_EVENT_GENERAL_AGPS_FAILURE:I = 0xd

.field public static final GPS_EVENT_GENERAL_FAILURE:I = 0xe

.field public static final GPS_EVENT_INIT_CONFIG_NOT_PROVIDED:I = 0xf

.field public static final GPS_EVENT_INIT_FAIL:I = 0x7

.field public static final GPS_EVENT_INIT_IN_PROGRESS:I = 0x65

.field public static final GPS_EVENT_INIT_PASS:I = 0x8

.field public static final GPS_EVENT_LOCATION_AVAILABLE:I = 0x9

.field public static final GPS_EVENT_LOCATION_REQUEST_TIMEDOUT:I = 0x10

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x11

.field public static final GPS_EVENT_SECURITY_FAILED:I = 0x12

.field public static final GPS_EVENT_SET_FIX_MODE_FAIL:I = 0x13

.field public static final GPS_EVENT_SET_FIX_RATE_FAIL:I = 0x14

.field public static final GPS_EVENT_SET_GPS_PERFORMANCE_FAIL:I = 0x15

.field public static final GPS_EVENT_SET_PDE_FAIL:I = 0x16

.field public static final GPS_EVENT_SMS_REGISTER_FAILED:I = 0x1a

.field public static final GPS_EVENT_STARTED:I = 0x17

.field public static final GPS_EVENT_STOPPED:I = 0x18

.field public static final GPS_EVENT_TRACKING_SESSION_TIMEDOUT:I = 0x131

.field private static final TAG:Ljava/lang/String; = "VzwGpsStatus"

.field static sLogStatusStrings:[Ljava/lang/String;


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 212
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GPS_EVENT_INVALID_MESSAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GPS_EVENT_ESTABLISH_PDE_CONNECTION_FAILED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GPS_EVENT_AGPS_AUTH_PASS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GPS_EVENT_AGPS_AUTH_FAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPS_EVENT_AGPS_AUTH_PDE_NOT_REACHABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPS_EVENT_AGPS_AUTH_EXPIRED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPS_EVENT_AGPS_AUTH_DNS_FAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPS_EVENT_INIT_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPS_EVENT_INIT_PASS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPS_EVENT_LOCATION_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPS_EVENT_FIRST_FIX"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPS_EVENT_FIX_REQ_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GPS_EVENT_FIX_REQUESTED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GPS_EVENT_GENERAL_AGPS_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPS_EVENT_GENERAL_FAILURE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "GPS_EVENT_INIT_CONFIG_NOT_PROVIDED"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "GPS_EVENT_LOCATION_REQUEST_TIMEDOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "GPS_EVENT_SATELLITE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "GPS_EVENT_SECURITY_FAILED"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "GPS_EVENT_SET_FIX_MODE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "GPS_EVENT_SET_FIX_RATE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "GPS_EVENT_SET_GPS_PERFORMANCE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "GPS_EVENT_SET_PDE_FAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "GPS_EVENT_STARTED"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "GPS_EVENT_STOPPED"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "GPS_EVENT_DEVICE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GPS_EVENT_INIT_IN_PROGRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "GPS_EVENT_TRACKING_SESSION_TIMEDOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "GPS_EVENT_SMS_REGISTER_FAILED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vzw/location/VzwGpsStatus;->sLogStatusStrings:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v1, 0x60

    new-array v1, v1, [Lcom/vzw/location/VzwGpsSatellite;

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    .line 79
    new-instance v1, Lcom/vzw/location/VzwGpsStatus$1;

    invoke-direct {v1, p0}, Lcom/vzw/location/VzwGpsStatus$1;-><init>(Lcom/vzw/location/VzwGpsStatus;)V

    iput-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    new-instance v2, Lcom/vzw/location/VzwGpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Lcom/vzw/location/VzwGpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwGpsStatus;)[Lcom/vzw/location/VzwGpsSatellite;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/VzwGpsStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    return-object v0
.end method

.method static getStringForStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 245
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/vzw/location/VzwGpsStatus;->sLogStatusStrings:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_STATUS_(STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/vzw/location/VzwGpsStatus;->sLogStatusStrings:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method dumpInfo()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 252
    const/4 v2, 0x0

    .line 253
    .local v2, "validSatelliteCount":I
    const/4 v1, 0x0

    .line 255
    .local v1, "usedInFixCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    if-ne v3, v4, :cond_0

    .line 258
    add-int/lit8 v2, v2, 0x1

    .line 259
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/vzw/location/VzwGpsSatellite;->dumpInfo()V

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    if-ne v3, v4, :cond_1

    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_2
    if-nez v2, :cond_3

    .line 268
    const-string v3, "VzwGpsStatus"

    const-string v4, "[dumpInfo] No Satellites used for this fix."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_1
    return-void

    .line 271
    :cond_3
    const-string v3, "VzwGpsStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dumpInfo] Total number of valid satellites = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v3, "VzwGpsStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dumpInfo] Total number of satellites used for this fix = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x60

    return v0
.end method

.method public getSatellitesInView()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwGpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vzw/location/VzwGpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(II[I[I[F[F[F)V
    .locals 5
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    const-string v2, "VzwGpsStatus"

    const-string v3, "[setStatus] Entering."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v2, "VzwGpsStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setStatus] SvCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | SvInViewCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | PRN Length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | PrnInView Length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | ElevInView Length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | AzimInView Length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | snrInView Length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v2, "VzwGpsStatus"

    const-string v3, "[setStatus] Resetting validity of all satellites to false."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    const-string v2, "VzwGpsStatus"

    const-string v3, "[setStatus] Start update satellites information."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget v3, p4, v0

    aget-object v1, v2, v3

    .line 178
    .local v1, "satellite":Lcom/vzw/location/VzwGpsSatellite;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mValid:Z

    .line 179
    aget v2, p7, v0

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mSnr:F

    .line 180
    aget v2, p5, v0

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mElevation:F

    .line 181
    aget v2, p6, v0

    iput v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mAzimuth:F

    .line 182
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 185
    .end local v1    # "satellite":Lcom/vzw/location/VzwGpsSatellite;
    :cond_1
    const-string v2, "VzwGpsStatus"

    const-string v3, "[setStatus] Update sv that is used in Fix"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_2

    .line 188
    iget-object v2, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget v3, p3, v0

    aget-object v1, v2, v3

    .line 189
    .restart local v1    # "satellite":Lcom/vzw/location/VzwGpsSatellite;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/vzw/location/VzwGpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 192
    .end local v1    # "satellite":Lcom/vzw/location/VzwGpsSatellite;
    :cond_2
    monitor-exit p0

    return-void

    .line 162
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setStatus(Lcom/vzw/location/VzwGpsStatus;)V
    .locals 3
    .param p1, "vzwGpsStatus"    # Lcom/vzw/location/VzwGpsStatus;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/vzw/location/VzwGpsStatus;->getTimeToFirstFix()I

    move-result v1

    iput v1, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/vzw/location/VzwGpsStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/vzw/location/VzwGpsSatellite;->setStatus(Lcom/vzw/location/VzwGpsSatellite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/vzw/location/VzwGpsStatus;->mTimeToFirstFix:I

    .line 144
    return-void
.end method
