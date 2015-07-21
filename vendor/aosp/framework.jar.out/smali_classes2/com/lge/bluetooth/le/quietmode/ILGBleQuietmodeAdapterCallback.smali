.class public interface abstract Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback;
.super Ljava/lang/Object;
.source "ILGBleQuietmodeAdapterCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bluetooth/le/quietmode/ILGBleQuietmodeAdapterCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBleQuietmodeState(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
