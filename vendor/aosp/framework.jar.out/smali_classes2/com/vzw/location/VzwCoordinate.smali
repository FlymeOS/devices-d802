.class public Lcom/vzw/location/VzwCoordinate;
.super Ljava/lang/Object;
.source "VzwCoordinate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/VzwCoordinate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwCoordinate"


# instance fields
.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/vzw/location/VzwCoordinate$1;

    invoke-direct {v0}, Lcom/vzw/location/VzwCoordinate$1;-><init>()V

    sput-object v0, Lcom/vzw/location/VzwCoordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide v0, -0x3fa9800000000000L    # -90.0

    iput-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLatitude:D

    .line 29
    const-wide v0, -0x3f99800000000000L    # -180.0

    iput-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLongitude:D

    .line 32
    const-string v0, "VzwCoordinate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VzwCoordinate] Create new VzwCoordinate object with latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-wide p1, p0, Lcom/vzw/location/VzwCoordinate;->mLatitude:D

    .line 34
    iput-wide p3, p0, Lcom/vzw/location/VzwCoordinate;->mLongitude:D

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide v0, -0x3fa9800000000000L    # -90.0

    iput-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLatitude:D

    .line 29
    const-wide v0, -0x3f99800000000000L    # -180.0

    iput-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLongitude:D

    .line 54
    const-string v0, "VzwCoordinate"

    const-string v1, "[VzwCoordinate] Create new VzwCoordinate object with Parcel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "VzwCoordinate"

    const-string v1, "[VzwCoordinate] mLatitude = in.readDouble()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLatitude:D

    .line 57
    const-string v0, "VzwCoordinate"

    const-string v1, "[VzwCoordinate] mLongitude = in.readDouble()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLongitude:D

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLongitude:D

    return-wide v0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/vzw/location/VzwCoordinate;->mLatitude:D

    .line 39
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/vzw/location/VzwCoordinate;->mLongitude:D

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    const-string v0, "VzwCoordinate"

    const-string v1, "[writeToParcel] Entering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "VzwCoordinate"

    const-string v1, "[writeToParcel] dest.writeDouble(mLatitude)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 87
    const-string v0, "VzwCoordinate"

    const-string v1, "[writeToParcel] dest.writeDouble(mLongitude)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-wide v0, p0, Lcom/vzw/location/VzwCoordinate;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 89
    return-void
.end method
