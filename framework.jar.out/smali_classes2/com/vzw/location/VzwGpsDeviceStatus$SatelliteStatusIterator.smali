.class final Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwGpsDeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteStatusIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mIndex:I

.field private final mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

.field final synthetic this$0:Lcom/vzw/location/VzwGpsDeviceStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsDeviceStatus;[Lcom/vzw/location/VzwGpsSatelliteStatus;I)V
    .locals 1
    .param p2, "satellites"    # [Lcom/vzw/location/VzwGpsSatelliteStatus;
    .param p3, "count"    # I

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mIndex:I

    .line 95
    iput-object p2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    .line 96
    iput p3, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mCount:I

    .line 98
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mIndex:I

    iget v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/vzw/location/VzwGpsSatelliteStatus;
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;

    iget v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->mIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;->next()Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
