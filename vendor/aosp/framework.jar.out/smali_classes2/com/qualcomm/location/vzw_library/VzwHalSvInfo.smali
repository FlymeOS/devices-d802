.class public Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;
.super Ljava/lang/Object;
.source "VzwHalSvInfo.java"


# static fields
.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x8

.field public static final GPS_VALID_SATELLITES_IN_VIEW_COUNT:I = 0x1

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x4

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x2

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x10

.field public static final GPS_VALID_SATELLITES_WITH_ALMANAC:I = 0x40

.field public static final GPS_VALID_SATELLITES_WITH_EPHEMERIS:I = 0x20

.field private static final MAX_SV_COUNT:I = 0x20


# instance fields
.field private NumSatellitesInView:I

.field private SatellitesInViewAzimuth:[F

.field private SatellitesInViewElevation:[F

.field private SatellitesInViewPRN:[I

.field private SatellitesInViewSignalToNoiseRatio:[F

.field private SatellitesWithAlmanac:[I

.field private SatellitesWithEphemeris:[I

.field private mValidFlagMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->mValidFlagMask:I

    return-void
.end method


# virtual methods
.method public getMaximumPossibleSatelliteCount()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x20

    return v0
.end method

.method public getNumSatellitesInView()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->NumSatellitesInView:I

    return v0
.end method

.method public getSatellitesInViewAzimuth()[F
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewAzimuth:[F

    return-object v0
.end method

.method public getSatellitesInViewElevation()[F
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewElevation:[F

    return-object v0
.end method

.method public getSatellitesInViewPRNs()[I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewPRN:[I

    return-object v0
.end method

.method public getSatellitesInViewSignalToNoiseRatio()[F
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewSignalToNoiseRatio:[F

    return-object v0
.end method

.method public getSatellitesWithAlmanac()[I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesWithAlmanac:[I

    return-object v0
.end method

.method public getSatellitesWithEphemeris()[I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesWithEphemeris:[I

    return-object v0
.end method

.method public getValidFieldMask()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->mValidFlagMask:I

    return v0
.end method

.method public setNumSatellitesInView(I)V
    .locals 2
    .param p1, "numSatellitesInView"    # I

    .prologue
    .line 69
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num of SV must be [0..MAX_SV_COUNT]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->NumSatellitesInView:I

    .line 75
    return-void
.end method

.method public setSatellitesInViewAzimuth([F)V
    .locals 0
    .param p1, "satellitesInViewAzimuth"    # [F

    .prologue
    .line 82
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewAzimuth:[F

    .line 83
    return-void
.end method

.method public setSatellitesInViewElevation([F)V
    .locals 0
    .param p1, "satellitesInViewElevation"    # [F

    .prologue
    .line 90
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewElevation:[F

    .line 91
    return-void
.end method

.method public setSatellitesInViewPRNs([I)V
    .locals 0
    .param p1, "satellitesInViewPRN"    # [I

    .prologue
    .line 98
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewPRN:[I

    .line 99
    return-void
.end method

.method public setSatellitesInViewSignalToNoiseRatio([F)V
    .locals 0
    .param p1, "satellitesInViewSignalToNoiseRatio"    # [F

    .prologue
    .line 107
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesInViewSignalToNoiseRatio:[F

    .line 108
    return-void
.end method

.method public setSatellitesWithAlmanac([I)V
    .locals 0
    .param p1, "satellitesWithAlmanac"    # [I

    .prologue
    .line 123
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesWithAlmanac:[I

    .line 124
    return-void
.end method

.method public setSatellitesWithEphemeris([I)V
    .locals 0
    .param p1, "satellitesWithEphemeris"    # [I

    .prologue
    .line 115
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->SatellitesWithEphemeris:[I

    .line 116
    return-void
.end method

.method public setValidFieldMask(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->mValidFlagMask:I

    .line 62
    return-void
.end method
