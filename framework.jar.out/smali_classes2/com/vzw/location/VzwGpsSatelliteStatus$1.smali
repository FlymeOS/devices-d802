.class final Lcom/vzw/location/VzwGpsSatelliteStatus$1;
.super Ljava/lang/Object;
.source "VzwGpsSatelliteStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsSatelliteStatus;
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
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    new-instance v0, Lcom/vzw/location/VzwGpsSatelliteStatus;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsSatelliteStatus;-><init>()V

    .line 141
    .local v0, "s":Lcom/vzw/location/VzwGpsSatelliteStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setCnr(F)V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setPrn(I)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setHasAlmanac(Z)V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setHasEphemeris(Z)V

    .line 145
    return-object v0

    :cond_0
    move v1, v3

    .line 143
    goto :goto_0

    :cond_1
    move v2, v3

    .line 144
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 150
    new-array v0, p1, [Lcom/vzw/location/VzwGpsSatelliteStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;->newArray(I)[Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method
