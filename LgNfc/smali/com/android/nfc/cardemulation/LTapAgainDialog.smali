.class public Lcom/android/nfc/cardemulation/LTapAgainDialog;
.super Ljava/lang/Object;
.source "LTapAgainDialog.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "LTapAgainDialog.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/LTapAgainDialog;


# instance fields
.field private mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->DBG:Z

    .line 14
    invoke-static {}, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$postClinit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    .line 14
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->DBG:Z

    return v0
.end method

.method static synthetic ajc$around$com_android_nfc_cardemulation_LTapAgainDialog$2$baca3196proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
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

    invoke-static {v0}, Lcom/lge/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$DBG()Z
    .locals 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/LTapAgainDialog;)Lcom/android/nfc/cardemulation/TapAgainDialog;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$DBG(Z)V
    .locals 0

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$TAG(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/LTapAgainDialog;Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    return-void
.end method

.method public static ajc$interMethod$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Lcom/android/nfc/cardemulation/TapAgainDialog;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "ajc$this_"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcITD;
        modifiers = 0x1
        name = "onConfigurationChanged"
        targetType = "com.android.nfc.cardemulation.TapAgainDialog"
    .end annotation

    .prologue
    .line 42
    # getter for: Lcom/android/nfc/cardemulation/LTapAgainDialog;->DBG:Z
    invoke-static {}, Lcom/android/nfc/cardemulation/LTapAgainDialog;->access$0()Z

    move-result v0

    const-string v1, "LTapAgainDialog.aj"

    const-string v2, "add : TapAgainDialog.onConfigurationChanged"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/TapAgainDialog;->ajc$superDispatch$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->ajc$privFieldSet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_TapAgainDialog$mClosedOnRequest(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)V

    .line 45
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_TapAgainDialog$onConfigurationChanged(Lcom/android/nfc/cardemulation/TapAgainDialog;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "ajc$this_"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcITD;
        modifiers = 0x1
        name = "onConfigurationChanged"
        targetType = "com.android.nfc.cardemulation.TapAgainDialog"
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/TapAgainDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/LTapAgainDialog;-><init>()V

    sput-object v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/LTapAgainDialog;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/cardemulation/LTapAgainDialog;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/LTapAgainDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_cardemulation_LTapAgainDialog"

    sget-object v2, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/LTapAgainDialog;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$perSingletonInstance:Lcom/android/nfc/cardemulation/LTapAgainDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ajc$after$com_android_nfc_cardemulation_LTapAgainDialog$1$c3082300(Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "dialog"
        value = "(execution(* TapAgainDialog.onCreate(..)) && this(dialog))"
    .end annotation

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->DBG:Z

    const-string v1, "LTapAgainDialog.aj"

    const-string v2, "after : exceution(TapAgainDialog.onCreate)"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->mDialog:Lcom/android/nfc/cardemulation/TapAgainDialog;

    .line 23
    return-void
.end method

.method public ajc$after$com_android_nfc_cardemulation_LTapAgainDialog$3$2fa04006(Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/nfc/cardemulation/TapAgainDialog;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "dialog"
        value = "(execution(* TapAgainDialog.onStop(..)) && this(dialog))"
    .end annotation

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/nfc/cardemulation/LTapAgainDialog;->DBG:Z

    const-string v1, "LTapAgainDialog.aj"

    const-string v2, "around : exceution(TapAgainDialog.onStop)"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->ajc$privFieldSet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_TapAgainDialog$mClosedOnRequest(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)V

    .line 38
    return-void
.end method

.method public ajc$around$com_android_nfc_cardemulation_LTapAgainDialog$2$baca3196(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V
    .locals 3
    .param p1, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(* CardEmulationManager.onHostCardEmulationDeactivated(..))"
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$DBG()Z

    move-result v0

    const-string v1, "LTapAgainDialog.aj"

    const-string v2, "around : exceution(CardEmulationManager.onHostCardEmulationDeactivated)"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/LTapAgainDialog;)Lcom/android/nfc/cardemulation/TapAgainDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$mDialog(Lcom/android/nfc/cardemulation/LTapAgainDialog;)Lcom/android/nfc/cardemulation/TapAgainDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$inlineAccessFieldGet$com_android_nfc_cardemulation_LTapAgainDialog$com_android_nfc_cardemulation_LTapAgainDialog$DBG()Z

    move-result v0

    const-string v1, "LTapAgainDialog.aj"

    const-string v2, "Activity is Resumed"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/cardemulation/LTapAgainDialog;->ajc$around$com_android_nfc_cardemulation_LTapAgainDialog$2$baca3196proceed(Lcom/lge/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_0
.end method
