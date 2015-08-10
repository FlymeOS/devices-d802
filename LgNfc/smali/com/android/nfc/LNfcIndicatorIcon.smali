.class public Lcom/android/nfc/LNfcIndicatorIcon;
.super Ljava/lang/Object;
.source "LNfcIndicatorIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;
    }
.end annotation


# static fields
.field private static CONFIG:Lcom/lge/nfcconfig/NfcConfigure; = null

.field private static DBG:Z = false

.field public static final MSG_REMOVE_NFC_ICON:I = 0x1f

.field public static final MSG_UPDATE_NFC_ICON:I = 0x1e

.field private static final NFC_ICON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lge/nfcconfig/NfcConfigure$IndicatorList;",
            "[I>;"
        }
    .end annotation
.end field

.field private static final NUM_NFC_ICON_MAP_CARDMODE:I = 0x0

.field private static final NUM_NFC_ICON_MAP_MAX:I = 0x3

.field private static final NUM_NFC_ICON_MAP_P2PMODE:I = 0x2

.field private static final NUM_NFC_ICON_MAP_RWMODE:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z

    .line 28
    const-string v0, "LNfcIndicatorIcon"

    sput-object v0, Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcIndicatorIcon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 41
    new-instance v0, Lcom/android/nfc/LNfcIndicatorIcon$1;

    invoke-direct {v0}, Lcom/android/nfc/LNfcIndicatorIcon$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/LNfcIndicatorIcon;->NFC_ICON_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/nfc/LNfcIndicatorIcon$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/LNfcIndicatorIcon$2;-><init>(Lcom/android/nfc/LNfcIndicatorIcon;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/LNfcIndicatorIcon;Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;)Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/LNfcIndicatorIcon;
    .param p1, "x1"    # Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/nfc/LNfcIndicatorIcon;->mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    return-object p1
.end method

.method static synthetic access$200()Lcom/lge/nfcconfig/NfcConfigure;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/nfc/LNfcIndicatorIcon;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/nfc/LNfcIndicatorIcon;->NFC_ICON_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/nfc/LNfcIndicatorIcon;->DBG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/nfc/LNfcIndicatorIcon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendIconMessage(ILjava/lang/Object;I)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillsec"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/nfc/LNfcIndicatorIcon;->mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    invoke-virtual {v1, p1}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/nfc/LNfcIndicatorIcon;->mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    invoke-virtual {v1, p1}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;->removeMessages(I)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/LNfcIndicatorIcon;->mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    invoke-virtual {v1}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 99
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    if-gtz p3, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/nfc/LNfcIndicatorIcon;->mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/LNfcIndicatorIcon;->mHandler:Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/LNfcIndicatorIcon$LNfcServiceIconHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public removeNfcIndicatorIcon(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->sendIconMessage(ILjava/lang/Object;I)V

    .line 91
    return-void
.end method

.method public restoreNfcIndicatorIcon(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->sendIconMessage(ILjava/lang/Object;I)V

    .line 83
    return-void
.end method

.method public updateNfcIndicatorIcon(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/16 v0, 0x1e

    const/16 v1, 0xc8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/nfc/LNfcIndicatorIcon;->sendIconMessage(ILjava/lang/Object;I)V

    .line 87
    return-void
.end method
