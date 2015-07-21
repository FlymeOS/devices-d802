.class public interface abstract Lcom/kddi/net/IPreferredNetworkService;
.super Ljava/lang/Object;
.source "IPreferredNetworkService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/net/IPreferredNetworkService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPreferredNetworkType(Landroid/os/Message;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
