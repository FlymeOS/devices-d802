.class final Lcom/vzw/location/VzwGpsFixRate$1;
.super Ljava/lang/Object;
.source "VzwGpsFixRate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsFixRate;
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
        "Lcom/vzw/location/VzwGpsFixRate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsFixRate;
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Lcom/vzw/location/VzwGpsFixRate;

    invoke-direct {v0}, Lcom/vzw/location/VzwGpsFixRate;-><init>()V

    .line 72
    .local v0, "fixRate":Lcom/vzw/location/VzwGpsFixRate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 73
    .local v2, "nFixes":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 75
    .local v4, "nTime":J
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vzw/location/VzwGpsFixRate;->setGpsFixRate(JJ)V

    .line 77
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsFixRate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsFixRate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 82
    new-array v0, p1, [Lcom/vzw/location/VzwGpsFixRate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsFixRate$1;->newArray(I)[Lcom/vzw/location/VzwGpsFixRate;

    move-result-object v0

    return-object v0
.end method
