.class public interface abstract Landroid/os/INetworkManagementServiceEx;
.super Ljava/lang/Object;
.source "INetworkManagementServiceEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementServiceEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNetworkStatsUidInterface(ILjava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterObserverEx(Landroid/net/INetworkManagementEventObserverEx;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
