.class public Lcom/android/nfc/NfcApplication;
.super Landroid/app/Application;
.source "NfcApplication.java"


# static fields
.field static final NFC_PROCESS:Ljava/lang/String; = "com.android.nfc"

.field static final TAG:Ljava/lang/String; = "NfcApplication"


# instance fields
.field mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 38
    return-void
.end method

.method private static final init$_aroundBody0(Lcom/android/nfc/NfcApplication;Landroid/app/Application;)Lcom/android/nfc/NfcService;
    .locals 1

    .prologue
    new-instance v0, Lcom/android/nfc/NfcService;

    .line 62
    invoke-direct {v0, p1}, Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method private static final init$_aroundBody1$advice(Lcom/android/nfc/NfcApplication;Landroid/app/Application;Lcom/android/nfc/LNfcApplication;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/NfcService;
    .locals 3
    .param p0, "ajc$this"    # Lcom/android/nfc/NfcApplication;
    .param p1, "nfcApplication"    # Landroid/app/Application;
    .param p2, "ajc$aspectInstance"    # Lcom/android/nfc/LNfcApplication;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;

    .prologue
    .line 28
    invoke-static {p2}, Lcom/android/nfc/LNfcApplication;->ajc$inlineAccessFieldGet$com_android_nfc_LNfcApplication$com_android_nfc_LNfcApplication$mApplication(Lcom/android/nfc/LNfcApplication;)Lcom/android/nfc/NfcApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    .line 29
    .local v0, "nfcconfigure":Lcom/lge/nfcconfig/NfcConfigure;
    iget-object v1, v0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance(Ljava/util/Map;)Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 30
    new-instance v1, Lcom/android/nfc/VNfcService;

    invoke-static {p2}, Lcom/android/nfc/LNfcApplication;->ajc$inlineAccessFieldGet$com_android_nfc_LNfcApplication$com_android_nfc_LNfcApplication$mApplication(Lcom/android/nfc/LNfcApplication;)Lcom/android/nfc/NfcApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/nfc/VNfcService;-><init>(Landroid/app/Application;)V

    return-object v1
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 42
    invoke-static {}, Lcom/android/nfc/LNfcApplication;->aspectOf()Lcom/android/nfc/LNfcApplication;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/nfc/LNfcApplication;->ajc$before$com_android_nfc_LNfcApplication$1$ac19b458(Lcom/android/nfc/NfcApplication;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 44
    const/4 v3, 0x0

    .line 50
    .local v3, "isMainProcess":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 51
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 52
    .local v4, "processes":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v1, v5

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 55
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 56
    const-string v5, "com.android.nfc"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 60
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    .line 62
    invoke-static {}, Lcom/android/nfc/LNfcApplication;->aspectOf()Lcom/android/nfc/LNfcApplication;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, p0, v5, v6}, Lcom/android/nfc/NfcApplication;->init$_aroundBody1$advice(Lcom/android/nfc/NfcApplication;Landroid/app/Application;Lcom/android/nfc/LNfcApplication;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/NfcService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/NfcApplication;->mNfcService:Lcom/android/nfc/NfcService;

    .line 63
    invoke-static {}, Landroid/view/HardwareRenderer;->enableForegroundTrimming()V

    .line 65
    :cond_2
    return-void
.end method
