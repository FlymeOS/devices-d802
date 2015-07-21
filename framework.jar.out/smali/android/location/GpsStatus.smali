.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Landroid/location/GpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v1, 0xff

    new-array v1, v1, [Landroid/location/GpsSatellite;

    iput-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    .line 67
    new-instance v1, Landroid/location/GpsStatus$1;

    invoke-direct {v1, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v1, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    new-instance v2, Landroid/location/GpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Landroid/location/GpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;
    .locals 1
    .param p0, "x0"    # Landroid/location/GpsStatus;

    .prologue
    .line 27
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    return-object v0
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    .prologue
    .line 237
    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[F[I[I[J)V
    .locals 18
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "GpsMasks"    # [I
    .param p7, "GloMasks"    # [I
    .param p8, "BdsMasks"    # [J

    .prologue
    .line 147
    monitor-enter p0

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v11, v11

    if-ge v6, v11, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v11, v11, v6

    const/4 v14, 0x0

    iput-boolean v14, v11, Landroid/location/GpsSatellite;->mValid:Z

    .line 147
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_0
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v6, v0, :cond_8

    .line 152
    aget v11, p2, v6

    add-int/lit8 v7, v11, -0x1

    .line 154
    .local v7, "prn":I
    const-wide/16 v8, 0x0

    .line 155
    .local v8, "prnShift":J
    const-wide/16 v4, 0x0

    .line 156
    .local v4, "ephemerisMask":J
    const-wide/16 v2, 0x0

    .line 157
    .local v2, "almanacMask":J
    const-wide/16 v12, 0x0

    .line 159
    .local v12, "usedInFixMask":J
    if-ltz v7, :cond_3

    const/16 v11, 0x20

    if-ge v7, v11, :cond_3

    .line 160
    const/4 v11, 0x1

    shl-int/2addr v11, v7

    int-to-long v8, v11

    .line 161
    const/4 v11, 0x0

    aget v11, p6, v11

    int-to-long v4, v11

    .line 162
    const/4 v11, 0x1

    aget v11, p6, v11

    int-to-long v2, v11

    .line 163
    const/4 v11, 0x2

    aget v11, p6, v11

    int-to-long v12, v11

    .line 178
    :cond_1
    :goto_2
    if-ltz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v11, v11

    if-ge v7, v11, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v10, v11, v7

    .line 181
    .local v10, "satellite":Landroid/location/GpsSatellite;
    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/location/GpsSatellite;->mValid:Z

    .line 182
    aget v11, p3, v6

    iput v11, v10, Landroid/location/GpsSatellite;->mSnr:F

    .line 183
    aget v11, p4, v6

    iput v11, v10, Landroid/location/GpsSatellite;->mElevation:F

    .line 184
    aget v11, p5, v6

    iput v11, v10, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 185
    and-long v14, v4, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, v10, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 186
    and-long v14, v2, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, v10, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 187
    and-long v14, v12, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_5
    iput-boolean v11, v10, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 151
    .end local v10    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 164
    :cond_3
    const/16 v11, 0x40

    if-lt v7, v11, :cond_4

    const/16 v11, 0x60

    if-ge v7, v11, :cond_4

    .line 165
    const/4 v11, 0x1

    add-int/lit8 v14, v7, -0x40

    shl-int/2addr v11, v14

    int-to-long v8, v11

    .line 166
    const/4 v11, 0x0

    aget v11, p7, v11

    int-to-long v4, v11

    .line 167
    const/4 v11, 0x1

    aget v11, p7, v11

    int-to-long v2, v11

    .line 168
    const/4 v11, 0x2

    aget v11, p7, v11

    int-to-long v12, v11

    goto :goto_2

    .line 170
    :cond_4
    const/16 v11, 0xc8

    if-lt v7, v11, :cond_1

    const/16 v11, 0xe8

    if-ge v7, v11, :cond_1

    .line 171
    const/4 v11, 0x1

    add-int/lit16 v14, v7, -0xc8

    shl-int/2addr v11, v14

    int-to-long v8, v11

    .line 172
    const/4 v11, 0x0

    aget-wide v4, p8, v11

    .line 173
    const/4 v11, 0x1

    aget-wide v2, p8, v11

    .line 174
    const/4 v11, 0x2

    aget-wide v12, p8, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 185
    .restart local v10    # "satellite":Landroid/location/GpsSatellite;
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 186
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 187
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 190
    .end local v2    # "almanacMask":J
    .end local v4    # "ephemerisMask":J
    .end local v7    # "prn":I
    .end local v8    # "prnShift":J
    .end local v10    # "satellite":Landroid/location/GpsSatellite;
    .end local v12    # "usedInFixMask":J
    :cond_8
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .locals 3
    .param p1, "status"    # Landroid/location/GpsStatus;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v1

    iput v1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    .prologue
    .line 207
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 208
    return-void
.end method
