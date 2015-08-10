.class public Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;
.super Ljava/lang/Object;
.source "LConfirmConnectToWifiNetworkActivity.aj"


# annotations
.annotation runtime Lcom/lge/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lcom/lge/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "LConfirmConnectToWifiNetworkActivity.aj"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/utils/LNfcLog;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->DBG:Z

    .line 18
    invoke-static {}, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$postClinit()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_android_nfc_LConfirmConnectToWifiNetworkActivity$1$b5349c5fproceed(Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "this"    # Landroid/app/AlertDialog$Builder;
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

    check-cast v0, Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static final ajc$if$48f(Landroid/net/wifi/WifiManager;Z)Z
    .locals 0
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p1, "enabled"    # Z

    .prologue
    .line 32
    return p1
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_LConfirmConnectToWifiNetworkActivity$com_android_nfc_LConfirmConnectToWifiNetworkActivity$DBG()Z
    .locals 1

    .prologue
    .line 1
    sget-boolean v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->DBG:Z

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_android_nfc_LConfirmConnectToWifiNetworkActivity$com_android_nfc_LConfirmConnectToWifiNetworkActivity$TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_LConfirmConnectToWifiNetworkActivity$com_android_nfc_LConfirmConnectToWifiNetworkActivity$DBG(Z)V
    .locals 0

    .prologue
    .line 1
    sput-boolean p0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->DBG:Z

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_android_nfc_LConfirmConnectToWifiNetworkActivity$com_android_nfc_LConfirmConnectToWifiNetworkActivity$TAG(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    sput-object p0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;

    invoke-direct {v0}, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;-><init>()V

    sput-object v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;

    return-void
.end method

.method public static aspectOf()Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;
    .locals 3

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_android_nfc_LConfirmConnectToWifiNetworkActivity"

    sget-object v2, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/lge/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;

    return-object v0
.end method

.method public static hasAspect()Z
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$perSingletonInstance:Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ajc$after$com_android_nfc_LConfirmConnectToWifiNetworkActivity$3$3166bff3(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
    .param p2, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/After;
        argNames = "activity,wifiManager"
        value = "(execution(* ConfirmConnectToWifiNetworkActivity.doConnect(..)) && (target(activity) && args(wifiManager)))"
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->ajc$privFieldGet$com_android_nfc_LConfirmConnectToWifiNetworkActivity$com_android_nfc_ConfirmConnectToWifiNetworkActivity$mAlertDialog(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 57
    .local v0, "isAlertDialogShowing":Z
    sget-boolean v1, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->DBG:Z

    const-string v2, "LConfirmConnectToWifiNetworkActivity.aj"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after() : execution(ConfirmConnectToWifiNetworkActivity.doConnect(..)) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    goto :goto_0
.end method

.method public ajc$around$com_android_nfc_LConfirmConnectToWifiNetworkActivity$1$b5349c5f(Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "ajc$aroundClosure"    # Lcom/lge/aspectj/runtime/internal/AroundClosure;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Around;
        argNames = "builder,ajc$aroundClosure"
        value = "newAlertDialog_create(builder)"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$inlineAccessFieldGet$com_android_nfc_LConfirmConnectToWifiNetworkActivity$com_android_nfc_LConfirmConnectToWifiNetworkActivity$DBG()Z

    move-result v0

    const-string v1, "LConfirmConnectToWifiNetworkActivity.aj"

    const-string v2, "around() : call(AlertDialog.Builder.create())"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 38
    const v0, 0x7f080016

    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 39
    const v1, 0x7f080015

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-static {p1, p2}, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->ajc$around$com_android_nfc_LConfirmConnectToWifiNetworkActivity$1$b5349c5fproceed(Landroid/app/AlertDialog$Builder;Lcom/lge/aspectj/runtime/internal/AroundClosure;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public ajc$before$com_android_nfc_LConfirmConnectToWifiNetworkActivity$2$84183156(Landroid/net/wifi/WifiManager;Z)V
    .locals 4
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Before;
        argNames = "wifiManager,enabled"
        value = "setWifiEnabled(wifiManager, enabled)"
    .end annotation

    .prologue
    .line 46
    sget-boolean v1, Lcom/android/nfc/LConfirmConnectToWifiNetworkActivity;->DBG:Z

    const-string v2, "LConfirmConnectToWifiNetworkActivity.aj"

    const-string v3, "around() : call(* WifiManager.setWifiEnabled(..))"

    invoke-static {v1, v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 48
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 49
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 50
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 52
    :cond_1
    return-void
.end method

.method public synthetic ajc$pointcut$$newAlertDialog_create$2dc(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "builder"
        value = "(within(com.android.nfc.ConfirmConnectToWifiNetworkActivity) && (target(builder) && call(* android.app.AlertDialog$Builder.create(..))))"
    .end annotation

    .prologue
    .line 25
    return-void
.end method

.method public synthetic ajc$pointcut$$setWifiEnabled$3a8(Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/lge/aspectj/lang/annotation/Pointcut;
        argNames = "wifiManager,enabled"
        value = "(within(com.android.nfc.ConfirmConnectToWifiNetworkActivity) && (target(wifiManager) && (args(enabled) && (call(* android.net.wifi.WifiManager.setWifiEnabled(..)) && if(void java.lang.Object.if_())))))"
    .end annotation

    .prologue
    .line 32
    return-void
.end method
