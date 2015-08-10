.class public Lcom/android/nfc/LNfcApplication;
.super Ljava/lang/Object;
.source "LNfcApplication.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LNfcApplication.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/LNfcApplication;


# instance fields
.field private mApplication:Lcom/android/nfc/NfcApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    :try_start_0
    invoke-static {}, Lcom/android/nfc/LNfcApplication;->ajc$postClinit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/android/nfc/LNfcApplication;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/LNfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    .line 16
    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_LNfcApplication$2$2ce4a662proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/NfcService;
    .locals 1
    .param p0, "this"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_LNfcApplication$com_android_nfc_LNfcApplication$mApplication(Lcom/android/nfc/LNfcApplication;)Lcom/android/nfc/NfcApplication;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/LNfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_LNfcApplication$com_android_nfc_LNfcApplication$mApplication(Lcom/android/nfc/LNfcApplication;Lcom/android/nfc/NfcApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/LNfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/LNfcApplication;

    invoke-direct {v0}, Lcom/android/nfc/LNfcApplication;-><init>()V

    sput-object v0, Lcom/android/nfc/LNfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcApplication;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/LNfcApplication;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LNfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcApplication;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_LNfcApplication"

    sget-object v2, Lcom/android/nfc/LNfcApplication;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/nfc/LNfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcApplication;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LNfcApplication;->ajc$perSingletonInstance:Lcom/android/nfc/LNfcApplication;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ajc$around$com_android_nfc_LNfcApplication$2$2ce4a662(Lcom/lge/aspectj/runtime/internal/AroundClosure;)Lcom/android/nfc/NfcService;
    .locals 3
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "call(NfcService.new(..))"
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/nfc/LNfcApplication;->ajc$inlineAccessFieldGet$com_android_nfc_LNfcApplication$com_android_nfc_LNfcApplication$mApplication(Lcom/android/nfc/LNfcApplication;)Lcom/android/nfc/NfcApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance(Landroid/content/Context;)Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    .line 29
    .local v0, "nfcconfigure":Lcom/lge/nfcconfig/NfcConfigure;
    iget-object v1, v0, Lcom/lge/nfcconfig/NfcConfigure;->mHostCardEmulationScenario:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance(Ljava/util/Map;)Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 30
    new-instance v1, Lcom/android/nfc/VNfcService;

    invoke-static {p0}, Lcom/android/nfc/LNfcApplication;->ajc$inlineAccessFieldGet$com_android_nfc_LNfcApplication$com_android_nfc_LNfcApplication$mApplication(Lcom/android/nfc/LNfcApplication;)Lcom/android/nfc/NfcApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/nfc/VNfcService;-><init>(Landroid/app/Application;)V

    return-object v1
.end method

.method public ajc$before$com_android_nfc_LNfcApplication$1$ac19b458(Lcom/android/nfc/NfcApplication;)V
    .locals 0
    .param p1, "application"    # Lcom/android/nfc/NfcApplication;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Before;
        argNames = "application"
        value = "(execution(* NfcApplication.onCreate(..)) && this(application))"
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/nfc/LNfcApplication;->mApplication:Lcom/android/nfc/NfcApplication;

    .line 23
    return-void
.end method
