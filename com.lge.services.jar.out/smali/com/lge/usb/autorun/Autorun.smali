.class public Lcom/lge/usb/autorun/Autorun;
.super Ljava/lang/Object;
.source "Autorun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/usb/autorun/Autorun$autorunTimerTask;,
        Lcom/lge/usb/autorun/Autorun$UsbPlugCheckTimerTask;,
        Lcom/lge/usb/autorun/Autorun$UsbHandler;
    }
.end annotation


# static fields
.field public static AUTORUN_DELAY_TIME:I = 0x0

.field private static final AUTORUN_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/misc/usb_autorun"

.field private static final DEBUG:Z = true

.field private static HARD_DISCONNECTED_DELAY_TIME:I = 0x0

.field private static final MSG_AUTORUN_UPDATE:I = 0x2

.field private static final MSG_USB_PLUG:I = 0x1

.field private static final MSG_USB_UNPLUG:I = 0x0

.field public static final PDK:Z = false

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final USB_STATE_PATH:Ljava/lang/String; = "DEVPATH=/devices/virtual/android_usb/android0"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAutorunObservered:Z

.field mAutorunTimer:Ljava/util/Timer;

.field private mBootCompleted:Z

.field protected final mContext:Landroid/content/Context;

.field private mHandler:Lcom/lge/usb/autorun/Autorun$UsbHandler;

.field private mSetupWizardRunning:Z

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field mUsbPlugTimer:Ljava/util/Timer;

.field private mUsbStateObservered:Z

.field mUsbStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbUnplugged:Z

.field private no_multiple_conf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x3e8

    sput v0, Lcom/lge/usb/autorun/Autorun;->HARD_DISCONNECTED_DELAY_TIME:I

    .line 56
    const/16 v0, 0x7530

    sput v0, Lcom/lge/usb/autorun/Autorun;->AUTORUN_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v5, "AUTORUN"

    iput-object v5, p0, Lcom/lge/usb/autorun/Autorun;->TAG:Ljava/lang/String;

    .line 39
    iput-object v7, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 40
    iput-object v7, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    .line 42
    iput-boolean v8, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z

    .line 44
    iput-boolean v6, p0, Lcom/lge/usb/autorun/Autorun;->mBootCompleted:Z

    .line 46
    iput-boolean v6, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z

    .line 47
    iput-boolean v6, p0, Lcom/lge/usb/autorun/Autorun;->mUsbStateObservered:Z

    .line 65
    iput-boolean v6, p0, Lcom/lge/usb/autorun/Autorun;->mSetupWizardRunning:Z

    .line 68
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$bool;->config_use_no_multiple_conf:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/usb/autorun/Autorun;->no_multiple_conf:Z

    .line 150
    new-instance v5, Lcom/lge/usb/autorun/Autorun$1;

    invoke-direct {v5, p0}, Lcom/lge/usb/autorun/Autorun$1;-><init>(Lcom/lge/usb/autorun/Autorun;)V

    iput-object v5, p0, Lcom/lge/usb/autorun/Autorun;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v5, Lcom/lge/usb/autorun/Autorun$2;

    invoke-direct {v5, p0}, Lcom/lge/usb/autorun/Autorun$2;-><init>(Lcom/lge/usb/autorun/Autorun;)V

    iput-object v5, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    .line 71
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun;->mContext:Landroid/content/Context;

    .line 73
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.lge.setup_wizard.AUTORUNON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v5, p0, Lcom/lge/usb/autorun/Autorun;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lge/usb/autorun/Autorun;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/class/android_usb/android0/state"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "state":Ljava/lang/String;
    const-string v5, "DISCONNECTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z

    .line 85
    :goto_0
    const-string v5, "AUTORUN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] init mUsbUnPlugged value to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] because state was ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v3    # "state":Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "Autorun"

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 90
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 93
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 95
    .local v2, "looper":Landroid/os/Looper;
    :goto_2
    if-nez v2, :cond_1

    .line 96
    const-string v5, "AUTORUN"

    const-string v6, "[AUTORUN] Thread looper is not ready, which waits 100 ms."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-wide/16 v6, 0x32

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :goto_3
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_2

    .line 83
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v4    # "thread":Landroid/os/HandlerThread;
    .restart local v3    # "state":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 86
    .end local v3    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AUTORUN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AUTORUN] Exception is ocurred when read state ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "looper":Landroid/os/Looper;
    .restart local v4    # "thread":Landroid/os/HandlerThread;
    :cond_1
    new-instance v5, Lcom/lge/usb/autorun/Autorun$UsbHandler;

    invoke-direct {v5, p0, v2}, Lcom/lge/usb/autorun/Autorun$UsbHandler;-><init>(Lcom/lge/usb/autorun/Autorun;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/lge/usb/autorun/Autorun;->mHandler:Lcom/lge/usb/autorun/Autorun$UsbHandler;

    .line 108
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun;->callUsbPlugFunction()V

    .line 109
    return-void

    .line 99
    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method static synthetic access$002(Lcom/lge/usb/autorun/Autorun;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/usb/autorun/Autorun;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/lge/usb/autorun/Autorun;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/usb/autorun/Autorun;->mSetupWizardRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/usb/autorun/Autorun;)Lcom/lge/usb/autorun/Autorun$UsbHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mHandler:Lcom/lge/usb/autorun/Autorun$UsbHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/usb/autorun/Autorun;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/usb/autorun/Autorun;->judgeUsbPlugState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/usb/autorun/Autorun;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lge/usb/autorun/Autorun;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lge/usb/autorun/Autorun;)Landroid/os/UEventObserver;
    .locals 1
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/usb/autorun/Autorun;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/usb/autorun/Autorun;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z

    return p1
.end method

.method private judgeUsbPlugState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 371
    const-string v0, "DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/lge/usb/autorun/Autorun;->startUsbPlugTimer()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/lge/usb/autorun/Autorun;->stopUsbPlugTimer()V

    goto :goto_0
.end method

.method private startUsbPlugTimer()V
    .locals 6

    .prologue
    .line 379
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 381
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 383
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    new-instance v2, Lcom/lge/usb/autorun/Autorun$UsbPlugCheckTimerTask;

    invoke-direct {v2, p0}, Lcom/lge/usb/autorun/Autorun$UsbPlugCheckTimerTask;-><init>(Lcom/lge/usb/autorun/Autorun;)V

    sget v3, Lcom/lge/usb/autorun/Autorun;->HARD_DISCONNECTED_DELAY_TIME:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] error!! Timer already have been canceled. but not treate it"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopUsbPlugTimer()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbPlugTimer:Ljava/util/Timer;

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z

    if-eqz v0, :cond_1

    .line 397
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] set mUsbPlugged to false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z

    .line 399
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mHandler:Lcom/lge/usb/autorun/Autorun$UsbHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/usb/autorun/Autorun$UsbHandler;->sendMessage(I)V

    .line 401
    :cond_1
    return-void
.end method


# virtual methods
.method public addUsbDeviceManager(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .param p1, "mgr"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 116
    return-void
.end method

.method protected autorunStartTimer()V
    .locals 6

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun;->autorunStopTimer()V

    .line 474
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] autorunStartTimer : Start timer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    new-instance v2, Lcom/lge/usb/autorun/Autorun$autorunTimerTask;

    invoke-direct {v2, p0}, Lcom/lge/usb/autorun/Autorun$autorunTimerTask;-><init>(Lcom/lge/usb/autorun/Autorun;)V

    sget v3, Lcom/lge/usb/autorun/Autorun;->AUTORUN_DELAY_TIME:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "AUTORUN"

    const-string v2, "[AUTORUN] error!! Timer already have been canceled. but not treate it"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected declared-synchronized autorunStopTimer()V
    .locals 2

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 489
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] autorunStopTimer()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_0
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected callUsbPlugFunction()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbStateObservered:Z

    .line 417
    return-void
.end method

.method public distroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    .line 125
    iput-boolean v1, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z

    .line 126
    iput-boolean v1, p0, Lcom/lge/usb/autorun/Autorun;->mUsbStateObservered:Z

    .line 130
    :cond_0
    return-void
.end method

.method public getCurrentFunction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    const-string v2, "sys.usb.config"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "functions":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 350
    .local v0, "commaIndex":I
    if-lez v0, :cond_0

    .line 351
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 353
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getCurrentFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sConfig"    # Ljava/lang/String;

    .prologue
    .line 361
    const-string v2, ""

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "functions":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 363
    .local v0, "commaIndex":I
    if-lez v0, :cond_0

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 366
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getIsBootCompleted()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mBootCompleted:Z

    return v0
.end method

.method public getIsSetupWizardRunning()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 431
    :try_start_0
    iget-object v6, p0, Lcom/lge/usb/autorun/Autorun;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 432
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "com.android.LGSetupWizard"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 433
    .local v2, "mComponentState":I
    iget-object v6, p0, Lcom/lge/usb/autorun/Autorun;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lez v6, :cond_2

    move v1, v4

    .line 434
    .local v1, "isProvisioned":Z
    :goto_0
    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    :cond_0
    move v4, v5

    .line 444
    .end local v1    # "isProvisioned":Z
    .end local v2    # "mComponentState":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return v4

    .restart local v2    # "mComponentState":I
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v1, v5

    .line 433
    goto :goto_0

    .line 439
    .end local v2    # "mComponentState":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "AUTORUN"

    const-string v6, "[AUTORUN] com.android.LGSetupWizard doesn\'t exist. so consider that the LGSetupWizard ended."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 441
    goto :goto_1

    .line 442
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AUTORUN"

    const-string v6, "[AUTORUN] error is occurred when getApplicationEnabledSetting"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSetupWizardState()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mSetupWizardRunning:Z

    return v0
.end method

.method public getUsbUnplugState()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbUnplugged:Z

    return v0
.end method

.method protected onAutorunUpdateState(Ljava/lang/String;)V
    .locals 8
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "alwaysAsk":Z
    const/4 v3, 0x0

    .line 260
    .local v3, "mDefaultFunctions":Ljava/lang/String;
    const-string v4, "ACK"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun;->autorunStopTimer()V

    .line 322
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v4, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun;->autorunStopTimer()V

    .line 268
    :cond_1
    const-string v4, "change_ask"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    if-ne v0, v7, :cond_3

    .line 272
    const-string v3, "charge_only"

    .line 311
    :cond_2
    :goto_1
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_2
    const-string v4, "AUTORUN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AUTORUN] call setCurrentFunction by Autorun "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0, v3, v7}, Lcom/lge/usb/autorun/Autorun;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 321
    iget-object v4, p0, Lcom/lge/usb/autorun/Autorun;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lge.android.server.usb_connected_popup"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :cond_3
    const-string v4, "AUTORUN"

    const-string v5, "[AUTORUN] alwaysAsk false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    :cond_4
    const-string v4, "change_acm"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 278
    iget-boolean v4, p0, Lcom/lge/usb/autorun/Autorun;->no_multiple_conf:Z

    if-nez v4, :cond_5

    sget v4, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v4, v6, :cond_5

    .line 279
    const-string v3, "auto_conf"

    goto :goto_1

    .line 281
    :cond_5
    const-string v3, "pc_suite"

    goto :goto_1

    .line 283
    :cond_6
    const-string v4, "change_mtp"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 284
    const-string v3, "mtp_only"

    goto :goto_1

    .line 285
    :cond_7
    const-string v4, "change_ptp"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 286
    const-string v3, "ptp_only"

    goto :goto_1

    .line 287
    :cond_8
    const-string v4, "change_charge"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 288
    const-string v3, "charge_only"

    goto :goto_1

    .line 289
    :cond_9
    const-string v4, "change_tether"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 290
    sget-object v3, Lcom/lge/constants/UsbManagerConstants;->USB_FUNCTION_TETHER:Ljava/lang/String;

    goto :goto_1

    .line 291
    :cond_a
    const-string v4, "TIMEOUT"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 292
    const-string v4, "AUTORUN"

    const-string v5, "[AUTORUN] autorun status is TIME OUT !!  "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-boolean v4, p0, Lcom/lge/usb/autorun/Autorun;->no_multiple_conf:Z

    if-nez v4, :cond_d

    sget v4, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    if-lt v4, v6, :cond_d

    .line 297
    const-string v4, "persist.sys.usb.config"

    invoke-virtual {p0, v4}, Lcom/lge/usb/autorun/Autorun;->getCurrentFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "func":Ljava/lang/String;
    const-string v4, "AUTORUN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AUTORUN] when TIMEOUT currentFunction =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v4, "cdrom_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "cdrom_storage,adb"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 300
    :cond_b
    const-string v3, "auto_conf"

    goto/16 :goto_1

    .line 302
    :cond_c
    const-string v4, "persist.sys.usb.config"

    invoke-virtual {p0, v4}, Lcom/lge/usb/autorun/Autorun;->getCurrentFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 305
    .end local v2    # "func":Ljava/lang/String;
    :cond_d
    const-string v3, "mtp_only"

    goto/16 :goto_1

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v4, "AUTORUN"

    const-string v5, "[AUTORUN] Exception wait for termination of PC Launcher, so just skip it"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onBootComplete()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected onSetupWizardEnd()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "AUTORUN"

    const-string v1, "[AUTORUN] receive setup wizard intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun;->autorunStartTimer()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mSetupWizardRunning:Z

    .line 174
    return-void
.end method

.method protected onUsbPlugged()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method protected onUsbUnplugged()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    if-eqz v0, :cond_1

    .line 137
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/misc/usb_autorun"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 139
    iput-boolean v2, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunObservered:Z

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbStateObservered:Z

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 144
    iput-boolean v2, p0, Lcom/lge/usb/autorun/Autorun;->mUsbStateObservered:Z

    .line 148
    :cond_1
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mAutorunTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/lge/usb/autorun/Autorun;->autorunStopTimer()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/lge/usb/autorun/Autorun;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 460
    :cond_1
    return-void
.end method
