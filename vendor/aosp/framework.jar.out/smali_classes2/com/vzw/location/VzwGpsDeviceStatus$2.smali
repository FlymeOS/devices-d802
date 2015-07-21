.class Lcom/vzw/location/VzwGpsDeviceStatus$2;
.super Ljava/lang/Object;
.source "VzwGpsDeviceStatus.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/VzwGpsDeviceStatus;->satellites()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/vzw/location/VzwGpsSatelliteStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwGpsDeviceStatus;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$2;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/vzw/location/VzwGpsSatelliteStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;

    iget-object v1, p0, Lcom/vzw/location/VzwGpsDeviceStatus$2;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    iget-object v2, p0, Lcom/vzw/location/VzwGpsDeviceStatus$2;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    # getter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mSatellites:[Lcom/vzw/location/VzwGpsSatelliteStatus;
    invoke-static {v2}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$200(Lcom/vzw/location/VzwGpsDeviceStatus;)[Lcom/vzw/location/VzwGpsSatelliteStatus;

    move-result-object v2

    iget-object v3, p0, Lcom/vzw/location/VzwGpsDeviceStatus$2;->this$0:Lcom/vzw/location/VzwGpsDeviceStatus;

    # getter for: Lcom/vzw/location/VzwGpsDeviceStatus;->mSatelliteCount:I
    invoke-static {v3}, Lcom/vzw/location/VzwGpsDeviceStatus;->access$300(Lcom/vzw/location/VzwGpsDeviceStatus;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vzw/location/VzwGpsDeviceStatus$SatelliteStatusIterator;-><init>(Lcom/vzw/location/VzwGpsDeviceStatus;[Lcom/vzw/location/VzwGpsSatelliteStatus;I)V

    return-object v0
.end method
