.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation

# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mPowerSaving:Lcom/android/server/PowerSaving3LMService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPowerSaving:Lcom/android/server/PowerSaving3LMService;

    .line 208
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 330
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 204
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 312
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 315
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 318
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 319
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 326
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 321
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 307
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 217
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 222
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 232
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 237
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 238
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 247
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 251
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-string v1, "dalvik.vm.heaputil.systemserver"

    const-string v2, "0.8f"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 255
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 259
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 262
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 265
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 268
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 271
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 276
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 279
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 282
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 283
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 288
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 289
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :catch_0
    move-exception v6

    .line 291
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 345
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 348
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 350
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 357
    :try_start_0
    const-string v3, "com.android.server.power.PowerManagerServiceEx"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 358
    .local v0, "c":Ljava/lang/Class;
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 371
    :try_start_1
    const-string v3, "com.android.server.display.DisplayManagerServiceEx"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 372
    .restart local v0    # "c":Ljava/lang/Class;
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 379
    .end local v0    # "c":Ljava/lang/Class;
    :goto_1
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 382
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "cryptState":Ljava/lang/String;
    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    const-string v3, "SystemServer"

    const-string v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 390
    :cond_0
    :goto_2
    sget-boolean v3, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v3, :cond_1

    .line 391
    const-string v3, "SystemServer"

    const-string v5, "PowerSaving3LM"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v3, Lcom/android/server/PowerSaving3LMService;

    invoke-direct {v3}, Lcom/android/server/PowerSaving3LMService;-><init>()V

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerSaving:Lcom/android/server/PowerSaving3LMService;

    .line 393
    iget-object v3, p0, Lcom/android/server/SystemServer;->mPowerSaving:Lcom/android/server/PowerSaving3LMService;

    invoke-virtual {v3}, Lcom/android/server/PowerSaving3LMService;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    const-string v3, "PowerSaving3LM"

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPowerSaving:Lcom/android/server/PowerSaving3LMService;

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 399
    :goto_3
    const-string v3, "SystemServer"

    const-string v5, "DeviceManager3LM"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v3, "DeviceManager3LM"

    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 405
    :cond_1
    const-string v3, "SystemServer"

    const-string v5, "Package Manager"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v3, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v5, v6, v3, v4}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 408
    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 409
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 411
    const-string v3, "SystemServer"

    const-string v4, "User Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v3, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 415
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 418
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 419
    return-void

    .line 359
    .end local v1    # "cryptState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "SystemServer"

    const-string v5, "PowerManagerServiceEx not found "

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    goto/16 :goto_0

    .line 373
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 374
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "SystemServer"

    const-string v5, "DisplayManagerServiceEx not found "

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    goto/16 :goto_1

    .line 386
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "cryptState":Ljava/lang/String;
    :cond_2
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string v3, "SystemServer"

    const-string v5, "Device encrypted - only parsing core apps"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_2

    .line 396
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerSaving:Lcom/android/server/PowerSaving3LMService;

    goto/16 :goto_3

    .line 406
    :cond_4
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 4

    .prologue
    .line 426
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 430
    :try_start_0
    const-string v2, "com.android.server.BatteryServiceEx"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 431
    .local v0, "c":Ljava/lang/Class;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 439
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 443
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 444
    return-void

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "SystemServer"

    const-string v3, "BatteryServiceEx not found "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/BatteryService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_0
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1551
    const/4 v4, 0x0

    .line 1552
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1553
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1556
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1559
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1560
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1562
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1564
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1565
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1566
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1575
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1568
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1569
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1572
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1573
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 131

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 452
    .local v3, "context":Landroid/content/Context;
    const/16 v34, 0x0

    .line 453
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v54, 0x0

    .line 454
    .local v54, "contentService":Lcom/android/server/content/ContentService;
    const/16 v119, 0x0

    .line 455
    .local v119, "vibrator":Lcom/android/server/VibratorService;
    const/16 v36, 0x0

    .line 456
    .local v36, "alarm":Landroid/app/IAlarmManager;
    const/16 v99, 0x0

    .line 457
    .local v99, "mountService":Lcom/android/server/MountService;
    const/16 v87, 0x0

    .line 458
    .local v87, "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    const/4 v7, 0x0

    .line 459
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 460
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v101, 0x0

    .line 461
    .local v101, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v49, 0x0

    .line 462
    .local v49, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v102, 0x0

    .line 463
    .local v102, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v111, 0x0

    .line 464
    .local v111, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v130, 0x0

    .line 465
    .local v130, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 466
    .local v41, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v118, 0x0

    .line 467
    .local v118, "usb":Lcom/android/server/usb/UsbService;
    const/16 v109, 0x0

    .line 468
    .local v109, "serial":Lcom/android/server/SerialService;
    const/16 v105, 0x0

    .line 469
    .local v105, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v46, 0x0

    .line 470
    .local v46, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v83, 0x0

    .line 471
    .local v83, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v62, 0x0

    .line 472
    .local v62, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v114, 0x0

    .line 473
    .local v114, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v52, 0x0

    .line 474
    .local v52, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v39, 0x0

    .line 475
    .local v39, "audioService":Landroid/media/AudioService;
    const/16 v44, 0x0

    .line 477
    .local v44, "ccMode":Lcom/android/server/CCModeService;
    const/16 v78, 0x0

    .line 480
    .local v78, "fastDownload":Lcom/lge/net/FastDownloadService;
    const/16 v98, 0x0

    .line 482
    .local v98, "mmsService":Lcom/android/server/MmsServiceBroker;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v74

    .line 483
    .local v74, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v71

    .line 484
    .local v71, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v68

    .line 485
    .local v68, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v76

    .line 486
    .local v76, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v70

    .line 487
    .local v70, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    .line 488
    .local v75, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v73

    .line 489
    .local v73, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v72

    .line 490
    .local v72, "disableNetwork":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v85

    .line 491
    .local v85, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_digitalPenCapable#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v63

    .line 493
    .local v63, "digitalPenCapable":Z
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    .line 496
    .local v67, "disableAtlas":Z
    const-string v4, "ro.lge.lguiversion"

    const-string v5, "4.1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v90

    .line 497
    .local v90, "lgUiVersion":D
    const-string v4, "persist.lg.data.fds_prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 498
    .local v80, "fdsProperty":Ljava/lang/String;
    const-string v4, "0"

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide v4, 0x4010cccccccccccdL    # 4.2

    cmpg-double v4, v90, v4

    if-gez v4, :cond_33

    const-string v4, ""

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_0
    const/16 v69, 0x1

    .line 503
    .local v69, "disableFastDownloadService":Z
    :goto_0
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 506
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v115, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v115

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4e

    .line 511
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v115, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v115

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 513
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 516
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v35, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 523
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4f

    move-object/from16 v34, v35

    .line 528
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_1
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    const/4 v4, 0x1

    :goto_2
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v54

    .line 532
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 535
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v120, Lcom/android/server/VibratorService;

    move-object/from16 v0, v120

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 537
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .local v120, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v4, "vibrator"

    move-object/from16 v0, v120

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 539
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v53, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_50

    .line 541
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v4, "consumer_ir"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 544
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v36

    .line 547
    const-string v4, "SystemServer"

    const-string v5, "CCModeService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v45, Lcom/android/server/CCModeService;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Lcom/android/server/CCModeService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_51

    .line 549
    .end local v44    # "ccMode":Lcom/android/server/CCModeService;
    .local v45, "ccMode":Lcom/android/server/CCModeService;
    :try_start_7
    const-string v4, "CCModeService"

    move-object/from16 v0, v45

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 551
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v126

    .line 553
    .local v126, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v126

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 555
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v84, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v84

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_52

    .line 558
    .end local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v84, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    const/4 v4, 0x1

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_36

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v84

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v130

    .line 564
    const-string v4, "window"

    move-object/from16 v0, v130

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 565
    const-string v4, "input"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v4, v130

    invoke-static {v0, v4}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v130

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 569
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v84

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 570
    invoke-virtual/range {v84 .. v84}, Lcom/android/server/input/InputManagerService;->start()V

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 578
    if-eqz v85, :cond_37

    .line 579
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_5
    move-object/from16 v44, v45

    .end local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v44    # "ccMode":Lcom/android/server/CCModeService;
    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v114, v115

    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v83, v84

    .end local v84    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .line 597
    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .end local v126    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    :goto_6
    const/16 v112, 0x0

    .line 598
    .local v112, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v107, 0x0

    .line 599
    .local v107, "notification":Landroid/app/INotificationManager;
    const/16 v81, 0x0

    .line 600
    .local v81, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v124, 0x0

    .line 601
    .local v124, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v89, 0x0

    .line 602
    .local v89, "location":Lcom/android/server/LocationManagerService;
    const/16 v55, 0x0

    .line 603
    .local v55, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v116, 0x0

    .line 604
    .local v116, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v93, 0x0

    .line 605
    .local v93, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v37, 0x0

    .line 607
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v121, 0x0

    .line 608
    .local v121, "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    const/16 v95, 0x0

    .line 610
    .local v95, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v60, 0x0

    .line 614
    .local v60, "dataScheduler":Lcom/lge/data/DataSchedulerService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 618
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v82, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v82

    move-object/from16 v1, v130

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 620
    .end local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v82, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string v4, "input_method"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4d

    move-object/from16 v81, v82

    .line 626
    .end local v82    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 636
    :cond_1
    :goto_8
    :try_start_c
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 641
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 642
    if-nez v74, :cond_3

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 649
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 651
    :try_start_e
    const-string v4, "com.android.server.MountServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 652
    .local v43, "c":Ljava/lang/Class;
    const/16 v51, 0x0

    .line 653
    .local v51, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v43, :cond_2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v51

    if-eqz v51, :cond_2

    .line 654
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/MountService;

    move-object/from16 v99, v0
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 661
    .end local v43    # "c":Ljava/lang/Class;
    .end local v51    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_2
    :goto_a
    :try_start_f
    const-string v4, "mount"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 669
    :cond_3
    :goto_b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 675
    :goto_c
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4c

    .line 682
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_40

    .line 683
    if-nez v73, :cond_6

    .line 685
    :try_start_12
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_a

    .line 689
    :try_start_13
    const-string v4, "com.android.server.LockSettingsServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 690
    .restart local v43    # "c":Ljava/lang/Class;
    if-eqz v43, :cond_4

    .line 691
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v51

    .line 692
    .restart local v51    # "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v51, :cond_4

    .line 693
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/LockSettingsService;

    move-object/from16 v93, v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    .end local v51    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_4
    move-object/from16 v94, v93

    .line 699
    .end local v43    # "c":Ljava/lang/Class;
    .end local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v94, "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_e
    if-nez v94, :cond_3f

    .line 700
    :try_start_14
    new-instance v93, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v93

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4b

    .line 703
    .end local v94    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_f
    :try_start_15
    const-string v4, "lock_settings"

    move-object/from16 v0, v93

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 708
    :goto_10
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 714
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 717
    :cond_6
    if-nez v75, :cond_8

    .line 719
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 722
    :try_start_17
    const-string v4, "com.android.server.statusbar.StatusBarManagerServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    const/16 v43, 0x0

    .line 723
    .restart local v43    # "c":Ljava/lang/Class;
    if-eqz v43, :cond_7

    .line 724
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-class v8, Lcom/android/server/wm/WindowManagerService;

    aput-object v8, v4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    .line 725
    .local v57, "ctor":Ljava/lang/reflect/Constructor;
    if-eqz v57, :cond_7

    .line 726
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v130, v4, v5

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v112, v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 734
    .end local v43    # "c":Ljava/lang/Class;
    .end local v57    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_7
    :goto_11
    if-eqz v112, :cond_flyme_0

    :try_start_18
    const-string v4, "statusbar"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .line 740
    :cond_8
    :goto_12
    if-nez v73, :cond_9

    .line 742
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 750
    :cond_9
    :goto_13
    if-nez v72, :cond_a

    .line 752
    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    :cond_a
    :goto_14
    if-nez v73, :cond_b

    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v117, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    .line 764
    .end local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v117, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1c
    const-string v4, "textservices"

    move-object/from16 v0, v117

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4a

    move-object/from16 v116, v117

    .line 770
    .end local v117    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_b
    :goto_15
    if-nez v72, :cond_3e

    .line 772
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v103, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v103

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    .line 774
    .end local v102    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v103, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1e
    const-string v4, "network_score"

    move-object/from16 v0, v103

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_49

    move-object/from16 v102, v103

    .line 781
    .end local v103    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v102    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_16
    :try_start_1f
    const-string v4, "com.android.server.net.NetworkStatsServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 782
    .restart local v43    # "c":Ljava/lang/Class;
    if-eqz v43, :cond_c

    .line 783
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    const-class v8, Landroid/os/INetworkManagementService;

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-class v8, Landroid/app/IAlarmManager;

    aput-object v8, v4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v51

    .line 785
    .restart local v51    # "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v51, :cond_c

    .line 786
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v7, v4, v5

    const/4 v5, 0x2

    aput-object v36, v4, v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/net/NetworkStatsService;

    move-object v6, v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    .end local v51    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_c
    move-object/from16 v104, v6

    .line 797
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v43    # "c":Ljava/lang/Class;
    .local v104, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_17
    if-nez v104, :cond_3d

    .line 799
    :try_start_20
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v6, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v36

    invoke-direct {v6, v3, v7, v0}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    .line 804
    .end local v104    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_18
    :try_start_21
    const-string v4, "netstats"

    invoke-static {v4, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_48

    .line 810
    :goto_19
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_13

    .line 815
    .end local v101    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_23
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_47

    .line 820
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 832
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePppoeAndSambaService(Lcom/android/server/SystemServer;)V

    :try_start_24
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v50, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v50

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 847
    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v50, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string v4, "connectivity"

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 848
    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 849
    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_46

    move-object/from16 v49, v50

    .line 855
    .end local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_1b
    if-nez v69, :cond_e

    .line 857
    :try_start_26
    const-string v4, "fast_download"

    const-string v5, "add fast_download service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    new-instance v79, Lcom/lge/net/FastDownloadService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3, v7, v6}, Lcom/lge/net/FastDownloadService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    .line 859
    .end local v78    # "fastDownload":Lcom/lge/net/FastDownloadService;
    .local v79, "fastDownload":Lcom/lge/net/FastDownloadService;
    :try_start_27
    const-string v4, "fast_download"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_45

    move-object/from16 v78, v79

    .line 867
    .end local v79    # "fastDownload":Lcom/lge/net/FastDownloadService;
    .restart local v78    # "fastDownload":Lcom/lge/net/FastDownloadService;
    :cond_e
    :goto_1c
    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v111

    .line 869
    const-string v4, "servicediscovery"

    move-object/from16 v0, v111

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_16

    .line 875
    :goto_1d
    :try_start_29
    const-string v4, "SystemServer"

    const-string v5, "DPM Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {v3}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    .line 882
    :goto_1e
    if-nez v73, :cond_f

    .line 884
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18

    .line 892
    :cond_f
    :goto_1f
    if-nez v73, :cond_10

    .line 894
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "LG Encryption Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v88, Lcom/android/server/LGEncryptionService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/LGEncryptionService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 896
    .end local v87    # "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    .local v88, "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    :try_start_2c
    const-string v4, "encryption"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_44

    move-object/from16 v87, v88

    .line 907
    .end local v88    # "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    .restart local v87    # "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    :cond_10
    :goto_20
    if-eqz v99, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_11

    .line 908
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 912
    :cond_11
    if-eqz v34, :cond_12

    .line 913
    :try_start_2d
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 919
    :cond_12
    :goto_21
    if-eqz v54, :cond_13

    .line 920
    :try_start_2e
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1b

    .line 926
    :cond_13
    :goto_22
    :try_start_2f
    const-string v4, "com.android.server.notification.NotificationManagerServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 927
    .restart local v43    # "c":Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_2f} :catch_1c

    .line 932
    .end local v43    # "c":Ljava/lang/Class;
    :goto_23
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v107

    .line 934
    move-object/from16 v0, v107

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 937
    :try_start_30
    const-string v4, "com.android.server.storage.DeviceStorageMonitorServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 938
    .restart local v43    # "c":Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_30} :catch_1d

    .line 944
    .end local v43    # "c":Ljava/lang/Class;
    :goto_24
    if-nez v70, :cond_14

    .line 946
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v92, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1e

    .line 948
    .end local v89    # "location":Lcom/android/server/LocationManagerService;
    .local v92, "location":Lcom/android/server/LocationManagerService;
    :try_start_32
    const-string v4, "location"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_43

    move-object/from16 v89, v92

    .line 954
    .end local v92    # "location":Lcom/android/server/LocationManagerService;
    .restart local v89    # "location":Lcom/android/server/LocationManagerService;
    :goto_25
    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v56, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v56

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1f

    .line 956
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v56, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_34
    const-string v4, "country_detector"

    move-object/from16 v0, v56

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_42

    move-object/from16 v55, v56

    .line 962
    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_14
    :goto_26
    const-string v4, "VZW"

    const-string v5, "ro.build.target_operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 964
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "Vzw Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v122, Lcom/vzw/location/server/VzwLocationManagerService;

    move-object/from16 v0, v122

    invoke-direct {v0, v3}, Lcom/vzw/location/server/VzwLocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_20

    .line 966
    .end local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .local v122, "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    :try_start_36
    const-string v4, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v122

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_41

    move-object/from16 v121, v122

    .line 972
    .end local v122    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    :cond_15
    :goto_27
    if-nez v73, :cond_16

    .line 974
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .line 983
    :cond_16
    :goto_28
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_22

    .line 990
    :goto_29
    if-nez v73, :cond_18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 993
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_24

    .line 995
    :try_start_3a
    const-string v4, "com.android.server.wallpaper.WallpaperManagerServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v43

    .line 996
    .restart local v43    # "c":Ljava/lang/Class;
    const/16 v51, 0x0

    .line 997
    .restart local v51    # "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v43, :cond_17

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v51

    if-eqz v51, :cond_17

    .line 998
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v124, v0
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3a} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_24

    .line 1004
    .end local v43    # "c":Ljava/lang/Class;
    .end local v51    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_17
    :goto_2a
    :try_start_3b
    const-string v4, "wallpaper"

    move-object/from16 v0, v124

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_24

    .line 1010
    :cond_18
    :goto_2b
    if-nez v71, :cond_19

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1012
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v4, "android.media.AudioServiceEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v40

    .line 1014
    .local v40, "audioServiceClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v58

    .line 1015
    .local v58, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/media/AudioService;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v58

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/AudioService;

    move-object/from16 v39, v0

    .line 1017
    const-string v4, "audio"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_25

    .line 1023
    .end local v40    # "audioServiceClass":Ljava/lang/Class;
    .end local v58    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/media/AudioService;>;"
    :cond_19
    :goto_2c
    if-nez v73, :cond_1a

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1027
    :cond_1a
    if-nez v71, :cond_1b

    .line 1029
    :try_start_3d
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v83

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v83

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_26

    .line 1038
    :cond_1b
    :goto_2d
    if-nez v73, :cond_1e

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1043
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1047
    :cond_1d
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance v110, Lcom/android/server/SerialService;

    move-object/from16 v0, v110

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_27

    .line 1050
    .end local v109    # "serial":Lcom/android/server/SerialService;
    .local v110, "serial":Lcom/android/server/SerialService;
    :try_start_3f
    const-string v4, "serial"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_40

    move-object/from16 v109, v110

    .line 1056
    .end local v110    # "serial":Lcom/android/server/SerialService;
    .restart local v109    # "serial":Lcom/android/server/SerialService;
    :cond_1e
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1062
    if-nez v73, :cond_21

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1067
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1071
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1077
    :cond_21
    :try_start_40
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_28

    .line 1088
    :goto_2f
    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_29

    .line 1095
    :goto_30
    if-nez v72, :cond_22

    .line 1097
    :try_start_42
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    new-instance v106, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v106

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2a

    .end local v105    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v106, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v105, v106

    .line 1104
    .end local v106    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v105    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_22
    :goto_31
    if-nez v71, :cond_23

    .line 1106
    :try_start_43
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v47, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2b

    .line 1108
    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v47, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_44
    const-string v4, "commontime_management"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_3f

    move-object/from16 v46, v47

    .line 1114
    .end local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_23
    :goto_32
    if-nez v72, :cond_24

    .line 1116
    :try_start_45
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 1123
    :cond_24
    :goto_33
    if-nez v73, :cond_25

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1128
    :cond_25
    if-nez v73, :cond_26

    if-nez v67, :cond_26

    .line 1130
    :try_start_46
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v38, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .line 1132
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v38, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_47
    const-string v4, "assetatlas"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_3e

    move-object/from16 v37, v38

    .line 1139
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_26
    :goto_34
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_THEMEICON:Z

    const/4 v4, 0x0

    if-eqz v4, :cond_27

    :try_start_48
    const-string v4, "SystemServer"

    const-string v5, "ThemeIconManager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const-string v4, "themeicon"

    new-instance v5, Lcom/android/server/thm/ThemeIconManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/thm/ThemeIconManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    .line 1153
    :cond_27
    :goto_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1157
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1165
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1171
    :cond_2a
    :try_start_49
    const-string v4, "SystemServer"

    const-string v5, "DataScheduler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    new-instance v61, Lcom/lge/data/DataSchedulerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v3}, Lcom/lge/data/DataSchedulerService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2f

    .line 1173
    .end local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .local v61, "dataScheduler":Lcom/lge/data/DataSchedulerService;
    :try_start_4a
    const-string v4, "lgdatascheduler"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_3d

    move-object/from16 v60, v61

    .line 1179
    .end local v61    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .restart local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    :goto_36
    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1181
    :try_start_4b
    const-string v4, "KT UCA"

    const-string v5, "KT UCA Service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-string v4, "ktuca"

    new-instance v5, Landroid/ktuca/KtUcaService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_30

    .line 1188
    :cond_2b
    :goto_37
    if-nez v73, :cond_2c

    .line 1190
    :try_start_4c
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    new-instance v96, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v96

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_31

    .line 1192
    .end local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v96, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_4d
    const-string v4, "media_router"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_3c

    move-object/from16 v95, v96

    .line 1197
    .end local v96    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1202
    :try_start_4e
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_32

    .line 1210
    :cond_2c
    :goto_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1212
    const-string v4, "ro.bluetooth.wipower"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    .line 1214
    .local v86, "isWipowerEnabled":Z
    if-eqz v86, :cond_3b

    .line 1216
    :try_start_4f
    const-string v33, "wbc_service"

    .line 1217
    .local v33, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v4, "SystemServer"

    const-string v5, "WipowerBatteryControl Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    new-instance v128, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v128

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1222
    .local v128, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v128

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v127

    .line 1223
    .local v127, "wbcClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v127

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 1224
    .local v59, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v129

    .line 1225
    .local v129, "wbcObject":Ljava/lang/Object;
    const-string v4, "SystemServer"

    const-string v5, "Successfully loaded WbcService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v4, "wbc_service"

    check-cast v129, Landroid/os/IBinder;

    .end local v129    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v129

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_33

    .line 1234
    .end local v33    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v59    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v127    # "wbcClass":Ljava/lang/Class;
    .end local v128    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_3a
    if-eqz v63, :cond_2d

    .line 1236
    :try_start_50
    const-string v4, "SystemServer"

    const-string v5, "Digital Pen Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    new-instance v65, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1240
    .local v65, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v64

    .line 1242
    .local v64, "digitalPenClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v59

    .line 1243
    .restart local v59    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v66

    .line 1244
    .local v66, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v4, "SystemServer"

    const-string v5, "Successfully loaded DigitalPenService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const-string v4, "DigitalPen"

    check-cast v66, Landroid/os/IBinder;

    .end local v66    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v66

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_34

    .line 1251
    .end local v59    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v64    # "digitalPenClass":Ljava/lang/Class;
    .end local v65    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_2d
    :goto_3b
    sget-boolean v4, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v4, :cond_2e

    .line 1254
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v62

    .line 1255
    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 1258
    const-string v4, "ro.3LM.extended"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 1265
    const-string v4, "SystemServer"

    const-string v5, "3LM OEM Extended Api Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v4, "OemExtendedApi3LM"

    new-instance v5, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v8, 0x0

    invoke-direct {v5, v3, v8}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1274
    .end local v86    # "isWipowerEnabled":Z
    :cond_2e
    :goto_3c
    :try_start_51
    const-string v4, "smartcover"

    new-instance v5, Lcom/lge/systemservice/service/SmartCoverService;

    invoke-direct {v5, v3}, Lcom/lge/systemservice/service/SmartCoverService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_35

    .line 1278
    :goto_3d
    sget-boolean v4, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerSaving:Lcom/android/server/PowerSaving3LMService;

    if-eqz v4, :cond_2f

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerSaving:Lcom/android/server/PowerSaving3LMService;

    invoke-virtual {v4, v3}, Lcom/android/server/PowerSaving3LMService;->init(Landroid/content/Context;)V

    .line 1281
    :cond_2f
    if-nez v73, :cond_30

    .line 1282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1287
    :cond_30
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v108

    .line 1288
    .local v108, "safeMode":Z
    if-eqz v108, :cond_3c

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1291
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1298
    :goto_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v98

    .end local v98    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v98, Lcom/android/server/MmsServiceBroker;

    .line 1303
    .restart local v98    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v4, v130

    move-object/from16 v5, v124

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_52
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_36

    .line 1308
    :goto_3f
    if-eqz v93, :cond_31

    .line 1310
    :try_start_53
    invoke-virtual/range {v93 .. v93}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_37

    .line 1317
    :cond_31
    :goto_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1322
    :try_start_54
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_38

    .line 1327
    :goto_41
    if-eqz v108, :cond_32

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1334
    :cond_32
    invoke-virtual/range {v130 .. v130}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v48

    .line 1335
    .local v48, "config":Landroid/content/res/Configuration;
    new-instance v97, Landroid/util/DisplayMetrics;

    invoke-direct/range {v97 .. v97}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1336
    .local v97, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v123

    check-cast v123, Landroid/view/WindowManager;

    .line 1337
    .local v123, "w":Landroid/view/WindowManager;
    invoke-interface/range {v123 .. v123}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v97

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1338
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v48

    move-object/from16 v1, v97

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1342
    :try_start_55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_39

    .line 1348
    :goto_42
    :try_start_56
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_3a

    .line 1355
    :goto_43
    :try_start_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v108

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_3b

    .line 1361
    :goto_44
    move-object/from16 v11, v99

    .line 1362
    .local v11, "mountServiceF":Lcom/android/server/MountService;
    move-object v13, v7

    .line 1363
    .local v13, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v14, v6

    .line 1364
    .local v14, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v15, v2

    .line 1365
    .local v15, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v16, v49

    .line 1366
    .local v16, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v12, v102

    .line 1368
    .local v12, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v78

    .line 1370
    .local v17, "fastDownloadF":Lcom/lge/net/FastDownloadService;
    move-object/from16 v19, v124

    .line 1371
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v81

    .line 1372
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v89

    .line 1373
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v55

    .line 1374
    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v105

    .line 1375
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v46

    .line 1376
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v116

    .line 1377
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v112

    .line 1378
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v37

    .line 1379
    .local v28, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v29, v83

    .line 1380
    .local v29, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v30, v114

    .line 1382
    .local v30, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v24, v121

    .line 1383
    .local v24, "vzw_locationF":Lcom/vzw/location/server/VzwLocationManagerService;
    move-object/from16 v31, v95

    .line 1384
    .local v31, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v39

    .line 1385
    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v32, v98

    .line 1392
    .local v32, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v32}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/lge/net/FastDownloadService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/vzw/location/server/VzwLocationManagerService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1539
    return-void

    .line 498
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "mountServiceF":Lcom/android/server/MountService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "fastDownloadF":Lcom/lge/net/FastDownloadService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "vzw_locationF":Lcom/vzw/location/server/VzwLocationManagerService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v29    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v30    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v31    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v48    # "config":Landroid/content/res/Configuration;
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .end local v69    # "disableFastDownloadService":Z
    .end local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v89    # "location":Lcom/android/server/LocationManagerService;
    .end local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v97    # "metrics":Landroid/util/DisplayMetrics;
    .end local v107    # "notification":Landroid/app/INotificationManager;
    .end local v108    # "safeMode":Z
    .end local v112    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .end local v123    # "w":Landroid/view/WindowManager;
    .end local v124    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v101    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_33
    const/16 v69, 0x0

    goto/16 :goto_0

    .line 524
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v69    # "disableFastDownloadService":Z
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v77

    .line 525
    .local v77, "e":Ljava/lang/Throwable;
    :goto_45
    :try_start_58
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_1

    goto/16 :goto_1

    .line 592
    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v77

    move-object/from16 v114, v115

    .line 593
    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v77, "e":Ljava/lang/RuntimeException;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_46
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 529
    .end local v77    # "e":Ljava/lang/RuntimeException;
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_34
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 559
    .end local v44    # "ccMode":Lcom/android/server/CCModeService;
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v126    # "watchdog":Lcom/android/server/Watchdog;
    :cond_35
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    :cond_36
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 580
    :cond_37
    :try_start_59
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_38

    .line 581
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 592
    :catch_2
    move-exception v77

    move-object/from16 v44, v45

    .end local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v44    # "ccMode":Lcom/android/server/CCModeService;
    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v114, v115

    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v83, v84

    .end local v84    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_46

    .line 582
    .end local v44    # "ccMode":Lcom/android/server/CCModeService;
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    :cond_38
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 584
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 585
    :cond_39
    if-eqz v68, :cond_3a

    .line 586
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 588
    :cond_3a
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v42, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_2

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v42, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_5a
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_5a} :catch_53

    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_5

    .end local v45    # "ccMode":Lcom/android/server/CCModeService;
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v84    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .end local v126    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v44    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .restart local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v89    # "location":Lcom/android/server/LocationManagerService;
    .restart local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v107    # "notification":Landroid/app/INotificationManager;
    .restart local v112    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v124    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v77

    .local v77, "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v77

    .local v77, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5b
    const-string v4, "SystemServer"

    const-string v5, "Error while creating MountServiceEx."

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v100, Lcom/android/server/MountService;

    move-object/from16 v0, v100

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_7

    .end local v99    # "mountService":Lcom/android/server/MountService;
    .local v100, "mountService":Lcom/android/server/MountService;
    move-object/from16 v99, v100

    .end local v100    # "mountService":Lcom/android/server/MountService;
    .restart local v99    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_a

    .end local v77    # "e":Ljava/lang/ClassNotFoundException;
    :catch_7
    move-exception v77

    .local v77, "e":Ljava/lang/Throwable;
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v77

    .local v77, "e":Ljava/lang/Exception;
    :try_start_5c
    const-string v4, "SystemServer"

    const-string v5, "Error while creating LockSettingsServiceEx."

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_a

    move-object/from16 v94, v93

    .end local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v94    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_e

    .end local v77    # "e":Ljava/lang/Exception;
    .end local v94    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_a
    move-exception v77

    .local v77, "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v77

    .local v77, "e":Ljava/lang/Exception;
    :try_start_5d
    :cond_flyme_0
    const-string v4, "SystemServer"

    const-string v5, "Could not load com.android.server.statusbar.StatusBarManagerServiceEx."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v113, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v113

    move-object/from16 v1, v130

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_c

    .end local v112    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v113, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v112, v113

    .end local v113    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v112    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_11

    .end local v77    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v77

    .local v77, "e":Ljava/lang/Throwable;
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v77

    .local v77, "e":Ljava/lang/Exception;
    const-string v4, "SystemServer"

    const-string v5, "Error while creating NetworkStatsServiceEx."

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v104, v6

    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v104    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_17

    .end local v77    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v77

    move-object/from16 v6, v104

    .end local v104    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v77, "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v77

    move-object/from16 v2, v101

    .end local v101    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v4, "fast_download"

    const-string v5, "Failure starting fast_download service"

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v4, "starting LGEncryptionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v77

    .local v77, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "SystemServer"

    const-string v5, "NotificationManagerserviceEx not found "

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_23

    .end local v77    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1d
    move-exception v77

    .restart local v77    # "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "SystemServer"

    const-string v5, "DeviceStorageMonitorServiceEx not found "

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_24

    .end local v77    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1e
    move-exception v77

    .local v77, "e":Ljava/lang/Throwable;
    :goto_50
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v4, "starting Vzw Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v77

    .local v77, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5e
    const-string v4, "SystemServer"

    const-string v5, "Error while creating WallpaperManagerServiceEx."

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v125, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v125

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_24

    .end local v124    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v125, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v124, v125

    .end local v125    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v124    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_2a

    .end local v77    # "e":Ljava/lang/ClassNotFoundException;
    :catch_24
    move-exception v77

    .local v77, "e":Ljava/lang/Throwable;
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting ThemeIconManager"

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_56
    const-string v4, "starting DataScheduler"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "KT UCA"

    const-string v5, "Failure starting KT UCA Service"

    move-object/from16 v0, v77

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .end local v77    # "e":Ljava/lang/Throwable;
    .restart local v86    # "isWipowerEnabled":Z
    :catch_33
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .end local v77    # "e":Ljava/lang/Throwable;
    :cond_3b
    const-string v4, "SystemServer"

    const-string v5, "Wipower not supported"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    :catch_34
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .end local v77    # "e":Ljava/lang/Throwable;
    .end local v86    # "isWipowerEnabled":Z
    :catch_35
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SmartCover"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .end local v77    # "e":Ljava/lang/Throwable;
    .restart local v108    # "safeMode":Z
    :cond_3c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3e

    :catch_36
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .end local v77    # "e":Ljava/lang/Throwable;
    .restart local v48    # "config":Landroid/content/res/Configuration;
    .restart local v97    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v123    # "w":Landroid/view/WindowManager;
    :catch_39
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .end local v77    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v77

    .restart local v77    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .end local v48    # "config":Landroid/content/res/Configuration;
    .end local v77    # "e":Ljava/lang/Throwable;
    .end local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v97    # "metrics":Landroid/util/DisplayMetrics;
    .end local v108    # "safeMode":Z
    .end local v123    # "w":Landroid/view/WindowManager;
    .restart local v96    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_3c
    move-exception v77

    move-object/from16 v95, v96

    .end local v96    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_57

    .end local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .restart local v61    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    :catch_3d
    move-exception v77

    move-object/from16 v60, v61

    .end local v61    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .restart local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    goto/16 :goto_56

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_3e
    move-exception v77

    move-object/from16 v37, v38

    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_55

    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3f
    move-exception v77

    move-object/from16 v46, v47

    .end local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_54

    .end local v109    # "serial":Lcom/android/server/SerialService;
    .restart local v110    # "serial":Lcom/android/server/SerialService;
    :catch_40
    move-exception v77

    move-object/from16 v109, v110

    .end local v110    # "serial":Lcom/android/server/SerialService;
    .restart local v109    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_53

    .end local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v122    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    :catch_41
    move-exception v77

    move-object/from16 v121, v122

    .end local v122    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    goto/16 :goto_52

    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_42
    move-exception v77

    move-object/from16 v55, v56

    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_51

    .end local v89    # "location":Lcom/android/server/LocationManagerService;
    .restart local v92    # "location":Lcom/android/server/LocationManagerService;
    :catch_43
    move-exception v77

    move-object/from16 v89, v92

    .end local v92    # "location":Lcom/android/server/LocationManagerService;
    .restart local v89    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_50

    .end local v87    # "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    .restart local v88    # "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    :catch_44
    move-exception v77

    move-object/from16 v87, v88

    .end local v88    # "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    .restart local v87    # "lgEncryptionService":Lcom/android/server/LGEncryptionService;
    goto/16 :goto_4f

    .end local v78    # "fastDownload":Lcom/lge/net/FastDownloadService;
    .restart local v79    # "fastDownload":Lcom/lge/net/FastDownloadService;
    :catch_45
    move-exception v77

    move-object/from16 v78, v79

    .end local v79    # "fastDownload":Lcom/lge/net/FastDownloadService;
    .restart local v78    # "fastDownload":Lcom/lge/net/FastDownloadService;
    goto/16 :goto_4e

    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_46
    move-exception v77

    move-object/from16 v49, v50

    .end local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_4d

    :catch_47
    move-exception v77

    goto/16 :goto_4c

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v101    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_48
    move-exception v77

    goto/16 :goto_4b

    .end local v102    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v103    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_49
    move-exception v77

    move-object/from16 v102, v103

    .end local v103    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v102    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_4a

    .end local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v117    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_4a
    move-exception v77

    move-object/from16 v116, v117

    .end local v117    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_49

    .end local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v94    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_4b
    move-exception v77

    move-object/from16 v93, v94

    .end local v94    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_48

    :catch_4c
    move-exception v4

    goto/16 :goto_d

    .end local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v82    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_4d
    move-exception v77

    move-object/from16 v81, v82

    .end local v82    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_47

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .end local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v89    # "location":Lcom/android/server/LocationManagerService;
    .end local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v107    # "notification":Landroid/app/INotificationManager;
    .end local v112    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .end local v124    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4e
    move-exception v77

    goto/16 :goto_46

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4f
    move-exception v77

    move-object/from16 v114, v115

    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_46

    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    :catch_50
    move-exception v77

    move-object/from16 v114, v115

    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_46

    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    :catch_51
    move-exception v77

    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v114, v115

    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_46

    .end local v44    # "ccMode":Lcom/android/server/CCModeService;
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    :catch_52
    move-exception v77

    move-object/from16 v44, v45

    .end local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v44    # "ccMode":Lcom/android/server/CCModeService;
    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v114, v115

    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_46

    .line 590
    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v44    # "ccMode":Lcom/android/server/CCModeService;
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v119    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v126    # "watchdog":Lcom/android/server/Watchdog;
    :catch_53
    move-exception v77

    move-object/from16 v44, v45

    .line 621
    .end local v45    # "ccMode":Lcom/android/server/CCModeService;
    .restart local v44    # "ccMode":Lcom/android/server/CCModeService;
    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v114, v115

    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v83, v84

    .end local v84    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v42

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v119, v120

    .end local v120    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_46

    .line 524
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v126    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_54
    move-exception v77

    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_45

    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v115    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "dataScheduler":Lcom/lge/data/DataSchedulerService;
    .restart local v81    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v89    # "location":Lcom/android/server/LocationManagerService;
    .restart local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v95    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v104    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v107    # "notification":Landroid/app/INotificationManager;
    .restart local v112    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v114    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v116    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v121    # "vzw_location":Lcom/vzw/location/server/VzwLocationManagerService;
    .restart local v124    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_3d
    move-object/from16 v6, v104

    .end local v104    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_18

    :cond_3e
    move-object/from16 v2, v101

    .end local v101    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_1e

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v94    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v101    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_3f
    move-object/from16 v93, v94

    .end local v94    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v93    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_f

    :cond_40
    move-object/from16 v2, v101

    .end local v101    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3c
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1543
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1546
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1547
    return-void
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
