.class public interface abstract Lcom/lge/ims/sms/IImsSmsCallback;
.super Ljava/lang/Object;
.source "IImsSmsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/ims/sms/IImsSmsCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendSmsMo(ILjava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
