.class final Lcom/android/server/power/NotifierEx;
.super Lcom/android/server/power/Notifier;
.source "NotifierEx.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifierEx"


# instance fields
.field private mEnableWirelessChargingAlignment:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/NotifierEx;->mEnableWirelessChargingAlignment:Z

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_enable_wireless_charging_alignment:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/NotifierEx;->mEnableWirelessChargingAlignment:Z

    .line 32
    return-void
.end method


# virtual methods
.method public onInteractiveStateChangeFinished(Z)V
    .locals 4
    .param p1, "interactive"    # Z

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/NotifierEx;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    if-nez p1, :cond_0

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/NotifierEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/lge/R$bool;->config_lcd_oled:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 73
    const-string v1, "PowerManagerNotifierEx"

    const-string v3, "onInteractiveStateChangeFinished() : Final code is called...."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/android/server/power/NotifierEx;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManagerEx;

    invoke-virtual {v1}, Landroid/app/StatusBarManagerEx;->setIconShift()V

    .line 77
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-super {p0, p1}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V

    .line 83
    :goto_0
    return-void

    .line 77
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "PowerManagerNotifierEx"

    const-string v2, "StatusBar Service is not alive. "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    invoke-super {p0, p1}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    invoke-super {p0, p1}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V

    throw v1
.end method

.method public onWirelessChargingStarted()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/server/power/NotifierEx;->mEnableWirelessChargingAlignment:Z

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0}, Lcom/android/server/power/Notifier;->onWirelessChargingStarted()V

    .line 91
    :cond_0
    return-void
.end method

.method protected playWirelessChargingStartedSound()V
    .locals 5

    .prologue
    .line 36
    const-string v3, "true"

    const-string v4, "sys.allautotest.run"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    iget-object v3, p0, Lcom/android/server/power/NotifierEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wireless_charging_started_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "soundPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 41
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/server/power/NotifierEx;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 43
    .local v0, "sfx":Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 44
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 45
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 51
    .end local v0    # "sfx":Landroid/media/Ringtone;
    .end local v1    # "soundPath":Ljava/lang/String;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/NotifierEx;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 52
    return-void
.end method

.method protected sendNextBroadcast()V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/power/NotifierEx;->mBroadcastedPowerState:I

    if-nez v0, :cond_0

    .line 58
    iget-boolean v0, p0, Lcom/android/server/power/NotifierEx;->mPendingWakeUpBroadcast:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/NotifierEx;->mPendingGoToSleepBroadcast:Z

    if-eqz v0, :cond_0

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 65
    return-void
.end method
