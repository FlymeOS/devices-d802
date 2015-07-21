.class public Lcom/vzw/location/VzwLocation;
.super Landroid/location/Location;
.source "VzwLocation.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_DEV_VALID_ALM_SV_MASK:I = 0x4

.field public static final GPS_DEV_VALID_DEV_ERROR:I = 0x20

.field public static final GPS_DEV_VALID_EPH_SV_MASK:I = 0x2

.field public static final GPS_DEV_VALID_HW_STATE:I = 0x1

.field public static final GPS_DEV_VALID_SAT_IN_CARRIER_TO_NOISE_RATIO:I = 0x10

.field public static final GPS_DEV_VALID_SAT_IN_SIGNAL_TO_NOISE_RATIO:I = 0x10

.field public static final GPS_DEV_VALID_SAT_IN_VIEW_PRN:I = 0x8

.field public static final GPS_ENCRYPT_AES_128_LAT_LONG:I = 0x0

.field public static final GPS_FIX_MODE_ACCURACY_OPTIMAL:I = 0x6

.field public static final GPS_FIX_MODE_AFLT:I = 0x4

.field public static final GPS_FIX_MODE_CID:I = 0x8

.field public static final GPS_FIX_MODE_CUSTOM:I = 0x100

.field public static final GPS_FIX_MODE_DATA_OPTIMAL:I = 0x7

.field public static final GPS_FIX_MODE_ECID:I = 0x9

.field public static final GPS_FIX_MODE_HYBRID:I = 0xc

.field public static final GPS_FIX_MODE_HYBRID_NONE:I = 0x0

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSA_AFLT:I = 0x1

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSA_MSA:I = 0x4

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSB_MSB:I = 0x2

.field public static final GPS_FIX_MODE_HYBRID_WiFiMSB_MSS:I = 0x3

.field public static final GPS_FIX_MODE_MSA:I = 0x1

.field public static final GPS_FIX_MODE_MSB:I = 0x2

.field public static final GPS_FIX_MODE_MSS:I = 0x3

.field public static final GPS_FIX_MODE_SPEED_OPTIMAL:I = 0x5

.field public static final GPS_FIX_MODE_UNKNOWN:I = 0x0

.field public static final GPS_FIX_MODE_WIFI_MSA:I = 0xa

.field public static final GPS_FIX_MODE_WIFI_MSB:I = 0xb

.field public static final GPS_HASH_SHA1:I = 0x0

.field public static final GPS_HW_STATE_IDLE:I = 0x2

.field public static final GPS_HW_STATE_ON:I = 0x1

.field public static final GPS_HW_STATE_UNKNOWN:I = 0x0

.field public static final GPS_MAX_SATELLITES:I = 0x60

.field public static final GPS_MAX_SECURITY_DATA:I = 0x14

.field public static final GPS_MAX_SERVER_URL_NAME:I = 0xff

.field public static final GPS_VALID_ALTITUDE_WRT_ELLIPSOID:I = 0x80

.field public static final GPS_VALID_ALTITUDE_WRT_SEA_LEVEL:I = 0x40

.field public static final GPS_VALID_FIX_ERROR:I = 0x100000

.field public static final GPS_VALID_FIX_MODE:I = 0x80000

.field public static final GPS_VALID_HEADING:I = 0x10

.field public static final GPS_VALID_HORIZONTAL_DILUTION_OF_PRECISION:I = 0x200

.field public static final GPS_VALID_HYBRID_MODE:I = 0x200000

.field public static final GPS_VALID_LATITUDE:I = 0x2

.field public static final GPS_VALID_LONGITUDE:I = 0x4

.field public static final GPS_VALID_MAGNETIC_VARIATION:I = 0x20

.field public static final GPS_VALID_POSITION_DILUTION_OF_PRECISION:I = 0x100

.field public static final GPS_VALID_POSITION_UNCERTAINTY_ERROR:I = 0x40000

.field public static final GPS_VALID_SATELLITES_IN_VIEW:I = 0x2000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_AZIMUTH:I = 0x10000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_ELEVATION:I = 0x8000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_PRNS:I = 0x4000

.field public static final GPS_VALID_SATELLITES_IN_VIEW_SIGNAL_TO_NOISE_RATIO:I = 0x20000

.field public static final GPS_VALID_SATELLITES_USED_PRNS:I = 0x1000

.field public static final GPS_VALID_SATELLITE_COUNT:I = 0x800

.field public static final GPS_VALID_SPEED:I = 0x8

.field public static final GPS_VALID_UTC_TIME:I = 0x1

.field public static final GPS_VALID_VERTICAL_DILUTION_OF_PRECISION:I = 0x400

.field private static final TAG:Ljava/lang/String; = "VzwLocation"


# instance fields
.field private mAltitudeWRTEllipse:F

.field private mAltitudeWRTSeaLevel:F

.field private mFixMode:I

.field private mHorizontalConfidence:F

.field private mHorizontalDilution:F

.field private mHybridMode:I

.field private mMagneticVariation:F

.field private mMajorAxis:F

.field private mMajorAxisAngle:F

.field private mMinorAxis:F

.field private mPositionDilution:F

.field private mValidFields:I

.field private mVerticalAccuracy:F

.field private mVerticalDilution:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 827
    new-instance v0, Lcom/vzw/location/VzwLocation$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwLocation$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 292
    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    .line 293
    return-void
.end method

.method public constructor <init>(Lcom/vzw/location/VzwLocation;)V
    .locals 0
    .param p1, "vzwLocation"    # Lcom/vzw/location/VzwLocation;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 286
    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    .line 287
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    .line 299
    return-void
.end method

.method static synthetic access$002(Lcom/vzw/location/VzwLocation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/VzwLocation;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return p1
.end method

.method private isFieldSetInValidFields(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 324
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 776
    const-string/jumbo v0, "vzw_lbs"

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setProvider(Ljava/lang/String;)V

    .line 777
    iput v2, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 779
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    .line 780
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    .line 781
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 782
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 783
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 784
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    .line 785
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    .line 786
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    .line 787
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    .line 788
    iput v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    .line 790
    iput v2, p0, Lcom/vzw/location/VzwLocation;->mHybridMode:I

    .line 792
    iput v2, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 793
    return-void
.end method

.method private unsetValidField(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 319
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 320
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 421
    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAltitudeWrtEllipsoid()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 701
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 704
    :cond_1
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    const v2, -0x3995a000    # -15000.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    const v2, 0x47435000    # 50000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 705
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    goto :goto_0
.end method

.method public getAltitudeWrtSeaLevel()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 669
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 672
    :cond_1
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    const v2, -0x3995a000    # -15000.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    const v2, 0x47435000    # 50000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 673
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    goto :goto_0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 400
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFixMode()I
    .locals 1

    .prologue
    .line 734
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHorizontalConfidence()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    const v2, 0x42c7fae1    # 99.99f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 453
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    .line 455
    :cond_0
    return v0
.end method

.method public getHorizontalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 476
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHybridMode()I
    .locals 1

    .prologue
    .line 764
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHybridMode:I

    .line 767
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-super {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 352
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-super {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    .line 367
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMagneticVariation()F
    .locals 1

    .prologue
    .line 647
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    .line 650
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMajorAxis()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 505
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    const v2, 0x469c4000    # 20000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 506
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 508
    :cond_0
    return v0
.end method

.method public getMajorAxisAngle()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 531
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 532
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 534
    :cond_0
    return v0
.end method

.method public getMinorAxis()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 559
    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    const v2, 0x469c4000    # 20000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 560
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 562
    :cond_0
    return v0
.end method

.method public getPositionDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 603
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    .line 606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 379
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-super {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 337
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getValidFields()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    return v0
.end method

.method public getVerticalDilutionOfPrecision()F
    .locals 1

    .prologue
    .line 627
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->isFieldSetInValidFields(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    .line 630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalError()F
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    return v0
.end method

.method public removeAltitude()V
    .locals 0

    .prologue
    .line 431
    invoke-super {p0}, Landroid/location/Location;->removeAltitude()V

    .line 432
    return-void
.end method

.method public removeBearing()V
    .locals 1

    .prologue
    .line 414
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->unsetValidField(I)V

    .line 415
    invoke-super {p0}, Landroid/location/Location;->removeBearing()V

    .line 416
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .prologue
    .line 393
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vzw/location/VzwLocation;->unsetValidField(I)V

    .line 394
    invoke-super {p0}, Landroid/location/Location;->removeSpeed()V

    .line 395
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 797
    invoke-super {p0}, Landroid/location/Location;->reset()V

    .line 798
    invoke-direct {p0}, Lcom/vzw/location/VzwLocation;->setToDefault()V

    .line 799
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    .line 426
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    .line 427
    return-void
.end method

.method public setAltitudeWrtEllipsoid(F)V
    .locals 2
    .param p1, "altitude"    # F

    .prologue
    .line 721
    float-to-double v0, p1

    invoke-super {p0, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 722
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 723
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    .line 724
    return-void
.end method

.method public setAltituteWrtSeaLevel(F)V
    .locals 1
    .param p1, "altitude"    # F

    .prologue
    .line 685
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 686
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    .line 687
    return-void
.end method

.method public setBearing(F)V
    .locals 1
    .param p1, "bearing"    # F

    .prologue
    .line 408
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 409
    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 410
    return-void
.end method

.method public setFixMode(I)V
    .locals 1
    .param p1, "fixMode"    # I

    .prologue
    .line 742
    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 743
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    .line 744
    return-void
.end method

.method public setHorizontalConfidence(F)V
    .locals 0
    .param p1, "val"    # F

    .prologue
    .line 460
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    .line 461
    return-void
.end method

.method public setHorizontalDilutionOfPrecision(F)V
    .locals 1
    .param p1, "dilution"    # F

    .prologue
    .line 484
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 485
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    .line 486
    return-void
.end method

.method public setHybridMode(I)V
    .locals 1
    .param p1, "hybridMode"    # I

    .prologue
    .line 752
    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 753
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mHybridMode:I

    .line 754
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 357
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 358
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 359
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 372
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 373
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 374
    return-void
.end method

.method public setMagneticVariation(F)V
    .locals 1
    .param p1, "variation"    # F

    .prologue
    .line 655
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 656
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    .line 657
    return-void
.end method

.method public setMajorAxis(F)V
    .locals 0
    .param p1, "axis"    # F

    .prologue
    .line 513
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    .line 514
    return-void
.end method

.method public setMajorAxisAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 539
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    .line 540
    return-void
.end method

.method public setMinorAxis(F)V
    .locals 0
    .param p1, "axis"    # F

    .prologue
    .line 567
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    .line 568
    return-void
.end method

.method public setPositionDilutionOfPrecision(F)V
    .locals 1
    .param p1, "dilution"    # F

    .prologue
    .line 611
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 612
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    .line 613
    return-void
.end method

.method public setPositionUncertaintyError(FFFFF)V
    .locals 1
    .param p1, "horizontalConfidence"    # F
    .param p2, "verticalAccuracy"    # F
    .param p3, "majorAxis"    # F
    .param p4, "majorAxisAngle"    # F
    .param p5, "minorAxis"    # F

    .prologue
    .line 577
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 578
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation;->setHorizontalConfidence(F)V

    .line 579
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwLocation;->setVerticalAccuracy(F)V

    .line 580
    invoke-virtual {p0, p3}, Lcom/vzw/location/VzwLocation;->setMajorAxis(F)V

    .line 581
    invoke-virtual {p0, p4}, Lcom/vzw/location/VzwLocation;->setMajorAxisAngle(F)V

    .line 582
    invoke-virtual {p0, p5}, Lcom/vzw/location/VzwLocation;->setMinorAxis(F)V

    .line 583
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 387
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 388
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 389
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 343
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    .line 344
    return-void
.end method

.method public setValidField(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 314
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    .line 315
    return-void
.end method

.method public setVerticalAccuracy(F)V
    .locals 0
    .param p1, "verticalAccuracy"    # F

    .prologue
    .line 588
    invoke-super {p0, p1}, Landroid/location/Location;->setAccuracy(F)V

    .line 589
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    .line 590
    return-void
.end method

.method public setVerticalDilutionOfPrecision(F)V
    .locals 1
    .param p1, "dilution"    # F

    .prologue
    .line 635
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/vzw/location/VzwLocation;->setValidField(I)V

    .line 636
    iput p1, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    .line 637
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFixMode=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mHorizontalConfidence=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mMajorAxis=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mMinorAxis=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mPositionDilution=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mHorizontalDilution=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mVerticalDilution=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mMagneticVariation=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAltitudeWRTSeaLevel=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mAltitudeWRTEllipse=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], mVerticalAccuracy=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 809
    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 810
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mFixMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalConfidence:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 812
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 813
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMajorAxisAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 814
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMinorAxis:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 815
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mPositionDilution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 816
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mHorizontalDilution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 817
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalDilution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 818
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mMagneticVariation:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 819
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTSeaLevel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 820
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mAltitudeWRTEllipse:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 821
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mVerticalAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 822
    iget v0, p0, Lcom/vzw/location/VzwLocation;->mValidFields:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    return-void
.end method
