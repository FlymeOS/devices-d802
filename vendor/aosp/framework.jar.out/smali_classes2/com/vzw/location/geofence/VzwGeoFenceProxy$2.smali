.class Lcom/vzw/location/geofence/VzwGeoFenceProxy$2;
.super Lcom/vzw/location/geofence/IVzwGeoFenceListener$Stub;
.source "VzwGeoFenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/geofence/VzwGeoFenceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/geofence/VzwGeoFenceProxy;


# direct methods
.method constructor <init>(Lcom/vzw/location/geofence/VzwGeoFenceProxy;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy$2;->this$0:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    invoke-direct {p0}, Lcom/vzw/location/geofence/IVzwGeoFenceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public geoFenceExpired(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy$2;->this$0:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->remove(Landroid/app/PendingIntent;Z)V

    .line 49
    const-string v0, "VzwGeoFenceProxy"

    const-string v1, "[geoFenceExpired] GeoFence expired."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
