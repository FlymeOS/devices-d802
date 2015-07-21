.class public Lcom/vzw/location/VzwGpsSatelliteStatus;
.super Ljava/lang/Object;
.source "VzwGpsSatelliteStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCnr:F

.field mHasAlmanac:Z

.field mHasEphemeris:Z

.field mPrn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/vzw/location/VzwGpsSatelliteStatus$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsSatelliteStatus$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwGpsSatelliteStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setData(FIZZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getCnr()F
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    return v0
.end method

.method public getPnr()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsSatelliteStatus;->getPrn()I

    move-result v0

    return v0
.end method

.method public getPrn()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsSatelliteStatus;->getCnr()F

    move-result v0

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    return v0
.end method

.method public setCnr(F)V
    .locals 0
    .param p1, "cnr"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    .line 47
    return-void
.end method

.method public setData(FIZZ)V
    .locals 0
    .param p1, "cnr"    # F
    .param p2, "prn"    # I
    .param p3, "hasAlmanac"    # Z
    .param p4, "hasEphemeris"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setCnr(F)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setPrn(I)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setHasAlmanac(Z)V

    .line 41
    invoke-virtual {p0, p4}, Lcom/vzw/location/VzwGpsSatelliteStatus;->setHasEphemeris(Z)V

    .line 42
    return-void
.end method

.method public setHasAlmanac(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    .line 57
    return-void
.end method

.method public setHasEphemeris(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    .line 62
    return-void
.end method

.method public setPrn(I)V
    .locals 0
    .param p1, "prn"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mCnr:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mPrn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasAlmanac:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-boolean v0, p0, Lcom/vzw/location/VzwGpsSatelliteStatus;->mHasEphemeris:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return-void

    :cond_0
    move v0, v2

    .line 133
    goto :goto_0

    :cond_1
    move v1, v2

    .line 134
    goto :goto_1
.end method
