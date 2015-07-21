.class public interface abstract Lcom/lge/net/IFDCallback;
.super Ljava/lang/Object;
.source "IFDCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/net/IFDCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyAndroidEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
