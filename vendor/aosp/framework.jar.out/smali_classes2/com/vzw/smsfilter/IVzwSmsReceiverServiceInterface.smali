.class public interface abstract Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;
.super Ljava/lang/Object;
.source "IVzwSmsReceiverServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendTransactionCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
