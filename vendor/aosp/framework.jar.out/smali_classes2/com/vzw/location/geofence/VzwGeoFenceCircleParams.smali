.class public Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
.super Ljava/lang/Object;
.source "VzwGeoFenceCircleParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGeoFenceCircleParams"


# instance fields
.field public final mRadius:F

.field public final mRadiusMax:F

.field public final mRadiusMin:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams$1;

    invoke-direct {v0}, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams$1;-><init>()V

    sput-object v0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "radiusMin"    # F
    .param p3, "radiusMax"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadius:F

    .line 35
    iput p2, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMin:F

    .line 36
    iput p3, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMax:F

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadius:F

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMin:F

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMax:F

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isInProximityCircle(DDLcom/vzw/location/VzwLocation;)Z
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "refLoc"    # Lcom/vzw/location/VzwLocation;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    const-string v5, "VzwGeoFenceCircleParams"

    const-string v6, "[isInProximityCircle] Entering"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v2, Lcom/vzw/location/VzwLocation;

    const-string v5, ""

    invoke-direct {v2, v5}, Lcom/vzw/location/VzwLocation;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "loc":Lcom/vzw/location/VzwLocation;
    invoke-virtual {v2, p1, p2}, Lcom/vzw/location/VzwLocation;->setLatitude(D)V

    .line 43
    invoke-virtual {v2, p3, p4}, Lcom/vzw/location/VzwLocation;->setLongitude(D)V

    .line 44
    invoke-virtual {v2, p5}, Lcom/vzw/location/VzwLocation;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v0, v5

    .line 45
    .local v0, "distance":D
    const-string v5, "VzwGeoFenceCircleParams"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isInProximityCircle] Current Distance = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v5, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadius:F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    iget v5, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadius:F

    float-to-double v6, v5

    cmpg-double v5, v0, v6

    if-gtz v5, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    iget v5, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMin:F

    float-to-double v6, v5

    cmpg-double v5, v0, v6

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMax:F

    float-to-double v6, v5

    cmpl-double v5, v0, v6

    if-lez v5, :cond_0

    :cond_3
    move v3, v4

    .line 52
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 85
    iget v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;->mRadiusMax:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    return-void
.end method
