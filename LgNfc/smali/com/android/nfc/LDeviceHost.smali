.class public interface abstract Lcom/android/nfc/LDeviceHost;
.super Ljava/lang/Object;
.source "LDeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LDeviceHost$LDeviceHostListener;
    }
.end annotation


# virtual methods
.method public abstract checkChipVer()Ljava/lang/String;
.end method

.method public abstract checkFWVersion()Ljava/lang/String;
.end method

.method public abstract checkMWVersion()Ljava/lang/String;
.end method

.method public abstract downloadFirmware()Z
.end method
