.class public Lcom/android/server/usb/UsbHostManagerEx;
.super Lcom/android/server/usb/UsbHostManager;
.source "UsbHostManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbHostManagerEx"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "lge_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method


# virtual methods
.method protected isBlackListed(III)Z
    .locals 3
    .param p1, "clazz"    # I
    .param p2, "subClass"    # I
    .param p3, "protocol"    # I

    .prologue
    const/4 v2, 0x0

    .line 22
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 23
    const-string v0, "UsbHostManagerEx"

    const-string v1, "if (clazz == UsbConstants.USB_CLASS_HUB) {"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return v2

    .line 28
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 30
    const-string v0, "UsbHostManagerEx"

    const-string v1, "subClass == UsbConstants.USB_INTERFACE_SUBCLASS_BOOT) {"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "UsbHostManagerEx"

    const-string v1, "isBlackListed false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
