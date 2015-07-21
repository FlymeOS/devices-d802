.class public interface abstract Lcom/lge/systemservice/core/integrity/IIntegrityListener;
.super Ljava/lang/Object;
.source "IIntegrityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/integrity/IIntegrityListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReport(Ljava/lang/String;[B[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
