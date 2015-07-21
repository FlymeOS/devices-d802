.class final Lcom/vzw/location/VzwCoordinate$1;
.super Ljava/lang/Object;
.source "VzwCoordinate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwCoordinate;
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
        "Lcom/vzw/location/VzwCoordinate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCoordinate;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    const-string v0, "VzwCoordinate"

    const-string v1, "[createFromParcel] Entering ==> return new VzwCoordinate(in)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/vzw/location/VzwCoordinate;

    invoke-direct {v0, p1}, Lcom/vzw/location/VzwCoordinate;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCoordinate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwCoordinate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwCoordinate;
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 71
    const-string v0, "VzwCoordinate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[newArray] Entering ==> return new VzwCoordinate["

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

    .line 72
    new-array v0, p1, [Lcom/vzw/location/VzwCoordinate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwCoordinate$1;->newArray(I)[Lcom/vzw/location/VzwCoordinate;

    move-result-object v0

    return-object v0
.end method
