.class public Lcom/android/nfc/LNfcWifiProtectedSetup;
.super Ljava/lang/Object;
.source "LNfcWifiProtectedSetup.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KEY_MIN_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LNfcWifiProtectedSetup.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/LNfcWifiProtectedSetup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->DBG:Z

    .line 17
    invoke-static {}, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$postClinit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_LNfcWifiProtectedSetup$1$973589beproceed(Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p0, "this"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$DBG()Z
    .locals 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$KEY_MIN_LENGTH()I
    .locals 1

    .prologue
    .line 1
    sget v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->KEY_MIN_LENGTH:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$DBG(Z)V
    .locals 0

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/LNfcWifiProtectedSetup;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$KEY_MIN_LENGTH(I)V
    .locals 0

    .prologue
    .line 1
    sput p0, Lcom/android/nfc/LNfcWifiProtectedSetup;->KEY_MIN_LENGTH:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$TAG(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/LNfcWifiProtectedSetup;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/LNfcWifiProtectedSetup;

    invoke-direct {v0}, Lcom/android/nfc/LNfcWifiProtectedSetup;-><init>()V

    sput-object v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcWifiProtectedSetup;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/LNfcWifiProtectedSetup;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcWifiProtectedSetup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_LNfcWifiProtectedSetup"

    sget-object v2, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcWifiProtectedSetup;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcWifiProtectedSetup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ajc$around$com_android_nfc_LNfcWifiProtectedSetup$1$973589be(Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "message,ajc$aroundClosure"
        value = "(execution(* NfcWifiProtectedSetup.parse(..)) && args(message))"
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 24
    invoke-static {p1, p2}, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$around$com_android_nfc_LNfcWifiProtectedSetup$1$973589beproceed(Landroid/nfc/NdefMessage;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 25
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "LNfcWifiProtectedSetup.aj"

    const-string v5, "around() : call(* NfcWifiProtectedSetup.parse(..) : return null"

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 39
    .end local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 29
    .restart local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-static {}, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$DBG()Z

    move-result v3

    const-string v4, "LNfcWifiProtectedSetup.aj"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "around() : call(* NfcWifiProtectedSetup.parse(..) : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 31
    .local v1, "key":Ljava/lang/String;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 33
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 34
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 38
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/nfc/LNfcWifiProtectedSetup;->ajc$inlineAccessFieldGet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_LNfcWifiProtectedSetup$DBG()Z

    move-result v2

    const-string v3, "LNfcWifiProtectedSetup.aj"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/nfc/NfcWifiProtectedSetup;->ajc$privFieldGet$com_android_nfc_LNfcWifiProtectedSetup$com_android_nfc_NfcWifiProtectedSetup$MAX_NETWORK_KEY_SIZE_BYTES()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_1

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1
.end method
