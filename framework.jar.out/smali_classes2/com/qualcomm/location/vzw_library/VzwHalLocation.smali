.class public Lcom/qualcomm/location/vzw_library/VzwHalLocation;
.super Landroid/location/Location;
.source "VzwHalLocation.java"


# static fields
.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x4

.field public static final GPS_VALID_ELLIPTICAL_ACCURACY:I = 0x40

.field public static final GPS_VALID_FIX_MODE:I = 0x4000

.field public static final GPS_VALID_HORIZONTAL_CONFIDENCE:I = 0x100

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x10

.field public static final GPS_VALID_LATITUDE:I = 0x1

.field public static final GPS_VALID_LONGITUDE:I = 0x2

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x8000

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x8

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x1000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x800

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x400

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x2000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x200

.field public static final GPS_VALID_TIME:I = 0x10000

.field public static final GPS_VALID_VERTICAL_ACCURACY:I = 0x80

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x20

.field private static final keyAltitudeSeaLevel:Ljava/lang/String; = "VZW_ALTITUDE_SEA_LEVEL"

.field private static final keyConfidenceH:Ljava/lang/String; = "VZW_CONFIDENCE_H"

.field private static final keyFixMode:Ljava/lang/String; = "VZW_FIX_MODE"

.field private static final keyMagneticVariation:Ljava/lang/String; = "VZW_MAGNETIC_VARIATION"

.field private static final keyMajorAxis:Ljava/lang/String; = "VZW_MAJOR_AXIS"

.field private static final keyMajorAxisAngle:Ljava/lang/String; = "VZW_MAJOR_AXIS_ANGLE"

.field private static final keyMinorAxis:Ljava/lang/String; = "VZW_MINOR_AXIS"

.field private static final keyPosDop:Ljava/lang/String; = "VZW_POS_DOP"

.field private static final keyPosDopH:Ljava/lang/String; = "VZW_POS_DOP_H"

.field private static final keyPosDopV:Ljava/lang/String; = "VZW_POS_DOP_V"

.field private static final keySatellitesInViewAzimuth:Ljava/lang/String; = "VZW_SATELLITES_IN_VIEW_AZIMUTH"

.field private static final keySatellitesInViewElevation:Ljava/lang/String; = "VZW_SATELLITES_IN_VIEW_ELEVEVATION"

.field private static final keySatellitesInViewPRN:Ljava/lang/String; = "VZW_SATELLITES_IN_VIEW_PRN"

.field private static final keySatellitesInViewSno:Ljava/lang/String; = "VZW_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO"

.field private static final keySatellitesUsedPRN:Ljava/lang/String; = "VZW_SATELLITES_USED_PRN"

.field private static final keySessionId:Ljava/lang/String; = "VZW_SESSION_ID"

.field private static final keyValidFieldMask:Ljava/lang/String; = "VZW_VALID_FIELD_MASK"

.field private static final keyVerticalAccuracy:Ljava/lang/String; = "VZW_VERTICAL_ACCURACY"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "vzw_gps"

    invoke-direct {p0, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setExtras(Landroid/os/Bundle;)V

    .line 51
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 1
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 55
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->setExtras(Landroid/os/Bundle;)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public getAltitudeWrtSeaLevel()D
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_ALTITUDE_SEA_LEVEL"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFixMode()I
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_FIX_MODE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHorizontalConfidence()F
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_CONFIDENCE_H"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_POS_DOP_H"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getHybridMode()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getMagneticVariation()F
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MAGNETIC_VARIATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMajorAxis()F
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MAJOR_AXIS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MAJOR_AXIS_ANGLE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMinorAxis()F
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MINOR_AXIS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_POS_DOP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getSatellitesInViewAzimuth()[F
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_AZIMUTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getSatellitesInViewElevation()[F
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_ELEVEVATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getSatellitesInViewPRNs()[I
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_PRN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSatellitesInViewSignalToNoiseRatio()[F
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getSatellitesUsedPRN()[I
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_USED_PRN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()I
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SESSION_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getValidFieldMask()I
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_VALID_FIELD_MASK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVerticalAccuracy()D
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_VERTICAL_ACCURACY"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_POS_DOP_V"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public setAltitudeWrtSeaLevel(D)V
    .locals 3
    .param p1, "altitude_sea_level"    # D

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_ALTITUDE_SEA_LEVEL"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 143
    return-void
.end method

.method public setFixMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_FIX_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method public setHorizontalConfidence(F)V
    .locals 2
    .param p1, "percentage"    # F

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_CONFIDENCE_H"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 136
    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 2
    .param p1, "dop"    # F

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_POS_DOP_H"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 101
    return-void
.end method

.method public setHybridMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 222
    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 2
    .param p1, "variation"    # F

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MAGNETIC_VARIATION"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 206
    return-void
.end method

.method public setMajorAxis(F)V
    .locals 2
    .param p1, "length"    # F

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MAJOR_AXIS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 115
    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MAJOR_AXIS_ANGLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 122
    return-void
.end method

.method public setMinorAxis(F)V
    .locals 2
    .param p1, "length"    # F

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_MINOR_AXIS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 129
    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 2
    .param p1, "dop"    # F

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_POS_DOP"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 94
    return-void
.end method

.method public setSatellitesInViewAzimuth([F)V
    .locals 2
    .param p1, "satellitesInViewAzimuth"    # [F

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_AZIMUTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 165
    return-void
.end method

.method public setSatellitesInViewElevation([F)V
    .locals 2
    .param p1, "satellitesInViewElevation"    # [F

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_ELEVEVATION"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 173
    return-void
.end method

.method public setSatellitesInViewPRNs([I)V
    .locals 2
    .param p1, "satellitesInViewPRN"    # [I

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_PRN"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 181
    return-void
.end method

.method public setSatellitesInViewSignalToNoiseRatio([F)V
    .locals 2
    .param p1, "satellitesInViewSignalToNoiseRatio"    # [F

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 190
    return-void
.end method

.method public setSatellitesUsedPRN([I)V
    .locals 2
    .param p1, "satelliteUsedPRN"    # [I

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SATELLITES_USED_PRN"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 157
    return-void
.end method

.method public setSessionId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_SESSION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public setValidFieldMask(I)V
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_VALID_FIELD_MASK"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public setVerticalAccuracy(F)V
    .locals 4
    .param p1, "accuracyVertical"    # F

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_VERTICAL_ACCURACY"

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 150
    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 2
    .param p1, "dop"    # F

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VZW_POS_DOP_V"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 108
    return-void
.end method
