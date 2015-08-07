.class Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;
.super Ljava/lang/Object;
.source "UsbDeviceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbNotificationInfo"
.end annotation


# instance fields
.field m_id:I

.field m_id_message:I

.field m_id_title:I

.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 931
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->this$1:Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 933
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 934
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;Lcom/android/server/usb/UsbDeviceManagerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;
    .param p2, "x1"    # Lcom/android/server/usb/UsbDeviceManagerEx$1;

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;-><init>(Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 936
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id:I

    .line 937
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_title:I

    .line 938
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManagerEx$UsbHandlerEx$UsbNotificationInfo;->m_id_message:I

    .line 939
    return-void
.end method
