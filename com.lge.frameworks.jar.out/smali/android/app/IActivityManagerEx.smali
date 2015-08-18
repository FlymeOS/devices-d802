.class public interface abstract Landroid/app/IActivityManagerEx;
.super Ljava/lang/Object;
.source "IActivityManagerEx.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManagerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showLockTaskToastEx()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateFlag(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
