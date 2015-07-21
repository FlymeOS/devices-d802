.class Lcom/vzw/location/geofence/VzwGeoFenceProxy$1;
.super Ljava/lang/Object;
.source "VzwGeoFenceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 29
    iput-object p1, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy$1;->this$0:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy$1;->this$0:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    invoke-static {p2}, Lcom/vzw/location/geofence/IVzwGeoFence$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/geofence/IVzwGeoFence;

    move-result-object v1

    # setter for: Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;
    invoke-static {v0, v1}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->access$002(Lcom/vzw/location/geofence/VzwGeoFenceProxy;Lcom/vzw/location/geofence/IVzwGeoFence;)Lcom/vzw/location/geofence/IVzwGeoFence;

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string v0, "VzwGeoFenceProxy"

    const-string v1, "[onServiceConnected] GeoFence service is connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 38
    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceProxy$1;->this$0:Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    const/4 v1, 0x0

    # setter for: Lcom/vzw/location/geofence/VzwGeoFenceProxy;->mGeoFence:Lcom/vzw/location/geofence/IVzwGeoFence;
    invoke-static {v0, v1}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->access$002(Lcom/vzw/location/geofence/VzwGeoFenceProxy;Lcom/vzw/location/geofence/IVzwGeoFence;)Lcom/vzw/location/geofence/IVzwGeoFence;

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const-string v0, "VzwGeoFenceProxy"

    const-string v1, "[onServiceConnected] GeoFence service is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
