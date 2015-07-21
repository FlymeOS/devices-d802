.class final Lcom/vzw/location/VzwGpsDeviceStatus$1;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsDeviceStatus;
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
        "Lcom/vzw/location/VzwGpsDeviceStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 217
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;-><init>()V

    .line 218
    .local v0, "status":Lcom/vzw/location/VzwGpsDeviceStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # invokes: Lcom/vzw/location/VzwGpsDeviceStatus;->setValidFields(I)V
    invoke-static {v0, v1}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$000(Lcom/vzw/location/VzwGpsDeviceStatus;I)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsDeviceStatus;->setHwState(I)V

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # invokes: Lcom/vzw/location/VzwGpsDeviceStatus;->setSatelliteCount(I)V
    invoke-static {v0, v1}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$100(Lcom/vzw/location/VzwGpsDeviceStatus;I)V

    .line 221
    # getter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;
    invoke-static {v0}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$200(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v1

    sget-object v2, Lcom/vzw/location/VzwGpsSatelliteStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 222
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsDeviceStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 227
    new-array v0, p1, [Lcom/vzw/location/VzwGpsDeviceStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsDeviceStatus$1;->newArray(I)[Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    return-object v0
.end method
