.class public interface abstract Lcom/vzw/location/geofence/IVzwGeoFenceListener;
.super Ljava/lang/Object;
.source "IVzwGeoFenceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/geofence/IVzwGeoFenceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract geoFenceExpired(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
