.class public Lcom/vzw/location/PolygonArea;
.super Ljava/lang/Object;
.source "PolygonArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vzw/location/PolygonArea;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PolygonArea"


# instance fields
.field private mPolygonHysteresis:I

.field private polygonDescription:[Lcom/vzw/location/VzwCoordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/vzw/location/PolygonArea$2;

    invoke-direct {v0}, Lcom/vzw/location/PolygonArea$2;-><init>()V

    sput-object v0, Lcom/vzw/location/PolygonArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/PolygonArea;->mPolygonHysteresis:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/PolygonArea;->mPolygonHysteresis:I

    .line 94
    const-string v0, "PolygonArea"

    const-string v1, "[PolygonArea] Create new PolygonArea object with Parcel."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "PolygonArea"

    const-string v1, "[PolygonArea] mPolygonHysteresis = in.readInt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vzw/location/PolygonArea;->mPolygonHysteresis:I

    .line 97
    const-string v0, "PolygonArea"

    const-string v1, "[PolygonArea] polygonDescription = in.createTypedArray(VzwCoordinate.CREATOR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/vzw/location/VzwCoordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vzw/location/VzwCoordinate;

    iput-object v0, p0, Lcom/vzw/location/PolygonArea;->polygonDescription:[Lcom/vzw/location/VzwCoordinate;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/vzw/location/PolygonArea;)[Lcom/vzw/location/VzwCoordinate;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/PolygonArea;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vzw/location/PolygonArea;->polygonDescription:[Lcom/vzw/location/VzwCoordinate;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getPolygonCoordinates()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/vzw/location/VzwCoordinate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "PolygonArea"

    const-string v1, "[getPolygonCoordinates] Entering. ==> return new Iterable<VzwCoordinate>()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/vzw/location/PolygonArea$1;

    invoke-direct {v0, p0}, Lcom/vzw/location/PolygonArea$1;-><init>(Lcom/vzw/location/PolygonArea;)V

    return-object v0
.end method

.method public getPolygonHysteresis()I
    .locals 3

    .prologue
    .line 59
    const-string v0, "PolygonArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPolygonHysteresis] Entering. ==> return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vzw/location/PolygonArea;->mPolygonHysteresis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v0, p0, Lcom/vzw/location/PolygonArea;->mPolygonHysteresis:I

    return v0
.end method

.method public setPolygonCoordinates([Lcom/vzw/location/VzwCoordinate;)Z
    .locals 4
    .param p1, "Coordinates"    # [Lcom/vzw/location/VzwCoordinate;

    .prologue
    .line 46
    array-length v0, p1

    .line 47
    .local v0, "len":I
    const-string v1, "PolygonArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setPolygonCoordinates] Entering. Length of VzwCoordinate[] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/16 v1, 0xf

    if-ge v1, v0, :cond_1

    .line 49
    :cond_0
    const-string v1, "PolygonArea"

    const-string v2, "[setPolygonCoordinates] Length of VzwCoordinate[] is out of range. ==> return false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/vzw/location/PolygonArea;->polygonDescription:[Lcom/vzw/location/VzwCoordinate;

    .line 53
    const-string v1, "PolygonArea"

    const-string v2, "[setPolygonCoordinates] Valid length of VzwCoordinate[] is set. ==> return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPolygonHysteresis(I)Z
    .locals 3
    .param p1, "polygonHysteresis"    # I

    .prologue
    .line 33
    const-string v0, "PolygonArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPolygonHysteresis] Entering. Polygon Hysteresis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-ltz p1, :cond_0

    const v0, 0x186a0

    if-le p1, v0, :cond_1

    .line 36
    :cond_0
    const-string v0, "PolygonArea"

    const-string v1, "[setPolygonHysteresis] Hysteresis value is out of range. ==> return false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_1
    const-string v0, "PolygonArea"

    const-string v1, "[setPolygonHysteresis] Valid hysteresis value is set. ==> return true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput p1, p0, Lcom/vzw/location/PolygonArea;->mPolygonHysteresis:I

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 123
    const-string v0, "PolygonArea"

    const-string v1, "[writeToParcel] Entering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "PolygonArea"

    const-string v1, "[writeToParcel] dest.writeInt(mPolygonHysteresis)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget v0, p0, Lcom/vzw/location/PolygonArea;->mPolygonHysteresis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const-string v0, "PolygonArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[writeToParcel] dest.writeTypedArray(polygonDescription, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/vzw/location/PolygonArea;->polygonDescription:[Lcom/vzw/location/VzwCoordinate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 128
    return-void
.end method
