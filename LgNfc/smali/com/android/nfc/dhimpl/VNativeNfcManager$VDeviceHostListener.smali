.class public interface abstract Lcom/android/nfc/dhimpl/VNativeNfcManager$VDeviceHostListener;
.super Ljava/lang/Object;
.source "VNativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/VNativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VDeviceHostListener"
.end annotation


# virtual methods
.method public abstract onCardEmulationAidPreSelected([B)V
.end method

.method public abstract onCardEmulationAidSelected([B)V
.end method

.method public abstract onSeListenActivated()V
.end method

.method public abstract onSeListenDeactivated()V
.end method
