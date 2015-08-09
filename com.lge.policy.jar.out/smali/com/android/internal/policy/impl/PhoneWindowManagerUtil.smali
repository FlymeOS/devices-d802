.class Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;
.super Ljava/lang/Object;
.source "PhoneWindowManagerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneWindowManagerUtil"

.field static mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collapsePanels()V
    .locals 3

    .prologue
    .line 258
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 259
    .local v1, "statusBar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 240
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 242
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 243
    const-string v1, "PhoneWindowManagerUtil"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    return-object v0
.end method

.method static getPowerManager()Landroid/os/IPowerManager;
    .locals 3

    .prologue
    .line 140
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 141
    .local v0, "powerManager":Landroid/os/IPowerManager;
    if-nez v0, :cond_0

    .line 142
    const-string v1, "PhoneWindowManagerUtil"

    const-string v2, "Unable to find IPowerManager interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-object v0
.end method

.method static getPowerManagerEx()Landroid/os/IPowerManagerEx;
    .locals 3

    .prologue
    .line 148
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManagerEx;

    move-result-object v0

    .line 149
    .local v0, "powerManagerEx":Landroid/os/IPowerManagerEx;
    if-nez v0, :cond_0

    .line 150
    const-string v1, "PhoneWindowManagerUtil"

    const-string v2, "Unable to find IPowerManagerEx interface."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-object v0
.end method

.method static declared-synchronized getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 249
    const-class v1, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 253
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getTelepcomServiceEx()Lcom/lge/internal/telecom/ITelecomServiceEx;
    .locals 1

    .prologue
    .line 334
    const-string v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telecom/ITelecomServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telecom/ITelecomServiceEx;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 187
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyServiceEx()Lcom/lge/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 182
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method static injectKeyEvent(I)V
    .locals 15
    .param p0, "keyCode"    # I

    .prologue
    .line 77
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 78
    .local v0, "im":Landroid/hardware/input/InputManager;
    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "now":J
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p0

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    invoke-virtual {v14, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 82
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p0

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    invoke-virtual {v14, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 85
    .end local v2    # "now":J
    :cond_0
    return-void
.end method

.method static isAllowedVolumeLongShortcutKeyByMDM()Z
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/cappuccino/IMdm;->isShortcutKeyAllowed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isAutoTestMode()Z
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isGsmOTARunningOrIgnoreKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isFactoryTestOrAutoTestRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFMActive()Z
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    return v0
.end method

.method static isFactoryTestOrAutoTestRunning()Z
    .locals 2

    .prologue
    .line 51
    const-string v0, "ro.factorytest"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sys.allautotest.run"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    const-string v0, "PhoneWindowManagerUtil"

    const-string v1, "Factory test or Auto test is Running."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isGsmOTARunningOrIgnoreKey()Z
    .locals 3

    .prologue
    .line 42
    const-string v0, "true"

    const-string v1, "gsm.lge.ota_is_running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    const-string v1, "gsm.lge.ota_ignoreKey"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isOtaSpActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :cond_0
    const-string v0, "PhoneWindowManagerUtil"

    const-string v1, "Ignore key because of OTA."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isHomeGuestMode()Z
    .locals 2

    .prologue
    .line 269
    const-string v0, "kids"

    const-string v1, "service.plushome.currenthome"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isIdle()Z
    .locals 5

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "isIdle":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 227
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 229
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v1, 0x1

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindowManagerUtil"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static isInLockTaskMode()Z
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 294
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 296
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 301
    :goto_0
    return v2

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerUtil"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isMDMGetLockoutNow()Z
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/cappuccino/IMdm;->getLockoutNow(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNavigationBarKey(I)Z
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 60
    sparse-switch p0, :sswitch_data_0

    .line 72
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method static isOffhook()Z
    .locals 5

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "isOffhook":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 211
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 213
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const/4 v1, 0x1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindowManagerUtil"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static isOtaSpActive()Z
    .locals 5

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "isOtaSpActive":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyServiceEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 280
    .local v2, "telephonyEx":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 282
    :try_start_0
    invoke-interface {v2}, Lcom/lge/internal/telephony/ITelephonyEx;->isOtaSpActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    const/4 v1, 0x1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindowManagerUtil"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static isQPairCallingActive()Z
    .locals 2

    .prologue
    .line 178
    const-string v0, "hfp_enable"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static isRinging()Z
    .locals 5

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "isRinging":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 195
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 197
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const/4 v1, 0x1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindowManagerUtil"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static isSimPinSecure()Z
    .locals 2

    .prologue
    .line 170
    const-string v0, "simpin_secure"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isVTRingingOrDialing()Z
    .locals 5

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "bCallState":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 124
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    const/16 v3, 0x65

    if-ne v0, v3, :cond_2

    .line 132
    :cond_1
    const-string v3, "PhoneWindowManagerUtil"

    const-string v4, "Ignoring LongPress HOME; there\'s a ringing incoming call."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v3, 0x1

    .line 135
    :goto_1
    return v3

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "PhoneWindowManagerUtil"

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static isVVMActive()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {v1, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    .line 163
    .local v0, "isVVMActive":Z
    if-eqz v0, :cond_0

    .line 164
    const-string v1, "PhoneWindowManagerUtil"

    const-string v2, "isVVMActive - STREAM_VOICE_CALL is active."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    return v0
.end method

.method static showLockAppToast(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerEx;

    .line 306
    .local v0, "amEx":Landroid/app/ActivityManagerEx;
    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManagerEx;->showLockTaskToastEx()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindowManagerUtil"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static skipAllKeyByMDM(Landroid/view/KeyEvent;I)Z
    .locals 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    const/16 v1, 0xbb

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 91
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cappuccino/IMdm;->getEnforcePasswordChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "PhoneWindowManagerUtil"

    const-string v2, "LGMDM:switch or home key is locked by server policy!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isNavigationBarKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/lge/cappuccino/IMdm;->getAllowSpecificKey(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    const-string v1, "PhoneWindowManagerUtil"

    const-string v2, "LGMDM:Navigation key is locked by server policy!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static wakeUpAndShowToastForLockTaskMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getPowerManager()Landroid/os/IPowerManager;

    move-result-object v1

    .line 318
    .local v1, "pm":Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->showLockAppToast(Landroid/content/Context;)V

    .line 326
    const/4 v2, 0x1

    .line 328
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :goto_1
    return v2

    .line 321
    .restart local v1    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindowManagerUtil"

    const-string v3, "Unable to reach power manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
