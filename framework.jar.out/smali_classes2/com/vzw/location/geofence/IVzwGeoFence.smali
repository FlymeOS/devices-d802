.class public interface abstract Lcom/vzw/location/geofence/IVzwGeoFence;
.super Ljava/lang/Object;
.source "IVzwGeoFence.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/geofence/IVzwGeoFence$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearGeoFence(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearGeoFenceUser(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGeoFence(Landroid/os/IBinder;Lcom/vzw/location/geofence/VzwGeoFenceParams;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
