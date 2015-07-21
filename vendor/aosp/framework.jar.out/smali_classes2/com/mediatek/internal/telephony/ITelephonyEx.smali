.class public interface abstract Lcom/mediatek/internal/telephony/ITelephonyEx;
.super Ljava/lang/Object;
.source "ITelephonyEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract btSimapApduRequest(ILjava/lang/String;Lcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract btSimapConnectSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract btSimapDisconnectSIM()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract btSimapPowerOffSIM()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract btSimapPowerOnSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract btSimapResetSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
