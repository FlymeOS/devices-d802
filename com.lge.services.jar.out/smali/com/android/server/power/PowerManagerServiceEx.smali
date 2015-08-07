.class public Lcom/android/server/power/PowerManagerServiceEx;
.super Lcom/android/server/power/PowerManagerService;
.source "PowerManagerServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;,
        Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;,
        Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;,
        Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;,
        Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;,
        Lcom/android/server/power/PowerManagerServiceEx$ConfigurationChangedReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$MaxTimeToLockChangedReceiver;,
        Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;,
        Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;
    }
.end annotation


# static fields
.field private static final ACTION_GET_NEXT_TIMEOUT_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.getNextTime"

.field private static final ACTION_MAMXIMUM_TIME_TOLOCK:Ljava/lang/String; = "com.lge.mdm.ACTION_MAMXIMUM_TIME_TOLOCK"

.field private static final ACTION_REQUEST_NEXT_TIMEOUT_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

.field private static final ACTION_WISESCREEN_COMMAND:Ljava/lang/String; = "com.lge.keepscreenon.KeepScreenOnService.COMMAND"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SMART_COVER:Z

.field private static final DEBUG_SPEW:Z = false

.field private static final DEBUG_WISE_SCREEN:Z = false

.field private static DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I = 0x0

.field private static final DIRTY_BUTTON_STATE:I = 0x1000

.field private static final LONG_KEYLED_TIMEOUT_DELAY:I = 0xbb8

.field private static final MIN_DEVICE_LOCK_TIMEOUT:I = 0x3a98

.field private static final MSG_KEYLED_ENABLED:I = 0x6

.field private static final MSG_KEYLED_TIMEOUT:I = 0x5

.field private static final MSG_UPDATE_EAS_STATE:I = 0x69

.field private static final MSG_UPDATE_FOREGROUND_PKG:I = 0x6a

.field private static final MSG_UPDATE_LOCK_STATE:I = 0x68

.field private static final NOTUSER_DEBUG:Z

.field public static final OFF_BECAUSE_OF_PROX_SENSOR:I = 0x4

.field private static final OPERATOR_VZW:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerServiceEx"

.field private static final WISESCREEN_TIME_MS:I = 0xbb8

.field private static configs:Lcom/lge/config/Configs;


# instance fields
.field private mAlwaysTurnOnKeyLed:Z

.field private mButtonLight:Lcom/android/server/lights/Light;

.field private mCoverOpened:Z

.field private mCoverType:I

.field private mCurrentOrientation:I

.field private mDeviceLockExpired:Z

.field private mDeviceLockTimeoutSetting:I

.field private mEASStateOn:Z

.field private mEarlyIntentSend:Ljava/lang/Runnable;

.field private mEarlyScreenOff:Landroid/content/Intent;

.field private mForegroundPackageName:Ljava/lang/String;

.field private mHDMIConnected:Z

.field private mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

.field private mIsDoneRequestWaitForNegativeProximity:Z

.field private final mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

.field private mIsPowerKeyWhenCalling:Z

.field private mKeyLedEnabled:Z

.field private mKeyLedEnabledByTouchScreen:Z

.field private mKeyLedTimeoutDelay:I

.field private mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

.field private mLPWGController:Lcom/android/server/power/LPWGController;

.field private mNextTimeout:J

.field private mOldKeyLedTimeoutDelay:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

.field private mSilenceFile:Ljava/io/File;

.field private mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

.field mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

.field private mSupportAlignmentUI:Z

.field private mSupportDeviceLock:Z

.field private mSupportWirelessCharging:Z

.field private mSupportWiseScreen:Z

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mUsingPowerkeyScreenOnInCalling:Z

.field private mWirelessChargingEnable:I

.field private mWiseScreenEnable:I

.field private final mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    .line 80
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    .line 108
    const/16 v0, 0xfa0

    sput v0, Lcom/android/server/power/PowerManagerServiceEx;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 148
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->OPERATOR_VZW:Z

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService;-><init>(Landroid/content/Context;)V

    .line 97
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    .line 98
    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    .line 99
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    .line 100
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    .line 101
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    .line 105
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z

    .line 107
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    .line 111
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    .line 112
    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    .line 113
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportAlignmentUI:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabledByTouchScreen:Z

    .line 120
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mOldKeyLedTimeoutDelay:I

    .line 129
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 136
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    invoke-direct {v0, p0, v3}, Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    .line 142
    iput-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    .line 155
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    .line 157
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    .line 1115
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerServiceEx$1;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    .line 1520
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerServiceEx$2;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1531
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerServiceEx$3;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyIntentSend:Ljava/lang/Runnable;

    .line 165
    invoke-static {}, Lcom/lge/config/Configs;->getConfigs()Lcom/lge/config/Configs;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    .line 166
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.EARLY_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyScreenOff:Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyScreenOff:Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method private LGHandleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGUpdateSettingsLocked()V

    .line 993
    return-void
.end method

.method private LGReadConfigurationLocked()V
    .locals 4

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 361
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/lge/internal/R$bool;->support_wisescreen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    .line 362
    sget v1, Lcom/lge/internal/R$bool;->config_enable_wireless_charging:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    .line 363
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSupportWirelessCharging = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget v1, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/lge/internal/R$bool;->config_using_disney_cover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    :cond_0
    const/16 v1, 0x1770

    sput v1, Lcom/android/server/power/PowerManagerServiceEx;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 367
    :cond_1
    sget v1, Lcom/lge/internal/R$bool;->config_power_key_screen_on_in_calling:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    .line 368
    sget v1, Lcom/lge/internal/R$bool;->config_enable_wireless_charging_alignment:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportAlignmentUI:Z

    .line 369
    sget v1, Lcom/lge/internal/R$bool;->support_devicelock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    .line 370
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    if-nez v1, :cond_2

    .line 371
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenDimDurationConfig:I

    .line 373
    :cond_2
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSupportWiseScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMaximumScreenDimDurationConfig = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenDimDurationConfig:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lge/config/Configs;->getConfigs(Landroid/content/Context;)Lcom/lge/config/Configs;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    .line 376
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_3
    return-void
.end method

.method private LGSystemReadyInternalLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 950
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 951
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 952
    .local v1, "lgsensorManager":Landroid/hardware/SensorManager;
    new-instance v3, Lcom/android/server/power/LPWGController;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/power/LPWGController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/SensorManager;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    .line 954
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 955
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 956
    const-string v3, "com.lge.keepscreenon.KeepScreenOnService.requestGetNextTime"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v4, v0, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 959
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 960
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/power/PowerManagerServiceEx$LGUserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v4, v0, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 963
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 964
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 965
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/power/PowerManagerServiceEx$HDMIReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 968
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    if-eqz v3, :cond_0

    .line 969
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 970
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v3, "com.lge.mdm.ACTION_MAMXIMUM_TIME_TOLOCK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/power/PowerManagerServiceEx$MaxTimeToLockChangedReceiver;

    invoke-direct {v4, p0, v8}, Lcom/android/server/power/PowerManagerServiceEx$MaxTimeToLockChangedReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v3, v4, v0, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 978
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 979
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    .line 980
    const-string v3, "keep_screen_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 981
    const-string v3, "gesture_trun_screen_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 982
    const-string v3, "KNOCKON_LOCK_SET"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 983
    const-string v3, "KNOCKON_LENGTH_KEY"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 984
    const-string v3, "KNOCKON_SAME_KEY"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 985
    const-string v3, "power_save_wireless_charge"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 986
    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 987
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->keyLedConfiguration()V

    .line 989
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "lgsensorManager":Landroid/hardware/SensorManager;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

.method private LGUpdateSettingsLocked()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 379
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 380
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 381
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "keep_screen_on"

    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    .line 383
    const-string v2, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WiseScreen] mWiseScreenEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "power_save_wireless_charge"

    invoke-static {v1, v2, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    .line 387
    const-string v2, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WiseScreen] mWirelessChargingEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v2, :cond_0

    .line 390
    const-string v2, "frontkey_led_timeout"

    const/16 v5, 0xbb8

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    .line 392
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mOldKeyLedTimeoutDelay:I

    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    if-eq v2, v5, :cond_0

    .line 393
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 394
    .local v0, "msg":Landroid/os/Message;
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    if-gtz v2, :cond_5

    .line 395
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 396
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 401
    :goto_0
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mOldKeyLedTimeoutDelay:I

    .line 402
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWirelessCharging:Z

    if-eqz v2, :cond_1

    .line 407
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWirelessChargingEnable:I

    if-ne v2, v3, :cond_7

    .line 408
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerServiceEx;->setWirelessCharging(I)V

    .line 414
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    invoke-virtual {v2}, Lcom/android/server/power/LPWGController;->updateSettings()V

    .line 418
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    if-eqz v2, :cond_3

    .line 419
    const-string v2, "lock_screen_lock_after_timeout"

    const/16 v3, 0x3a98

    invoke-static {v1, v2, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    .line 421
    const/16 v2, 0x69

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/power/PowerManagerServiceEx;->sendMessageToHandler(IJ)V

    .line 424
    :cond_3
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 425
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->updatePowerStateLocked()V

    .line 427
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_4
    return-void

    .line 398
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    const v5, 0x7fffffff

    if-lt v2, v5, :cond_6

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 399
    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_6
    move v2, v4

    .line 398
    goto :goto_2

    .line 410
    .end local v0    # "msg":Landroid/os/Message;
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerServiceEx;->setWirelessCharging(I)V

    goto :goto_1
.end method

.method static synthetic access$1202(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->updateCoverStateLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/PowerManagerServiceEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/power/PowerManagerServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->resetPackageName()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/power/PowerManagerServiceEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/PowerManagerServiceEx;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerServiceEx;->sendMessageToHandler(IJ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerServiceEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/power/PowerManagerServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGHandleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->handleKeyLedTimeout()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerServiceEx;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLedEnabled(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->handleDeviceLockTimeout()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->handleEASState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerServiceEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->handleForegroundPackageName()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/power/PowerManagerServiceEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerServiceEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSendNextTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGSendNextTimeoutTask;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerServiceEx;)Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerServiceEx;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHDMIConnected:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerServiceEx;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerServiceEx;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyScreenOff:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/PowerManagerServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/power/PowerManagerServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    return v0
.end method

.method private getKeyguardServiceDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .locals 9

    .prologue
    .line 819
    const/4 v5, 0x0

    .line 820
    .local v5, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v4, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .line 821
    .local v4, "pwm":Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
    const/4 v3, 0x0

    .line 824
    .local v3, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mKeyguardDelegate"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 832
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 833
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 834
    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    move-object v6, v5

    .line 847
    :goto_2
    check-cast v6, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    return-object v6

    .line 825
    .restart local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no such field and so try again to find it !"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 828
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 829
    const-string v6, "mKeyguardDelegate"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto :goto_0

    .line 836
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    const-string v6, "PowerManagerServiceEx"

    const-string v7, "can\'t get field"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 838
    :catch_1
    move-exception v2

    .line 839
    .local v2, "ex":Ljava/lang/NoSuchFieldException;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there is no such field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 846
    goto :goto_2

    .line 840
    .end local v2    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 841
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "there is no such field:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 846
    goto :goto_2

    .line 842
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 843
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IllegalArgumentException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 846
    goto/16 :goto_2

    .line 844
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 845
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "PowerManagerServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t get keyguardservice"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    goto/16 :goto_2
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 1110
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private goToSleepIfSilentResetIsRunning()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 798
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isSilenceFileExist()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 799
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "go to sleep for silent reset!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 802
    :cond_0
    return-void
.end method

.method private handleDeviceLockTimeout()V
    .locals 4

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    if-eqz v0, :cond_1

    .line 1171
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isScreenLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v0, :cond_0

    .line 1173
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "[VEL] wait for end of application a little bit..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    :cond_0
    const/16 v0, 0x6a

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/power/PowerManagerServiceEx;->sendMessageToHandler(IJ)V

    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    .line 1183
    :goto_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1184
    const-string v0, "PowerManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VEL] handleDeviceLockTimeout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDeviceLockExpired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_1
    return-void

    .line 1179
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->lockNow(Landroid/os/Bundle;)V

    .line 1180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    goto :goto_0
.end method

.method private handleEASState()V
    .locals 11

    .prologue
    .line 1278
    const/4 v5, 0x0

    .line 1279
    .local v5, "result":Z
    const-wide/16 v6, 0x0

    .line 1280
    .local v6, "maxTimeToLock":J
    iget-object v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1282
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_2

    .line 1283
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v1

    .line 1284
    .local v1, "componentListInFramwork":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_2

    .line 1285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1286
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.lge.email"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.lge.exchange"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1288
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 1289
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 1290
    const/4 v5, 0x1

    goto :goto_0

    .line 1297
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "componentListInFramwork":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v9, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1298
    :try_start_0
    iput-boolean v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    .line 1299
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    sget-boolean v8, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v8, :cond_3

    .line 1302
    const-string v8, "PowerManagerServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[VEL] handleEASState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDeviceLockTimeoutSettings : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", maxTimeToLock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_3
    iget-boolean v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    if-eqz v8, :cond_5

    .line 1308
    iget v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    const/16 v9, 0x3a98

    if-ge v8, v9, :cond_5

    .line 1309
    const/16 v3, 0x3a98

    .line 1311
    .local v3, "forceLockTimeout":I
    const-wide/16 v8, 0x3a98

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    .line 1312
    long-to-int v3, v6

    .line 1315
    :cond_4
    iget-object v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const/4 v10, -0x2

    invoke-static {v8, v9, v3, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1319
    .end local v3    # "forceLockTimeout":I
    :cond_5
    return-void

    .line 1299
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method private handleForegroundPackageName()V
    .locals 6

    .prologue
    .line 1261
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1263
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1264
    .local v2, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1266
    .local v1, "componentInfo":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    .line 1268
    sget-boolean v3, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v3, :cond_0

    .line 1269
    const-string v3, "PowerManagerServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VEL] handleForegroundPackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_0
    return-void
.end method

.method private handleKeyLedTimeout()V
    .locals 2

    .prologue
    .line 1061
    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "handleKeyLedTimeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1065
    return-void
.end method

.method private isDsdpState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1086
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 1091
    const-string v1, "sys.lge.dsdp.mode"

    const-string v2, "stop"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1093
    :cond_0
    return v0
.end method

.method private isOffhook()Z
    .locals 5

    .prologue
    .line 1097
    const/4 v1, 0x0

    .line 1098
    .local v1, "result":Z
    invoke-static {}, Lcom/android/server/power/PowerManagerServiceEx;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1099
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1101
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1106
    :cond_0
    :goto_0
    return v1

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "PowerManagerServiceEx"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isScreenLock()Z
    .locals 1

    .prologue
    .line 1244
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSilenceFileExist()Z
    .locals 3

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "fileExist":Z
    new-instance v1, Ljava/io/File;

    const-string v2, "/persist-lg/fota/silence_LCDoff.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    .line 808
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSilenceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    const/4 v0, 0x1

    .line 814
    :goto_0
    return v0

    .line 811
    :cond_0
    const-string v1, "PowerManagerServiceEx"

    const-string v2, "there is no silence_LCDoff.txt file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private keyLedConfiguration()V
    .locals 5

    .prologue
    .line 996
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_KEYLED_TIMEOUT:Z

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    .line 1000
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "frontkey_led_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLGSettingsObserver:Lcom/android/server/power/PowerManagerServiceEx$LGSettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1003
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_touchscreen_turn_on_button_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabledByTouchScreen:Z

    .line 1006
    :cond_0
    return-void
.end method

.method private resetPackageName()V
    .locals 1

    .prologue
    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mForegroundPackageName:Ljava/lang/String;

    .line 1275
    return-void
.end method

.method private sendMessageToHandler(IJ)V
    .locals 4
    .param p1, "msg"    # I
    .param p2, "when"    # J

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeMessages(I)V

    .line 1250
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1251
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1253
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    :goto_0
    return-void

    .line 1256
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setKeyLed(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 1037
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v1, :cond_1

    const-string v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1038
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeMessages(I)V

    .line 1039
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-ne v1, v4, :cond_2

    .line 1040
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessSetting:I

    invoke-virtual {v1, v2}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 1041
    sget-object v1, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v1}, Lcom/lge/config/Configs;->logLevel2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turn on KeyLed    mKeyLedTimeoutDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    if-nez v1, :cond_1

    .line 1045
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1046
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1047
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedTimeoutDelay:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1058
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1049
    :cond_2
    if-nez p1, :cond_4

    .line 1050
    sget-object v1, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v1}, Lcom/lge/config/Configs;->logLevel2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1051
    const-string v1, "PowerManagerServiceEx"

    const-string v2, "turn off KeyLed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1054
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    if-nez v1, :cond_1

    .line 1055
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t handle KeyLed... mKeyLedEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setKeyLedEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1009
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_1

    .line 1011
    if-eqz p1, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1016
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1017
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    new-instance v0, Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/server/power/PowerManagerServiceEx$UserPresentReceiver;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 1019
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1031
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    .line 1032
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1034
    :cond_1
    return-void

    .line 1025
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    .line 1026
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1028
    iput-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private setQuickCharging(I)V
    .locals 11
    .param p1, "value"    # I

    .prologue
    .line 1543
    const-string v6, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    .line 1544
    .local v6, "qpnp_charger_path":Ljava/lang/String;
    const-string v0, "/sys/module/charger_controller/parameters/quick_charging_state"

    .line 1545
    .local v0, "charger_controller_path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1547
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v7, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v5, "qpnpPathFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v7, "/sys/module/charger_controller/parameters/quick_charging_state"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v1, "controllerPathFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1550
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/sys/module/qpnp_charger/parameters/quick_charging_state"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1552
    const-string v7, "PowerManagerServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setQuickCharging Mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 1561
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1563
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1569
    .end local v1    # "controllerPathFile":Ljava/io/File;
    .end local v5    # "qpnpPathFile":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 1553
    .restart local v1    # "controllerPathFile":Ljava/io/File;
    .restart local v5    # "qpnpPathFile":Ljava/io/File;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1554
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/sys/module/charger_controller/parameters/quick_charging_state"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1555
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1556
    const-string v7, "PowerManagerServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setQuickCharging Mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 1564
    :catch_0
    move-exception v2

    .line 1565
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "PowerManagerServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setQuickCharging close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1558
    .end local v1    # "controllerPathFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "qpnpPathFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 1559
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "PowerManagerServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setQuickCharging write : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1561
    if-eqz v3, :cond_1

    .line 1563
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1564
    :catch_2
    move-exception v2

    .line 1565
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "PowerManagerServiceEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setQuickCharging close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1561
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    .line 1563
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1566
    :cond_3
    :goto_4
    throw v7

    .line 1564
    :catch_3
    move-exception v2

    .line 1565
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "PowerManagerServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setQuickCharging close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1561
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "controllerPathFile":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v5    # "qpnpPathFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1558
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private setWirelessCharging(I)V
    .locals 8
    .param p1, "value"    # I

    .prologue
    .line 1484
    const-string v3, "/sys/class/power_supply/wireless/enabled"

    .line 1485
    .local v3, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1487
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/power_supply/wireless/enabled"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1489
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, Mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1493
    if-eqz v2, :cond_2

    .line 1495
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 1501
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 1496
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1498
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 1490
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, write : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1493
    if-eqz v1, :cond_0

    .line 1495
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1496
    :catch_2
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PowerManagerServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWirelessCharging, close : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1493
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_1

    .line 1495
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1498
    :cond_1
    :goto_3
    throw v4

    .line 1496
    :catch_3
    move-exception v0

    .line 1497
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWirelessCharging, close : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1493
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 1490
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private updateCoverStateLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 852
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    sget-boolean v1, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v1, :cond_2

    .line 857
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverStateLocked(), mCoverType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCoverOpened="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-eqz v1, :cond_4

    .line 861
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessModeSetting:I

    .line 864
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 867
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isSilenceFileExist()Z

    move-result v1

    if-nez v1, :cond_3

    .line 868
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 897
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v1, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/LPWGController;->updateCoverState(ZI)V

    goto :goto_0

    .line 872
    :cond_4
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 874
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_1

    .line 879
    :sswitch_1
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessModeSetting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 881
    iput v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mScreenBrightnessModeSetting:I

    .line 882
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 883
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    .line 886
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 887
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/power/PowerManagerServiceEx;->wakeUpNoUpdateLocked(JI)Z

    .line 891
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 893
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->updatePowerStateLocked()V

    goto :goto_1

    .line 872
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private updateKeyLedState(I)V
    .locals 2
    .param p1, "dirty"    # I

    .prologue
    const/4 v1, 0x1

    .line 1068
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    .line 1069
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1071
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1072
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-eq v0, v1, :cond_1

    .line 1073
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1076
    :cond_1
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 1077
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    if-eqz v0, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1079
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 1083
    :cond_2
    return-void
.end method

.method private updateWiseScreenLocked(JI)V
    .locals 13
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    const-wide/16 v10, 0xbb8

    const/4 v7, 0x1

    .line 907
    and-int/lit8 v5, p3, 0x26

    if-eqz v5, :cond_3

    .line 908
    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-eqz v5, :cond_3

    .line 909
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 910
    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenEnable:I

    if-ne v5, v7, :cond_3

    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    if-eq v5, v7, :cond_0

    iget v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 912
    :cond_0
    const-wide/16 v0, 0x0

    .line 913
    .local v0, "nextTimeout":J
    const/4 v4, 0x0

    .line 914
    .local v4, "validNextTimeout":Z
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->getSleepTimeoutLocked()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerServiceEx;->getScreenOffTimeoutLocked(I)I

    move-result v3

    .line 915
    .local v3, "screenOffTimeout":I
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerServiceEx;->getScreenDimDurationLocked(I)I

    move-result v2

    .line 917
    .local v2, "screenDimDuration":I
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastWakeTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 918
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    int-to-long v8, v2

    sub-long v0, v6, v8

    .line 919
    cmp-long v5, p1, v0

    if-gez v5, :cond_4

    .line 920
    const/4 v4, 0x1

    .line 921
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    .line 930
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTimeNoChangeLights:J

    iget-wide v8, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastWakeTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 931
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTimeNoChangeLights:J

    int-to-long v8, v3

    add-long v0, v6, v8

    .line 932
    iput-wide v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mNextTimeout:J

    .line 939
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v8, v0, v10

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    .line 940
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    add-long/2addr v8, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 947
    .end local v0    # "nextTimeout":J
    .end local v2    # "screenDimDuration":I
    .end local v3    # "screenOffTimeout":I
    .end local v4    # "validNextTimeout":Z
    :cond_3
    :goto_1
    return-void

    .line 923
    .restart local v0    # "nextTimeout":J
    .restart local v2    # "screenDimDuration":I
    .restart local v3    # "screenOffTimeout":I
    .restart local v4    # "validNextTimeout":Z
    :cond_4
    iget-wide v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTime:J

    int-to-long v8, v3

    add-long v0, v6, v8

    .line 924
    cmp-long v5, p1, v0

    if-gez v5, :cond_1

    .line 925
    const/4 v4, 0x1

    goto :goto_0

    .line 942
    :cond_5
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    sub-long v8, v0, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private wakeUpInProximityPositive(J)Z
    .locals 9
    .param p1, "eventTime"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 572
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v7, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mWakeUpInProximityPositive:Z

    .line 573
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    .line 574
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 575
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move v5, v4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerServiceEx;->userActivityNoUpdateLocked(JIII)Z

    .line 576
    return v7
.end method


# virtual methods
.method protected acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    const/4 v4, 0x1

    .line 432
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_0
    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel3()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel1()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p2, v4, :cond_1

    .line 435
    :cond_0
    const-string v0, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLockInternal: lock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", historyTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    invoke-super/range {p0 .. p8}, Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 444
    const v0, 0xffff

    and-int/2addr v0, p2

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-nez v0, :cond_2

    .line 446
    iput-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 449
    :cond_2
    return-void

    .line 439
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getScreenOffTimeoutLocked(I)I
    .locals 6
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 690
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 691
    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 692
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v0, v2

    .line 704
    :cond_1
    :goto_0
    return v0

    .line 695
    :cond_2
    sget v0, Lcom/android/server/power/PowerManagerServiceEx;->DEFAULT_SCREEN_OFF_TIMEOUT_FOR_SMARTCOVER:I

    .line 697
    .local v0, "timeout":I
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_1

    .line 699
    iget v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 704
    .end local v0    # "timeout":I
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    goto :goto_0
.end method

.method protected goToSleepNoUpdateLocked(JIII)Z
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flag"    # I
    .param p5, "uid"    # I

    .prologue
    .line 581
    invoke-super/range {p0 .. p5}, Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    .line 583
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyIntentSend:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEarlyIntentSend:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->post(Ljava/lang/Runnable;)Z

    .line 588
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    if-eqz v1, :cond_1

    .line 589
    if-eqz v0, :cond_1

    .line 590
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWiseScreenTimeoutTask:Lcom/android/server/power/PowerManagerServiceEx$LGWiseScreenTimeoutTask;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 594
    :cond_1
    if-eqz v0, :cond_2

    .line 595
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V

    .line 598
    :cond_2
    return v0
.end method

.method protected needDisplaySuspendBlockerLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1576
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayReady:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-eqz v2, :cond_1

    .line 1604
    :cond_0
    :goto_0
    return v0

    .line 1579
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1585
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v2, :cond_3

    .line 1587
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 1604
    goto :goto_0

    .line 1591
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 1592
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 779
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->onBootPhase(I)V

    .line 780
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 781
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v1, "smartcover"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    check-cast v0, Lcom/lge/systemservice/core/SmartCoverManager;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    .line 782
    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCover:Lcom/lge/systemservice/core/SmartCoverManager;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSmartCoverCallback:Lcom/lge/systemservice/core/SmartCoverManager$CoverCallback;

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/SmartCoverManager;->registerCallback(Lcom/lge/systemservice/core/ISmartCoverCallback;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_0

    .line 784
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->goToSleepIfSilentResetIsRunning()V

    .line 794
    :cond_1
    return-void

    .line 787
    :cond_2
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v0, :cond_0

    .line 788
    const-string v0, "PowerManagerServiceEx"

    const-string v1, "Can\'t register CoverCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerServiceEx$BinderServiceEx;-><init>(Lcom/android/server/power/PowerManagerServiceEx;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 284
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 286
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 287
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 288
    return-void
.end method

.method protected reallyGoToSleepNoUpdateLocked(JI)Z
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 608
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->reallyGoToSleepNoUpdateLocked(JI)Z

    move-result v0

    .line 610
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/LPWGController;->updateScreenState(Z)V

    .line 613
    :cond_0
    return v0
.end method

.method protected releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    .line 453
    iget-object v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 454
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 455
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 460
    monitor-exit v3

    .line 484
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 464
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    sget-object v2, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v2}, Lcom/lge/config/Configs;->logLevel3()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v2}, Lcom/lge/config/Configs;->logLevel1()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    if-eq v2, v4, :cond_2

    .line 466
    :cond_1
    const-string v2, "PowerManagerServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseWakeLockInternal: lock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Llibcore/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    if-eqz v2, :cond_3

    .line 471
    if-ltz v0, :cond_3

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_3

    .line 473
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    .line 477
    :cond_3
    if-ltz v0, :cond_4

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_4

    .line 478
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 479
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mHandlerEx:Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximitySetTask:Lcom/android/server/power/PowerManagerServiceEx$IsDoneRequestWaitForNegativeProximitySetTask;

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/power/PowerManagerServiceEx$PowerManagerExHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 482
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V

    .line 483
    monitor-exit v3

    goto :goto_0

    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected setHalAutoSuspendModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 759
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isDsdpState()Z

    move-result v0

    .line 760
    .local v0, "isDsdp":Z
    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 761
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running on DSDP mode.. ignore setHalAutoSuspendModeLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V

    goto :goto_0
.end method

.method protected setHalInteractiveModeLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->isDsdpState()Z

    move-result v0

    .line 770
    .local v0, "isDsdp":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 771
    const-string v1, "PowerManagerServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running on DSDP mode.. ignore mHalInteractiveModeEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V

    goto :goto_0
.end method

.method protected shouldNapAtBedTimeLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 710
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v2, :cond_2

    .line 711
    sget-boolean v1, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v1, :cond_1

    .line 712
    const-string v1, "PowerManagerServiceEx"

    const-string v2, "window cover closed.. ignore request for napping.."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDreamsActivateOnSleepSetting:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-nez v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDreamsActivateOnDockSetting:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDockState:I

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected shouldUseProximitySensorLocked()Z
    .locals 2

    .prologue
    .line 750
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v0, :cond_1

    .line 751
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/server/power/PowerManagerService;->shouldUseProximitySensorLocked()Z

    move-result v0

    goto :goto_0
.end method

.method protected shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .locals 7
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 619
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v0

    .line 620
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 621
    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-nez v3, :cond_2

    if-eq p2, v5, :cond_0

    if-ne p2, v2, :cond_2

    .line 623
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 647
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    return v0

    .line 630
    .restart local v0    # "result":Z
    :cond_2
    if-eqz p1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-nez v3, :cond_4

    if-ne p2, v6, :cond_4

    .line 632
    iget v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-ne v3, v5, :cond_3

    move v0, v2

    .line 633
    goto :goto_0

    :cond_3
    move v0, v1

    .line 635
    goto :goto_0

    .line 641
    :cond_4
    if-nez p1, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowered:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPlugType:I

    if-ne v2, v6, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportAlignmentUI:Z

    if-nez v2, :cond_5

    if-nez p3, :cond_1

    :cond_5
    move v0, v1

    .line 644
    goto :goto_0
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .locals 8
    .param p1, "appOpsService"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 292
    iget-object v5, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 293
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 295
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGReadConfigurationLocked()V

    .line 296
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGSystemReadyInternalLocked()V

    .line 297
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerServiceEx;->LGUpdateSettingsLocked()V

    .line 299
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v4, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getKeyguardServiceDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 300
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v4, :cond_4

    .line 301
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "error : while getting keyguardservice!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4, v6}, Lcom/android/server/power/LPWGController;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 310
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 311
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v4, "/persist-lg/chargerlogo/noautoboot"

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x30

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 317
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 321
    if-eqz v2, :cond_2

    .line 323
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    :cond_2
    :goto_1
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v4, "/persist-lg/chargerlogo/batt_reboot_hist"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 332
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    const/16 v4, 0x30

    :try_start_5
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 333
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 337
    if-eqz v1, :cond_3

    .line 339
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 348
    :cond_3
    :goto_2
    :try_start_7
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerEx;

    new-instance v6, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/power/PowerManagerServiceEx$ActivityTrigger;-><init>(Lcom/android/server/power/PowerManagerServiceEx;Lcom/android/server/power/PowerManagerServiceEx$1;)V

    invoke-virtual {v4, v6}, Landroid/app/ActivityManagerEx;->registerActivityTrigger(Lcom/lge/frameworks/IActivityTrigger;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 355
    :goto_3
    :try_start_8
    monitor-exit v5

    .line 356
    return-void

    .line 303
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v6}, Lcom/android/server/power/LPWGController;->setKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v4

    .line 324
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing noautoboot sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_a
    const-string v4, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to set noautoboot 0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 321
    if-eqz v1, :cond_7

    .line 323
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v2, v1

    .line 326
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 324
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing noautoboot sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v2, v1

    .line 326
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    :goto_5
    if-eqz v1, :cond_5

    .line 323
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 326
    :cond_5
    :goto_6
    :try_start_e
    throw v4

    .line 324
    :catch_3
    move-exception v0

    .line 325
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "PowerManagerServiceEx"

    const-string v7, "Exception when closing noautoboot sys node in systemReady()"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 341
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing batt_reboot_hist sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v1, v2

    .line 335
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    :try_start_f
    const-string v4, "PowerManagerServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to set batt_reboot_hist 0 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 337
    if-eqz v1, :cond_3

    .line 339
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 340
    :catch_6
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    const-string v4, "PowerManagerServiceEx"

    const-string v6, "Exception when closing batt_reboot_hist sys node in systemReady()"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_2

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_8
    if-eqz v1, :cond_6

    .line 339
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 342
    :cond_6
    :goto_9
    :try_start_13
    throw v4

    .line 340
    :catch_7
    move-exception v0

    .line 341
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "PowerManagerServiceEx"

    const-string v7, "Exception when closing batt_reboot_hist sys node in systemReady()"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_9

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    goto/16 :goto_3

    .line 337
    :catchall_3
    move-exception v4

    goto :goto_8

    .line 334
    :catch_9
    move-exception v0

    goto :goto_7

    .line 321
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 318
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .local v0, "e":Ljava/io/IOException;
    :cond_7
    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method protected updateDeviceLockStateLocked(JI)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 1146
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1148
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockExpired:Z

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x24

    if-eqz v2, :cond_0

    .line 1151
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDeviceLockTimeoutSetting:I

    int-to-long v2, v2

    add-long v0, p1, v2

    .line 1153
    .local v0, "nextLockTimeout":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 1154
    const/16 v2, 0x68

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/power/PowerManagerServiceEx;->sendMessageToHandler(IJ)V

    .line 1157
    :cond_2
    sget-boolean v2, Lcom/android/server/power/PowerManagerServiceEx;->NOTUSER_DEBUG:Z

    if-eqz v2, :cond_0

    .line 1158
    const-string v2, "PowerManagerServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[VEL] updateDeviceLockStateLocked: mWakefulness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerServiceEx;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUserActivitySummary=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nextLockTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateDisplayPowerStateLocked(I)Z
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    const/4 v2, 0x0

    .line 723
    and-int/lit8 v1, p1, 0x3f

    if-eqz v1, :cond_1

    .line 726
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->getDesiredScreenPolicyLocked()I

    move-result v0

    .line 727
    .local v0, "newScreenState":I
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eq v0, v1, :cond_0

    .line 728
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v1, :cond_0

    .line 731
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerServiceEx;->setKeyLed(Z)V

    .line 735
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerServiceEx;->updateKeyLedState(I)V

    .line 737
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 738
    iget-object v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mWakeUpInProximityPositive:Z

    .line 739
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-nez v1, :cond_1

    .line 740
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 744
    .end local v0    # "newScreenState":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->updateDisplayPowerStateLocked(I)Z

    move-result v1

    return v1
.end method

.method protected updateUserActivitySummaryLocked(JI)V
    .locals 7
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 663
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateUserActivitySummaryLocked(JI)V

    .line 665
    and-int/lit8 v2, p3, 0x26

    if-eqz v2, :cond_0

    .line 666
    sget-object v2, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v2}, Lcom/lge/config/Configs;->logLevel1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastUserActivityTimeNoChangeLights:J

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerServiceEx;->getSleepTimeoutLocked()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/power/PowerManagerServiceEx;->getScreenOffTimeoutLocked(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 668
    .local v0, "nextTimeout":J
    const-string v2, "PowerManagerServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUserActivitySummaryLocked: mWakefulness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    invoke-static {v4}, Lcom/android/server/power/PowerManagerServiceEx;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUserActivitySummary=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUserActivitySummary:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nextTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v0    # "nextTimeout":J
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportWiseScreen:Z

    if-eqz v2, :cond_1

    .line 676
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerServiceEx;->updateWiseScreenLocked(JI)V

    .line 680
    :cond_1
    sget-boolean v2, Lcom/android/server/power/PowerManagerServiceEx;->OPERATOR_VZW:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSupportDeviceLock:Z

    if-eqz v2, :cond_2

    .line 681
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mEASStateOn:Z

    if-eqz v2, :cond_2

    .line 682
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerServiceEx;->updateDeviceLockStateLocked(JI)V

    .line 686
    :cond_2
    return-void
.end method

.method protected updateWakeLockSummaryLocked(I)V
    .locals 3
    .param p1, "dirty"    # I

    .prologue
    .line 652
    invoke-super {p0, p1}, Lcom/android/server/power/PowerManagerService;->updateWakeLockSummaryLocked(I)V

    .line 654
    sget-object v0, Lcom/android/server/power/PowerManagerServiceEx;->configs:Lcom/lge/config/Configs;

    invoke-virtual {v0}, Lcom/lge/config/Configs;->logLevel2()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "PowerManagerServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWakeLockSummaryLocked: mWakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    invoke-static {v2}, Lcom/android/server/power/PowerManagerServiceEx;->wakefulnessToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWakeLockSummary=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakeLockSummary:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    return-void
.end method

.method protected userActivityFromNative(JII)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabled:Z

    if-eqz v0, :cond_0

    .line 489
    packed-switch p3, :pswitch_data_0

    .line 502
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/PowerManagerService;->userActivityFromNative(JII)V

    .line 503
    return-void

    .line 491
    :pswitch_0
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    goto :goto_0

    .line 494
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mKeyLedEnabledByTouchScreen:Z

    if-eqz v0, :cond_0

    .line 495
    iget v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected wakeUpNoUpdateLocked(JI)Z
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 507
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLastSleepTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mBootCompleted:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mSystemReady:Z

    if-nez v4, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v2

    .line 512
    :cond_1
    const/4 v1, 0x0

    .line 513
    .local v1, "wakeUpInProximityPositive":Z
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mUsingPowerkeyScreenOnInCalling:Z

    if-eqz v4, :cond_2

    .line 514
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    if-eqz v4, :cond_2

    .line 516
    const-string v4, "PowerManagerServiceEx"

    const-string v5, "Screen-on is requested by power key in proximity positive"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsPowerKeyWhenCalling:Z

    .line 518
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerServiceEx;->wakeUpInProximityPositive(J)Z

    move-result v1

    .line 522
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    if-nez v4, :cond_3

    .line 523
    const-string v4, "PowerManagerServiceEx"

    const-string v5, "Screen-on is requested when proximity is near and call is ended"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerServiceEx;->mIsDoneRequestWaitForNegativeProximity:Z

    .line 525
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerServiceEx;->wakeUpInProximityPositive(J)Z

    move-result v1

    .line 528
    :cond_3
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    if-ne v4, v3, :cond_4

    if-eqz v1, :cond_0

    .line 534
    :cond_4
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v4, :cond_5

    .line 535
    sget-boolean v3, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v3, :cond_0

    .line 536
    const-string v3, "PowerManagerServiceEx"

    const-string v4, "quick cover closed.. ignore request for waking up"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :cond_5
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    if-eq v4, v3, :cond_6

    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    :cond_6
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mCoverOpened:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_7

    .line 542
    iput-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mProximityPositive:Z

    .line 544
    iget v4, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_7

    .line 545
    sget-boolean v3, Lcom/android/server/power/PowerManagerServiceEx;->DEBUG_SMART_COVER:Z

    if-eqz v3, :cond_0

    .line 546
    const-string v3, "PowerManagerServiceEx"

    const-string v4, "window cover closed.. ignore waking up by proxmity positive"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :cond_7
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mWakefulness:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    .line 553
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mAlwaysTurnOnKeyLed:Z

    if-eqz v2, :cond_8

    .line 554
    iget v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mDirty:I

    .line 558
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z

    move-result v0

    .line 559
    .local v0, "ret":Z
    or-int/2addr v0, v1

    .line 561
    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    if-eqz v2, :cond_9

    .line 562
    iget-object v2, p0, Lcom/android/server/power/PowerManagerServiceEx;->mLPWGController:Lcom/android/server/power/LPWGController;

    invoke-virtual {v2, v3}, Lcom/android/server/power/LPWGController;->updateScreenState(Z)V

    .line 564
    :cond_9
    if-eqz v0, :cond_a

    .line 565
    invoke-direct {p0, v3}, Lcom/android/server/power/PowerManagerServiceEx;->setQuickCharging(I)V

    :cond_a
    move v2, v3

    .line 568
    goto/16 :goto_0
.end method
