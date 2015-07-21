.class final Lcom/vzw/location/VzwLocation$1;
.super Ljava/lang/Object;
.source "VzwLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocation;
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
        "Lcom/vzw/location/VzwLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 831
    new-instance v0, Lcom/vzw/location/VzwLocation;

    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-direct {v0, v1}, Lcom/vzw/location/VzwLocation;-><init>(Landroid/location/Location;)V

    .line 832
    .local v0, "vzwLocation":Lcom/vzw/location/VzwLocation;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setFixMode(I)V

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setHorizontalConfidence(F)V

    .line 834
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMajorAxis(F)V

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMajorAxisAngle(F)V

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMinorAxis(F)V

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setPositionDilutionOfPrecision(F)V

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setHorizontalDilutionOfPrecision(F)V

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setVerticalDilutionOfPrecision(F)V

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setMagneticVariation(F)V

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltituteWrtSeaLevel(F)V

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setAltitudeWrtEllipsoid(F)V

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vzw/location/VzwLocation;->setVerticalAccuracy(F)V

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/vzw/location/VzwLocation;->mValidFields:I
    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocation;->access$002(Lcom/vzw/location/VzwLocation;I)I

    .line 845
    const-string v1, "VzwLocation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[creatFromParcel] vzwLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vzw/location/VzwLocation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwLocation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 851
    new-array v0, p1, [Lcom/vzw/location/VzwLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwLocation$1;->newArray(I)[Lcom/vzw/location/VzwLocation;

    move-result-object v0

    return-object v0
.end method
