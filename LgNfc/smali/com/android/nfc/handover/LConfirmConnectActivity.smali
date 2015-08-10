.class public Lcom/android/nfc/handover/LConfirmConnectActivity;
.super Ljava/lang/Object;
.source "LConfirmConnectActivity.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "LConfirmConnectActivity.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/handover/LConfirmConnectActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->DBG:Z

    .line 18
    invoke-static {}, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$postClinit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_handover_LConfirmConnectActivity$1$d97e31c0proceed(Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p0, "this"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/lge/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic ajc$around$com_android_nfc_handover_LConfirmConnectActivity$2$89bf015aproceed(Lcom/android/nfc/handover/ConfirmConnectActivity;Ljava/lang/CharSequence;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p0, "this"    # Lcom/android/nfc/handover/ConfirmConnectActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/lge/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$DBG()Z
    .locals 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$DBG(Z)V
    .locals 0

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/handover/LConfirmConnectActivity;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$TAG(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/handover/LConfirmConnectActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/handover/LConfirmConnectActivity;

    invoke-direct {v0}, Lcom/android/nfc/handover/LConfirmConnectActivity;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$perSingletonInstance:Lcom/android/nfc/handover/LConfirmConnectActivity;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/handover/LConfirmConnectActivity;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$perSingletonInstance:Lcom/android/nfc/handover/LConfirmConnectActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_handover_LConfirmConnectActivity"

    sget-object v2, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$perSingletonInstance:Lcom/android/nfc/handover/LConfirmConnectActivity;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$perSingletonInstance:Lcom/android/nfc/handover/LConfirmConnectActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ajc$around$com_android_nfc_handover_LConfirmConnectActivity$1$d97e31c0(Landroid/content/Context;ILcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "context,theme,ajc$aroundClosure"
        value = "(call(AlertDialog.Builder.new(Context, int)) && (within(ConfirmConnectActivity) && args(context, theme)))"
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$inlineAccessFieldGet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$DBG()Z

    move-result v0

    const-string v1, "LConfirmConnectActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.new(..))"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public ajc$around$com_android_nfc_handover_LConfirmConnectActivity$2$89bf015a(Lcom/android/nfc/handover/ConfirmConnectActivity;Ljava/lang/CharSequence;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;
    .locals 4
    .param p1, "activity"    # Lcom/android/nfc/handover/ConfirmConnectActivity;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "activity,message,ajc$aroundClosure"
        value = "(call(* AlertDialog.Builder.setMessage(CharSequence)) && (this(activity) && args(message)))"
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$inlineAccessFieldGet$com_android_nfc_handover_LConfirmConnectActivity$com_android_nfc_handover_LConfirmConnectActivity$DBG()Z

    move-result v1

    const-string v2, "LConfirmConnectActivity.aj"

    const-string v3, "around() : call(* AlertDialog.Builder.setMessage(CharSequence))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/android/nfc/handover/LConfirmConnectActivity;->ajc$around$com_android_nfc_handover_LConfirmConnectActivity$2$89bf015aproceed(Lcom/android/nfc/handover/ConfirmConnectActivity;Ljava/lang/CharSequence;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    return-object v1
.end method
