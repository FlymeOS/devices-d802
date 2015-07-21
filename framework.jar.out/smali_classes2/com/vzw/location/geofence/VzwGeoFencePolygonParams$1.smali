.class final Lcom/vzw/location/geofence/VzwGeoFencePolygonParams$1;
.super Ljava/lang/Object;
.source "VzwGeoFencePolygonParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 162
    const-string v0, "VzwGeoFencePolygonParams"

    const-string v1, "[createFromParcel] Entering. ==> return VzwGeoFencePolygonParams(in)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    invoke-direct {v0, p1}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 168
    const-string v0, "VzwGeoFencePolygonParams"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[newArray] Entering. ==> VzwGeoFencePolygonParams["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-array v0, p1, [Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFencePolygonParams$1;->newArray(I)[Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    move-result-object v0

    return-object v0
.end method
