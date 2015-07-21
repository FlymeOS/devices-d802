.class public interface abstract Lcom/lge/uicc/ISimPhonebookService;
.super Ljava/lang/Object;
.source "ISimPhonebookService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/ISimPhonebookService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteEntry(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteGroup(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSimPhonebookInfo(I)Lcom/lge/uicc/SimPhonebookBaseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract insertEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract insertGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract readEntry(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract readGroup(II)Lcom/lge/uicc/SimPhonebookBaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateEntry(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateGroup(IILcom/lge/uicc/SimPhonebookBaseEntry;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
