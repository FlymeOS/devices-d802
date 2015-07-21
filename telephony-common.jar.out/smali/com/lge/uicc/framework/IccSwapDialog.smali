.class public Lcom/lge/uicc/framework/IccSwapDialog;
.super Landroid/os/Handler;
.source "IccSwapDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;
    }
.end annotation


# static fields
.field private static final EVENT_CARD_STATE_CHANGED:I = 0x1

.field private static final EVENT_TAP_NOSIM_NOTI:I = 0x2

.field private static mInstance:Lcom/lge/uicc/framework/IccSwapDialog;

.field public static mSimInserted:Z

.field private static final mTabletProduct:Z


# instance fields
.field private mCardState:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEccTimer:Ljava/util/Timer;

.field private final mLock:Ljava/lang/Object;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressTimer:Landroid/os/CountDownTimer;

.field private reboot_in_progress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/uicc/framework/IccSwapDialog;->mSimInserted:Z

    .line 61
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/uicc/framework/IccSwapDialog;->mTabletProduct:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v4

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCardState:[Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 64
    iput-object v2, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mEccTimer:Ljava/util/Timer;

    .line 154
    iput-boolean v3, p0, Lcom/lge/uicc/framework/IccSwapDialog;->reboot_in_progress:Z

    .line 224
    iput-object v2, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 225
    iput-object v2, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressTimer:Landroid/os/CountDownTimer;

    .line 75
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, "card_state"

    invoke-static {v0, p0, v4, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 77
    const-string v0, "#operator_cardswap_dialog"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/lge/uicc/framework/LGUICC;->setConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    const-string v0, "tap_no_sim_noti"

    invoke-static {v0, p0, v5, v2}, Lcom/lge/uicc/framework/LGUICC;->registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/lge/uicc/framework/IccSwapDialog;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/uicc/framework/IccSwapDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccSwapDialog;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/uicc/framework/IccSwapDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->requestUIMPowerdown()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/uicc/framework/IccSwapDialog;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lge/uicc/framework/IccSwapDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lge/uicc/framework/IccSwapDialog;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/uicc/framework/IccSwapDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/uicc/framework/IccSwapDialog;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mEccTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/uicc/framework/IccSwapDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/IccSwapDialog;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lge/uicc/framework/IccSwapDialog;->showIccRemovedDialog(I)V

    return-void
.end method

.method static synthetic access$900()Lcom/lge/uicc/framework/IccSwapDialog;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lge/uicc/framework/IccSwapDialog;->mInstance:Lcom/lge/uicc/framework/IccSwapDialog;

    return-object v0
.end method

.method private delayedDialogEmergencyCall()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xbb8

    .line 559
    new-instance v1, Lcom/lge/uicc/framework/IccSwapDialog$6;

    invoke-direct {v1, p0}, Lcom/lge/uicc/framework/IccSwapDialog$6;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;)V

    .line 582
    .local v1, "eccTimerTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mEccTimer:Ljava/util/Timer;

    .line 583
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mEccTimer:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 585
    return-void
.end method

.method private isFTMEnabled()Z
    .locals 4

    .prologue
    .line 515
    const-string v0, "ro.factorytest"

    .line 516
    .local v0, "FACTORY_PROPERTY":Ljava/lang/String;
    const-string v2, "ro.factorytest"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "factoryTestStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTM Property value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 518
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    const/4 v2, 0x1

    .line 521
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFolderTestEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 529
    iget-object v4, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 530
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.lge.foldertest"

    .line 533
    .local v1, "folderTest":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 534
    const-string v4, "because of folderTest is enabled"

    invoke-static {v4}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    const/4 v3, 0x1

    .line 541
    :cond_0
    :goto_0
    return v3

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Exception in isFolderTestProgress"

    invoke-static {v4}, Lcom/lge/uicc/framework/IccSwapDialog;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 499
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 501
    .local v1, "iWm":Landroid/view/IWindowManager;
    if-eqz v1, :cond_0

    .line 502
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 507
    :cond_0
    :goto_0
    return v2

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private isPopupDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 448
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isSetupWizardEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ATT"

    aput-object v3, v2, v1

    const-string v3, "TRF_ATT"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    const-string v1, "No sim pop up is not displayed because of SetupWizard is enabled"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 463
    :goto_0
    return v0

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isFTMEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const-string v1, "fartory mode, do not display"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_1
    const-string v2, "quiet_mode"

    invoke-static {v2, v1}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    const-string v1, "quiet_mode is true"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_2
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isFolderTestEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    const-string v1, "No sim pop up is not displayed because of foldertest is enabled"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 463
    goto :goto_0
.end method

.method private isSetupWizardEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 482
    iget-object v4, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 483
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.android.LGSetupWizard"

    .line 486
    .local v2, "setupWizard":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 487
    const-string v4, "because of SetupWizard is enabled"

    invoke-static {v4}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    const/4 v3, 0x1

    .line 494
    :cond_0
    :goto_0
    return v3

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Exception in isSetupWizardEnabled"

    invoke-static {v4}, Lcom/lge/uicc/framework/IccSwapDialog;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccSwapDialog] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->logd(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IccSwapDialog] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method private onIccAbsentEx()V
    .locals 11

    .prologue
    .line 406
    const-string v7, "onIccAbsentEx"

    invoke-static {v7}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 408
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "VZW"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "ATT"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "TRF_ATT"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "CRK"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 444
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v8, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isPopupDisabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 414
    monitor-exit v8

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 417
    :cond_1
    :try_start_1
    new-instance v4, Lcom/lge/uicc/framework/IccSwapDialog$5;

    invoke-direct {v4, p0}, Lcom/lge/uicc/framework/IccSwapDialog$5;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;)V

    .line 429
    .local v4, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 430
    .local v5, "r":Landroid/content/res/Resources;
    sget v7, Lcom/lge/internal/R$string;->sp_no_simcard_popup_title:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, "title":Ljava/lang/String;
    const v7, 0x104000a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "buttonOkTxt":Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 434
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcom/lge/internal/R$layout;->no_sim_dialog:I

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 436
    .local v3, "layout":Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    sget v10, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v7, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 441
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7d3

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 442
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 443
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private reboot(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-boolean v2, p0, Lcom/lge/uicc/framework/IccSwapDialog;->reboot_in_progress:Z

    if-eqz v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reboot in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/uicc/framework/IccSwapDialog;->reboot_in_progress:Z

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reboot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 164
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 165
    .local v1, "pm":Landroid/os/IPowerManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerManager service died! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerScreenLockTimer(JLandroid/app/ProgressDialog;)V
    .locals 7
    .param p1, "delay"    # J
    .param p3, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 239
    move-object v6, p3

    .line 241
    .local v6, "progressDialog":Landroid/app/ProgressDialog;
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->setLockScreenLockNow()V

    .line 243
    new-instance v0, Lcom/lge/uicc/framework/IccSwapDialog$2;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/uicc/framework/IccSwapDialog$2;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;JJLandroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 253
    iget-object v0, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 254
    return-void
.end method

.method private requestUIMPowerdown()V
    .locals 2

    .prologue
    .line 548
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lge/uicc/framework/IccTools;->getRIL(I)Lcom/android/internal/telephony/RIL;

    move-result-object v0

    .line 549
    .local v0, "ril":Lcom/android/internal/telephony/RIL;
    if-nez v0, :cond_0

    .line 550
    const-string v1, "fails to get RIL"

    invoke-static {v1}, Lcom/lge/uicc/framework/IccSwapDialog;->loge(Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->UIMPowerdownrequest(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private setLockScreenLockNow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 469
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isKeyguardLocked()Z

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isSetupWizardEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 475
    .local v0, "iWm":Landroid/view/IWindowManager;
    if-eqz v0, :cond_0

    .line 476
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static setup()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/lge/uicc/framework/IccSwapDialog;->mInstance:Lcom/lge/uicc/framework/IccSwapDialog;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/lge/uicc/framework/IccSwapDialog;

    invoke-direct {v0}, Lcom/lge/uicc/framework/IccSwapDialog;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/IccSwapDialog;->mInstance:Lcom/lge/uicc/framework/IccSwapDialog;

    .line 71
    :cond_0
    return-void
.end method

.method private showIccAddedDialog(I)V
    .locals 17
    .param p1, "slotId"    # I

    .prologue
    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIccAddedDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 174
    :try_start_0
    new-instance v11, Lcom/lge/uicc/framework/IccSwapDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/lge/uicc/framework/IccSwapDialog$1;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;)V

    .line 192
    .local v11, "listener":Landroid/content/DialogInterface$OnClickListener;
    sget v14, Lcom/lge/internal/R$style;->Theme_LGE_Default_Dialog_Alert:I

    .line 193
    .local v14, "theme":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 194
    .local v13, "r":Landroid/content/res/Resources;
    const v2, 0x1040506

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, "title":Ljava/lang/String;
    const v2, 0x1040507

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, "message":Ljava/lang/String;
    const v2, 0x1040508

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "buttonRestartTxt":Ljava/lang/String;
    const/high16 v2, 0x1040000

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 199
    .local v8, "buttonCancelTxt":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v9, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 205
    .local v10, "dialog":Landroid/app/AlertDialog;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VZW"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 207
    const/4 v2, -0x2

    invoke-virtual {v10, v2, v8, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 212
    :cond_0
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 213
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 214
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 217
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VZW"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 218
    new-instance v2, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V

    invoke-virtual {v2}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;->start()Landroid/os/CountDownTimer;

    .line 221
    :cond_1
    monitor-exit v16

    .line 222
    return-void

    .line 221
    .end local v8    # "buttonCancelTxt":Ljava/lang/String;
    .end local v9    # "buttonRestartTxt":Ljava/lang/String;
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v11    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v14    # "theme":I
    .end local v15    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private showIccRemovedDialog(I)V
    .locals 18
    .param p1, "slotId"    # I

    .prologue
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIccRemovedDialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 260
    :try_start_0
    new-instance v11, Lcom/lge/uicc/framework/IccSwapDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/lge/uicc/framework/IccSwapDialog$3;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;)V

    .line 275
    .local v11, "listener":Landroid/content/DialogInterface$OnClickListener;
    sget v15, Lcom/lge/internal/R$style;->Theme_LGE_Default_Dialog_Alert:I

    .line 276
    .local v15, "theme":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 277
    .local v14, "r":Landroid/content/res/Resources;
    const v2, 0x1040503

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 280
    .local v16, "title":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LGU"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    sget v2, Lcom/lge/internal/R$string;->sim_removed_title_lgu:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 312
    .local v13, "message":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SKT"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "KT"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "DCM"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "SPR"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ATT"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "TRF_ATT"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "CRK"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "KDDI"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 316
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 343
    .local v10, "dialog":Landroid/app/AlertDialog;
    :goto_1
    const v2, 0x104000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "buttonOkTxt":Ljava/lang/String;
    const/high16 v2, 0x1040000

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "buttonCancelTxt":Ljava/lang/String;
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 347
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 348
    const/4 v2, -0x1

    invoke-virtual {v10, v2, v9, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 349
    const-string v2, "proxy.sim_state"

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PIN_REQUIRED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    const/4 v2, -0x2

    invoke-virtual {v10, v2, v8, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 396
    :cond_1
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VZW"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "USC"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 397
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 398
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 399
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 401
    :cond_2
    monitor-exit v17

    .line 402
    return-void

    .line 282
    .end local v8    # "buttonCancelTxt":Ljava/lang/String;
    .end local v9    # "buttonOkTxt":Ljava/lang/String;
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v13    # "message":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SKT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    sget v2, Lcom/lge/internal/R$string;->SKT_STR_USIM_ERR_RECHECK:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 284
    .end local v13    # "message":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "KT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    sget v2, Lcom/lge/internal/R$string;->KT_STR_USIM_ERR_RECHECK:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 286
    .end local v13    # "message":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DCM"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    sget v2, Lcom/lge/internal/R$string;->sp_sim_removed_message_dcm_MLINE:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 288
    .end local v13    # "message":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SPR"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 289
    sget-boolean v2, Lcom/lge/uicc/framework/IccSwapDialog;->mTabletProduct:Z

    if-eqz v2, :cond_7

    .line 290
    sget v2, Lcom/lge/internal/R$string;->sim_removed_message_SPR_CDMA:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 291
    .end local v13    # "message":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 292
    sget v2, Lcom/lge/internal/R$string;->sim_removed_message_SPR_CDMA:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 294
    .end local v13    # "message":Ljava/lang/String;
    :cond_8
    const v2, 0x1040504

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 296
    .end local v13    # "message":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ATT"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "TRF_ATT"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CRK"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 297
    sget v2, Lcom/lge/internal/R$string;->sim_removed_message_confirm:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 299
    .end local v13    # "message":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VZW"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "USC"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isKeyguardLocked()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/lge/uicc/framework/IccSwapDialog;->isSetupWizardEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 301
    :cond_b
    sget v2, Lcom/lge/internal/R$string;->sim_popup_notice_title:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 302
    sget v2, Lcom/lge/internal/R$string;->sim_popup_removed_text:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 304
    .end local v13    # "message":Ljava/lang/String;
    :cond_c
    sget v2, Lcom/lge/internal/R$string;->sim_removed_progress_text:I

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 308
    .end local v13    # "message":Ljava/lang/String;
    :cond_d
    const v2, 0x1040504

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "message":Ljava/lang/String;
    goto/16 :goto_0

    .line 321
    :cond_e
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VZW"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "USC"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 322
    new-instance v2, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 323
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .restart local v10    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 327
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    :cond_f
    const/16 v12, 0xa

    .line 328
    .local v12, "max":I
    new-instance v2, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v15}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v13}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v12}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 334
    new-instance v2, Lcom/lge/uicc/framework/IccSwapDialog$4;

    const/16 v3, 0x2af8

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/uicc/framework/IccSwapDialog$4;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V

    invoke-virtual {v2}, Lcom/lge/uicc/framework/IccSwapDialog$4;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressTimer:Landroid/os/CountDownTimer;

    .line 339
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .restart local v10    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 352
    .end local v12    # "max":I
    .restart local v8    # "buttonCancelTxt":Ljava/lang/String;
    .restart local v9    # "buttonOkTxt":Ljava/lang/String;
    :cond_10
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LGU"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 353
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 354
    const/4 v2, -0x1

    invoke-virtual {v10, v2, v9, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 355
    const/4 v2, -0x2

    invoke-virtual {v10, v2, v8, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 401
    .end local v8    # "buttonCancelTxt":Ljava/lang/String;
    .end local v9    # "buttonOkTxt":Ljava/lang/String;
    .end local v10    # "dialog":Landroid/app/AlertDialog;
    .end local v11    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v13    # "message":Ljava/lang/String;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v15    # "theme":I
    .end local v16    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 356
    .restart local v8    # "buttonCancelTxt":Ljava/lang/String;
    .restart local v9    # "buttonOkTxt":Ljava/lang/String;
    .restart local v10    # "dialog":Landroid/app/AlertDialog;
    .restart local v11    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v13    # "message":Ljava/lang/String;
    .restart local v14    # "r":Landroid/content/res/Resources;
    .restart local v15    # "theme":I
    .restart local v16    # "title":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SKT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 357
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 358
    const/4 v2, -0x3

    invoke-virtual {v10, v2, v9, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 359
    new-instance v2, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V

    invoke-virtual {v2}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    .line 360
    :cond_12
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "KT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 361
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 362
    const/4 v3, -0x3

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v3, v9, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 363
    :cond_13
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "DCM"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 364
    new-instance v2, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;

    const-wide/16 v4, 0xbb8

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V

    invoke-virtual {v2}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    .line 366
    :cond_14
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "KDDI"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 367
    new-instance v2, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;-><init>(Lcom/lge/uicc/framework/IccSwapDialog;JJ)V

    invoke-virtual {v2}, Lcom/lge/uicc/framework/IccSwapDialog$RebootTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    .line 369
    :cond_15
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SPR"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 370
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 371
    const/4 v3, -0x3

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v10, v3, v9, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 373
    :cond_16
    const/4 v2, -0x3

    invoke-virtual {v10, v2, v9, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 375
    :cond_17
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ATT"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "TRF_ATT"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "CRK"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 376
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 377
    const/4 v2, -0x1

    sget v3, Lcom/lge/internal/R$string;->alert_dialog_yes:I

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 378
    const/4 v2, -0x2

    sget v3, Lcom/lge/internal/R$string;->alert_dialog_no:I

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 380
    :cond_18
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "VZW"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "USC"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v13}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 390
    const-wide/16 v2, 0xbb8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/uicc/framework/IccSwapDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/lge/uicc/framework/IccSwapDialog;->registerScreenLockTimer(JLandroid/app/ProgressDialog;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/framework/IccSwapDialog;->loge(Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 93
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 97
    .local v4, "slotId":I
    iget-object v5, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCardState:[Ljava/lang/String;

    aget-object v3, v5, v4

    .line 98
    .local v3, "oldState":Ljava/lang/String;
    const-string v5, "card_state"

    invoke-static {v5, v4}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "newState":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_CARD_STATE_CHANGED: [slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 103
    const-string v5, "persist.radio.apm_sim_not_pwdn"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 104
    const-string v5, "radio_state"

    invoke-static {v5, v4}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    const-string v5, "radio off or unavailable"

    invoke-static {v5}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    const-string v5, "SIM_DETECT_INSERTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "SIM_DETECT_INSERTED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    invoke-direct {p0, v4}, Lcom/lge/uicc/framework/IccSwapDialog;->showIccAddedDialog(I)V

    .line 125
    :cond_2
    :goto_1
    invoke-static {}, Lcom/lge/uicc/framework/IccTools;->isMultiSimEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 126
    const-string v5, "ABSENT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "ABSENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 128
    sget-boolean v5, Lcom/lge/uicc/framework/IccSwapDialog;->mSimInserted:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/lge/uicc/framework/IccSwapDialog;->mTabletProduct:Z

    if-eqz v5, :cond_3

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "VZW"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 129
    :cond_3
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->onIccAbsentEx()V

    .line 139
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/lge/uicc/framework/IccSwapDialog;->mCardState:[Ljava/lang/String;

    aput-object v2, v5, v4

    goto/16 :goto_0

    .line 112
    :cond_5
    const-string v5, "REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "REMOVED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "DCM"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcom/lge/uicc/framework/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 115
    const-string v5, "ril.cdma.emergencyCall"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "isEmergencyCall":Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 117
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->delayedDialogEmergencyCall()V

    goto/16 :goto_0

    .line 122
    .end local v1    # "isEmergencyCall":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, v4}, Lcom/lge/uicc/framework/IccSwapDialog;->showIccRemovedDialog(I)V

    goto :goto_1

    .line 133
    :cond_7
    const-string v5, "PRESENT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "PRESENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 134
    sput-boolean v7, Lcom/lge/uicc/framework/IccSwapDialog;->mSimInserted:Z

    goto :goto_2

    .line 144
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "newState":Ljava/lang/String;
    .end local v3    # "oldState":Ljava/lang/String;
    .end local v4    # "slotId":I
    :pswitch_1
    const-string v5, "EVENT_TAP_NOSIM_NOTI"

    invoke-static {v5}, Lcom/lge/uicc/framework/IccSwapDialog;->logd(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/lge/uicc/framework/IccSwapDialog;->onIccAbsentEx()V

    goto/16 :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
