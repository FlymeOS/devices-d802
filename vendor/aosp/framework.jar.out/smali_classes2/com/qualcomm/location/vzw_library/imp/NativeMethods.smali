.class public Lcom/qualcomm/location/vzw_library/imp/NativeMethods;
.super Ljava/lang/Object;
.source "NativeMethods.java"

# interfaces
.implements Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/vzw_library/imp/NativeMethods$1;,
        Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;
    }
.end annotation


# static fields
.field private static final ALMANAC_MASK:I = 0x1

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_SV_STATUS_VALID_ALM_MASK:I = 0x4

.field private static final GPS_SV_STATUS_VALID_EPH_MASK:I = 0x2

.field private static final GPS_SV_STATUS_VALID_HDOP:I = 0x20

.field private static final GPS_SV_STATUS_VALID_PDOP:I = 0x10

.field private static final GPS_SV_STATUS_VALID_SV_LIST:I = 0x1

.field private static final GPS_SV_STATUS_VALID_USE_MASK:I = 0x8

.field private static final GPS_SV_STATUS_VALID_VDOP:I = 0x40

.field private static final INDEX_HDOP:I = 0x1

.field private static final INDEX_PDOP:I = 0x0

.field private static final INDEX_SV_VALID_MASK:I = 0x0

.field private static final INDEX_VDOP:I = 0x2

.field private static final MAX_AGE_SV_REPORT_MSEC:J = 0xbb8L

.field private static final MAX_SVS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "VzwHal.Native"

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VZW_GPS_LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final VZW_GPS_LOCATION_HAS_ALTITUDE_SEA_LEVEL:I = 0x100

.field private static final VZW_GPS_LOCATION_HAS_BEARING:I = 0x8

.field private static final VZW_GPS_LOCATION_HAS_CIRC_ACCURACY:I = 0x10

.field private static final VZW_GPS_LOCATION_HAS_CONFIDENCE:I = 0x800

.field private static final VZW_GPS_LOCATION_HAS_DOP:I = 0x4000

.field private static final VZW_GPS_LOCATION_HAS_ELLI_ACCURACY:I = 0x200

.field private static final VZW_GPS_LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final VZW_GPS_LOCATION_HAS_MAGNETIC_VARIATION:I = 0x2000

.field private static final VZW_GPS_LOCATION_HAS_SPEED:I = 0x4

.field private static final VZW_GPS_LOCATION_HAS_TIMESTAMP:I = 0x1000

.field private static final VZW_GPS_LOCATION_HAS_VERT_ACCURACY:I = 0x400

.field private static mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;


# instance fields
.field private DEBUG:Z

.field private VERBOSE:Z

.field private lastRequestedFixMode:I

.field private mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

.field private mCurrentSessionId:I

.field private mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

.field private mSessionIdIsValid:Z

.field private mSnrs:[F

.field private mSvAzimuths:[F

.field private mSvDops:[F

.field private mSvElevations:[F

.field private mSvFlags:[I

.field private mSvInViewAzimuthTrimed:[F

.field private mSvInViewElevationTrimed:[F

.field private mSvInViewSnrTrimed:[F

.field private mSvInViewTrimed:[I

.field private mSvMasks:[I

.field private mSvs:[I

.field timeLastSvReport:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "VzwHal.Native"

    const-string v1, "loading native library"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "loc_ext"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 105
    const-string v0, "VzwHal.Native"

    const-string v1, "jni class init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->class_init_native()V

    .line 108
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/16 v1, 0x20

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->DEBUG:Z

    .line 32
    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    .line 56
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    .line 57
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    .line 58
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    .line 59
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    .line 60
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 72
    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 114
    const-string v0, "VzwHal.Native"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->DEBUG:Z

    .line 115
    const-string v0, "VzwHal.Native"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_wait_for_event()V

    return-void
.end method

.method private static native class_init_native()V
.end method

.method private copyArrayPartial([FI)[F
    .locals 3
    .param p1, "array"    # [F
    .param p2, "length"    # I

    .prologue
    .line 520
    new-array v1, p2, [F

    .line 521
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 523
    aget v2, p1, v0

    aput v2, v1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    return-object v1
.end method

.method private copyArrayPartial([II)[I
    .locals 3
    .param p1, "array"    # [I
    .param p2, "length"    # I

    .prologue
    .line 510
    new-array v1, p2, [I

    .line 511
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 513
    aget v2, p1, v0

    aput v2, v1, v0

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_0
    return-object v1
.end method

.method private countNumFirstNonZeroPrn([I)I
    .locals 2
    .param p1, "svs"    # [I

    .prologue
    .line 498
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 500
    aget v1, p1, v0

    if-nez v1, :cond_0

    .line 505
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 498
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    array-length v0, p1

    goto :goto_1
.end method

.method private fixCriteria(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)Z
    .locals 1
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public static getInstance()Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    invoke-direct {v0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;-><init>()V

    sput-object v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    .line 131
    :cond_0
    sget-object v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mInstance:Lcom/qualcomm/location/vzw_library/imp/NativeMethods;

    return-object v0
.end method

.method private getNumOfSvs(I)I
    .locals 4
    .param p1, "mask"    # I

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 469
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 471
    add-int/lit8 v0, v0, 0x1

    .line 475
    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_1
    return v0
.end method

.method private getPrnArray(I)[I
    .locals 5
    .param p1, "mask"    # I

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getNumOfSvs(I)I

    move-result v3

    new-array v0, v3, [I

    .line 482
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 483
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "prn":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 485
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 487
    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    .line 488
    add-int/lit8 v1, v1, 0x1

    .line 492
    :cond_0
    ushr-int/lit8 p1, p1, 0x1

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_1
    return-object v0
.end method

.method private native native_cleanup()V
.end method

.method private native native_disable()V
.end method

.method private native native_init()Z
.end method

.method private native native_read_sv_status([I[I[F[F[F[I[F)I
.end method

.method private native native_reset_gps(I)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_start(IZIILjava/lang/String;)Z
.end method

.method private native native_stop()Z
.end method

.method private native native_wait_for_event()V
.end method

.method private reportLocation(IDDDDFFFFFFFFFFFFJ)V
    .locals 10
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "altitude_sea_level"    # D
    .param p10, "speed"    # F
    .param p11, "bearing"    # F
    .param p12, "accuracy_hor_circular"    # F
    .param p13, "accuracy_hor_ellipse_semi_major"    # F
    .param p14, "accuracy_hor_ellipse_semi_minor"    # F
    .param p15, "accuracy_hor_ellipse_angle"    # F
    .param p16, "accuracy_vertical"    # F
    .param p17, "confidence_horizontal"    # F
    .param p18, "magnetic_variation"    # F
    .param p19, "pdop"    # F
    .param p20, "hdop"    # F
    .param p21, "vdop"    # F
    .param p22, "timestamp"    # J

    .prologue
    .line 287
    iget-boolean v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v6, :cond_0

    const-string v6, "VzwHal.Native"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportLocation-lat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lon: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "alt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "accuracy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    new-instance v2, Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    invoke-direct {v2}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;-><init>()V

    .line 291
    .local v2, "location":Lcom/qualcomm/location/vzw_library/VzwHalLocation;
    invoke-direct {p0, v2}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->setSessionIdIfValid(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "mask":I
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_1

    .line 296
    invoke-virtual {v2, p2, p3}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setLatitude(D)V

    .line 297
    invoke-virtual {v2, p4, p5}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setLongitude(D)V

    .line 298
    or-int/lit8 v3, v3, 0x3

    .line 301
    :cond_1
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_2

    .line 304
    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setAltitude(D)V

    .line 307
    :cond_2
    and-int/lit16 v6, p1, 0x400

    if-eqz v6, :cond_3

    .line 309
    move/from16 v0, p16

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setVerticalAccuracy(F)V

    .line 310
    or-int/lit16 v3, v3, 0x80

    .line 313
    :cond_3
    and-int/lit16 v6, p1, 0x100

    if-eqz v6, :cond_4

    .line 315
    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setAltitudeWrtSeaLevel(D)V

    .line 316
    or-int/lit8 v3, v3, 0x4

    .line 319
    :cond_4
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_5

    .line 322
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSpeed(F)V

    .line 325
    :cond_5
    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_6

    .line 328
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setBearing(F)V

    .line 331
    :cond_6
    and-int/lit8 v6, p1, 0x10

    if-eqz v6, :cond_7

    .line 334
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setAccuracy(F)V

    .line 337
    :cond_7
    and-int/lit16 v6, p1, 0x200

    if-eqz v6, :cond_8

    .line 339
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMajorAxis(F)V

    .line 340
    move/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMajorAxisAngle(F)V

    .line 341
    move/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMinorAxis(F)V

    .line 343
    or-int/lit8 v3, v3, 0x40

    .line 346
    :cond_8
    and-int/lit16 v6, p1, 0x800

    if-eqz v6, :cond_9

    .line 348
    move/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setHorizontalConfidence(F)V

    .line 350
    or-int/lit16 v3, v3, 0x100

    .line 353
    :cond_9
    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_a

    .line 356
    move-wide/from16 v0, p22

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setTime(J)V

    .line 360
    const/high16 v6, 0x10000

    or-int/2addr v3, v6

    .line 363
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->timeLastSvReport:J

    sub-long v4, v6, v8

    .line 364
    .local v4, "time_delta":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_17

    const-wide/16 v6, 0xbb8

    cmp-long v6, v4, v6

    if-gtz v6, :cond_17

    .line 371
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_b

    .line 373
    or-int/lit8 v3, v3, 0x8

    .line 374
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setPositionDilutionOfPrecision(F)V

    .line 377
    :cond_b
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_c

    .line 379
    or-int/lit8 v3, v3, 0x10

    .line 380
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setHorizontalDilutionOfPrecision(F)V

    .line 383
    :cond_c
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_d

    .line 385
    or-int/lit8 v3, v3, 0x20

    .line 386
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setVerticalDilutionOfPrecision(F)V

    .line 389
    :cond_d
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_e

    .line 391
    or-int/lit16 v3, v3, 0x200

    .line 392
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-direct {p0, v6}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getPrnArray(I)[I

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesUsedPRN([I)V

    .line 395
    :cond_e
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    if-eqz v6, :cond_f

    .line 396
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewPRNs([I)V

    .line 397
    or-int/lit16 v3, v3, 0x400

    .line 399
    :cond_f
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    if-eqz v6, :cond_10

    .line 400
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewAzimuth([F)V

    .line 401
    or-int/lit16 v3, v3, 0x1000

    .line 403
    :cond_10
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    if-eqz v6, :cond_11

    .line 404
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewElevation([F)V

    .line 405
    or-int/lit16 v3, v3, 0x800

    .line 407
    :cond_11
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    if-eqz v6, :cond_12

    .line 408
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSatellitesInViewSignalToNoiseRatio([F)V

    .line 409
    or-int/lit16 v3, v3, 0x2000

    .line 418
    :cond_12
    :goto_0
    iget v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    if-ltz v6, :cond_13

    .line 419
    iget v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    invoke-virtual {v2, v6}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setFixMode(I)V

    .line 420
    or-int/lit16 v3, v3, 0x4000

    .line 423
    :cond_13
    and-int/lit16 v6, p1, 0x2000

    if-eqz v6, :cond_14

    .line 425
    move/from16 v0, p18

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setMagneticVariation(F)V

    .line 426
    const v6, 0x8000

    or-int/2addr v3, v6

    .line 429
    :cond_14
    and-int/lit16 v6, p1, 0x4000

    if-eqz v6, :cond_15

    .line 431
    or-int/lit8 v3, v3, 0x8

    .line 432
    move/from16 v0, p19

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setPositionDilutionOfPrecision(F)V

    .line 433
    or-int/lit8 v3, v3, 0x10

    .line 434
    move/from16 v0, p20

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setHorizontalDilutionOfPrecision(F)V

    .line 435
    or-int/lit8 v3, v3, 0x20

    .line 436
    move/from16 v0, p21

    invoke-virtual {v2, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setVerticalDilutionOfPrecision(F)V

    .line 439
    :cond_15
    invoke-virtual {v2, v3}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setValidFieldMask(I)V

    .line 446
    .end local v3    # "mask":I
    .end local v4    # "time_delta":J
    :goto_1
    if-eqz v2, :cond_16

    .line 448
    iget-object v6, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v6, v2}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V

    .line 450
    :cond_16
    return-void

    .line 414
    .restart local v3    # "mask":I
    .restart local v4    # "time_delta":J
    :cond_17
    const-string v6, "VzwHal.Native"

    const-string v7, "no fresh SV report to populate SV info in location report"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    .end local v3    # "mask":I
    .end local v4    # "time_delta":J
    :cond_18
    const-string v6, "VzwHal.Native"

    const-string v7, "no active session. drop fix report"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private reportStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHal.Native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportStatus-status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportEngineStatus(I)V

    .line 456
    return-void
.end method

.method private reportSvStatus()V
    .locals 18

    .prologue
    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->timeLastSvReport:J

    .line 538
    new-instance v15, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;

    invoke-direct {v15}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;-><init>()V

    .line 542
    .local v15, "svInfo":Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    array-length v2, v2

    if-ge v10, v2, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    const/4 v3, 0x0

    aput v3, v2, v10

    .line 542
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 545
    :cond_0
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    const/4 v3, 0x0

    aput v3, v2, v10

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    const/4 v3, 0x0

    aput v3, v2, v10

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    const/4 v3, 0x0

    aput v3, v2, v10

    .line 549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    const/4 v3, 0x0

    aput v3, v2, v10

    .line 545
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 551
    :cond_1
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    array-length v2, v2

    if-ge v10, v2, :cond_2

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v3, 0x0

    aput v3, v2, v10

    .line 551
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 554
    :cond_2
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    array-length v2, v2

    if-ge v10, v2, :cond_3

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    const/4 v3, 0x0

    aput v3, v2, v10

    .line 554
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 558
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvFlags:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvDops:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_read_sv_status([I[I[F[F[F[I[F)I

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v3, 0x0

    aget v13, v2, v3

    .line 561
    .local v13, "mask_sv_with_ephemris":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v3, 0x1

    aget v12, v2, v3

    .line 564
    .local v12, "mask_sv_with_almanac":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getPrnArray(I)[I

    move-result-object v17

    .line 565
    .local v17, "svs_with_ephemeris":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvMasks:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->getPrnArray(I)[I

    move-result-object v16

    .line 568
    .local v16, "svs_with_almanac":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->countNumFirstNonZeroPrn([I)I

    move-result v14

    .line 569
    .local v14, "numSvInView":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvs:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSnrs:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([FI)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvElevations:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([FI)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvAzimuths:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->copyArrayPartial([FI)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    array-length v2, v2

    invoke-virtual {v15, v2}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setNumSatellitesInView(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewAzimuthTrimed:[F

    invoke-virtual {v15, v2}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewAzimuth([F)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewElevationTrimed:[F

    invoke-virtual {v15, v2}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewElevation([F)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewTrimed:[I

    invoke-virtual {v15, v2}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewPRNs([I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSvInViewSnrTrimed:[F

    invoke-virtual {v15, v2}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesInViewSignalToNoiseRatio([F)V

    .line 579
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesWithEphemeris([I)V

    .line 580
    invoke-virtual/range {v15 .. v16}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setSatellitesWithAlmanac([I)V

    .line 582
    const/16 v11, 0x7f

    .line 590
    .local v11, "mask":I
    invoke-virtual {v15, v11}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->setValidFieldMask(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v2, v15}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportSvStatus(Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;)V

    .line 593
    return-void
.end method

.method private reportVzwEvent(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHal.Native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportVzwEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportGpsStatus(I)V

    .line 463
    return-void
.end method

.method private declared-synchronized setSessionIdIfValid(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)Z
    .locals 1
    .param p1, "location"    # Lcom/qualcomm/location/vzw_library/VzwHalLocation;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCurrentSessionId:I

    invoke-virtual {p1, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setSessionId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const/4 v0, 0x1

    .line 246
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    if-eqz v0, :cond_1

    .line 142
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "VzwHal.Native"

    const-string v1, "killing event thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->fgTerminate:Z

    .line 144
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->interrupt()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    .line 148
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 150
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_disable()V

    .line 151
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_cleanup()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->cleanup()V

    .line 136
    return-void
.end method

.method public declared-synchronized init()Z
    .locals 4

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v2, :cond_0

    const-string v2, "VzwHal.Native"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    new-instance v2, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;-><init>(Lcom/qualcomm/location/vzw_library/imp/NativeMethods;Lcom/qualcomm/location/vzw_library/imp/NativeMethods$1;)V

    iput-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    .line 161
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mEventThread:Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;

    invoke-virtual {v2}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods$EventThread;->start()V

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 164
    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 166
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v2, :cond_1

    const-string v2, "VzwHal.Native"

    const-string v3, "native init"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    const/4 v1, 0x0

    .line 170
    .local v1, "result":Z
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_init()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 177
    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->VERBOSE:Z

    if-eqz v2, :cond_2

    const-string v2, "VzwHal.Native"

    const-string v3, "native init done"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :cond_2
    monitor-exit p0

    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetGps(I)V
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_reset_gps(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCallback:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_agps_server(ILjava/lang/String;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_set_agps_server(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;ILjava/lang/String;)Z
    .locals 7
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p2, "sessionId"    # I
    .param p3, "credentials"    # Ljava/lang/String;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->fixCriteria(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 196
    iput p2, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mCurrentSessionId:I

    .line 198
    const/4 v6, 0x0

    .line 200
    .local v6, "result":Z
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getHintNextFixArriveInSec()I

    move-result v3

    .line 201
    .local v3, "time_to_next_fix_sec":I
    if-gez v3, :cond_0

    .line 205
    const/4 v3, 0x1

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getFixMode()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    .line 210
    iget v1, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalCriteria;->getMaximumResponseTime()I

    move-result v4

    const/4 v0, 0x2

    iget v5, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->lastRequestedFixMode:I

    if-ne v0, v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_start(IZIILjava/lang/String;)Z

    move-result v6

    .line 217
    if-nez v6, :cond_1

    .line 219
    const-string v0, "VzwHal.Native"

    const-string v1, "cannot start the location engine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v3    # "time_to_next_fix_sec":I
    .end local v6    # "result":Z
    :cond_1
    :goto_1
    monitor-exit p0

    return v6

    .restart local v3    # "time_to_next_fix_sec":I
    .restart local v6    # "result":Z
    :cond_2
    move-object v5, p3

    .line 210
    goto :goto_0

    .line 226
    .end local v3    # "time_to_next_fix_sec":I
    .end local v6    # "result":Z
    :cond_3
    :try_start_1
    const-string v0, "VzwHal.Native"

    const-string v1, "criteria is foobar"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    const/4 v6, 0x0

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()Z
    .locals 1

    .prologue
    .line 233
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->mSessionIdIsValid:Z

    .line 234
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/NativeMethods;->native_stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
