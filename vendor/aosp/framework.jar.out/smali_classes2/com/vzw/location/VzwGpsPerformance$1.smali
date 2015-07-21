.class final Lcom/vzw/location/VzwGpsPerformance$1;
.super Ljava/lang/Object;
.source "VzwGpsPerformance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsPerformance;
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
        "Lcom/vzw/location/VzwGpsPerformance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsPerformance;
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 85
    new-instance v1, Lcom/vzw/location/VzwGpsPerformance;

    invoke-direct {v1}, Lcom/vzw/location/VzwGpsPerformance;-><init>()V

    .line 86
    .local v1, "performance":Lcom/vzw/location/VzwGpsPerformance;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 87
    .local v2, "vertical":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 88
    .local v4, "horizontal":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 89
    .local v6, "responseTime":J
    invoke-virtual/range {v1 .. v7}, Lcom/vzw/location/VzwGpsPerformance;->setPerformance(JJJ)V

    .line 90
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsPerformance$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vzw/location/VzwGpsPerformance;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 94
    new-array v0, p1, [Lcom/vzw/location/VzwGpsPerformance;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/vzw/location/VzwGpsPerformance$1;->newArray(I)[Lcom/vzw/location/VzwGpsPerformance;

    move-result-object v0

    return-object v0
.end method
