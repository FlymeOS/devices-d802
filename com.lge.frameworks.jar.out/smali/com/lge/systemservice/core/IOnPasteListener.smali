.class public interface abstract Lcom/lge/systemservice/core/IOnPasteListener;
.super Ljava/lang/Object;
.source "IOnPasteListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/systemservice/core/IOnPasteListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispatchPaste()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
