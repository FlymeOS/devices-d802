.class public Lcom/android/server/power/LPWGController;
.super Ljava/lang/Object;
.source "LPWGController.java"

# interfaces
.implements Lcom/android/server/power/LPWGStateUpdatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/LPWGController$KnockOnObserver;,
        Lcom/android/server/power/LPWGController$LPWGResult;,
        Lcom/android/server/power/LPWGController$LPWGHandler;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_SENSOR_TIMEOUT_MS:J = 0x2bcL

.field public static final DBG:Z = true

.field private static final ILLUMINANCE_DARK:I = 0x0

.field private static final LAZY_SCREEN_UPDATE_TIMEOUT_MS:J = 0x14aL

.field private static final LPWG_DATA_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/lpwg_data"

.field public static final LPWG_DISABLED_BY_SENSOR:I = 0x0

.field public static final LPWG_ENABLED_BY_SENSOR:I = 0x1

.field private static final LPWG_UEVENT_KEY:Ljava/lang/String; = "TOUCH_GESTURE_WAKEUP"

.field private static final LPWG_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/system/lge_touch/lge_touch0"

.field private static final MSG_CHECKLIGHT_REMOVED:I = 0x7

.field private static final MSG_CHECKLIGHT_RUN:I = 0x4

.field private static final MSG_FAILED_FEEDBACK:I = 0x8

.field private static final MSG_KNOCKCODEWAKER_RUN:I = 0x5

.field private static final MSG_LPWG:I = 0x1

.field private static final MSG_SLEEPER_REMOVED:I = 0x6

.field private static final MSG_SLEEPER_RUN:I = 0x3

.field private static final MSG_USER_REMOVED:I = 0x2

.field public static final NOTUSER_DEBUG:Z

.field private static final PROXIMITY_NEAR:I = 0x0

.field public static final TAG:Ljava/lang/String;

.field private static final TOUCH_KNOCK_ON_TYPE_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/knock_on_type"

.field private static final UEVENT_PASSWORD:Ljava/lang/String; = "PASSWORD"

.field private static final UEVENT_SIGNATURE:Ljava/lang/String; = "SIGNATURE"

.field private static final UEVENT_SWIPE:Ljava/lang/String; = "SWIPE"

.field private static final UEVENT_WAKEUP:Ljava/lang/String; = "WAKEUP"

.field private static final UPDATE_COVER_STATE:I = 0x2

.field private static final UPDATE_SETTINGS_STATE:I = 0x1

.field private static final UPDATE_SLEEP_TIME:I = 0x3

.field private static mIsTouchKnockOn:Z

.field private static mLight:I

.field private static mLightSensor:Landroid/hardware/Sensor;

.field private static mMultiUserKnockCode:Z

.field private static mRotatedKnockCode:Z

.field private static mUsingLightSensor:Z


# instance fields
.field final FILE_LENGTH_LIMIT:I

.field private NOTIFY_FAILED_ATTEMPTS:I

.field private WAKEUP_FAILED_ATTEMPTS:I

.field private mContext:Landroid/content/Context;

.field private mCoverOpened:Z

.field private mCoverType:I

.field private mCurrentRotation:I

.field private mDeviceHasLed:Z

.field private mDeviceLCDsize:Landroid/graphics/Point;

.field private mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field private mInit:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSame1st2ndTap:Z

.field private mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

.field private mKnockCodeSetting:Z

.field private mKnockCodeWaker:Ljava/lang/Runnable;

.field private mKnockOnSensor:Landroid/hardware/Sensor;

.field private mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

.field private mKnockOnSetting:Z

.field private mKnokOnObserver:Lcom/android/server/power/LPWGController$KnockOnObserver;

.field mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

.field private mLPWGUtils:Lcom/android/server/power/LPWGUtils;

.field private mLazyScreenStateUpdater:Ljava/lang/Runnable;

.field private mLightChecker:Ljava/lang/Runnable;

.field private mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

.field private mLock:Ljava/lang/Object;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

.field private mNotifier:Lcom/android/server/power/DriverNotifier;

.field private mOrientationListener:Lcom/android/server/power/ILPWGSensorEventListener;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mPasswordLength:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

.field private mScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingUserInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSleeper:Ljava/lang/Runnable;

.field private mTimeAfterSleep:J

.field private mTimeToSleep:J

.field private mTouchedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

.field private mWakeupReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    const-class v0, Lcom/android/server/power/LPWGController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/LPWGController;->NOTUSER_DEBUG:Z

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/LPWGController;->mLightSensor:Landroid/hardware/Sensor;

    .line 103
    sput-boolean v1, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    .line 104
    sput-boolean v1, Lcom/android/server/power/LPWGController;->mRotatedKnockCode:Z

    .line 105
    sput-boolean v1, Lcom/android/server/power/LPWGController;->mMultiUserKnockCode:Z

    .line 106
    sput-boolean v1, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    .line 141
    sput v1, Lcom/android/server/power/LPWGController;->mLight:I

    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/SensorManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensor:Landroid/hardware/Sensor;

    .line 66
    iput-object v2, p0, Lcom/android/server/power/LPWGController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 67
    iput-object v2, p0, Lcom/android/server/power/LPWGController;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 73
    iput-boolean v3, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    .line 75
    iput-boolean v3, p0, Lcom/android/server/power/LPWGController;->mKnockCodeSetting:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/server/power/LPWGController;->mInit:Z

    .line 82
    iput-boolean v4, p0, Lcom/android/server/power/LPWGController;->mCoverOpened:Z

    .line 84
    iput v5, p0, Lcom/android/server/power/LPWGController;->mCoverType:I

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mLock:Ljava/lang/Object;

    .line 133
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/power/LPWGController;->WAKEUP_FAILED_ATTEMPTS:I

    .line 135
    iput v5, p0, Lcom/android/server/power/LPWGController;->NOTIFY_FAILED_ATTEMPTS:I

    .line 136
    iput-object v2, p0, Lcom/android/server/power/LPWGController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 137
    iput-object v2, p0, Lcom/android/server/power/LPWGController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/LPWGController;->mCurrentRotation:I

    .line 149
    new-instance v1, Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/LPWGController$LPWGResult;-><init>(Lcom/android/server/power/LPWGController;Lcom/android/server/power/LPWGController$1;)V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mSettingUserInfo:Ljava/util/ArrayList;

    .line 154
    iput v4, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 156
    iput-boolean v3, p0, Lcom/android/server/power/LPWGController;->mDeviceHasLed:Z

    .line 158
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/power/LPWGController;->FILE_LENGTH_LIMIT:I

    .line 325
    new-instance v1, Lcom/android/server/power/LPWGController$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/LPWGController$2;-><init>(Lcom/android/server/power/LPWGController;)V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 460
    iput-boolean v4, p0, Lcom/android/server/power/LPWGController;->mScreenOn:Z

    .line 461
    new-instance v1, Lcom/android/server/power/LPWGController$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/LPWGController$3;-><init>(Lcom/android/server/power/LPWGController;)V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mLazyScreenStateUpdater:Ljava/lang/Runnable;

    .line 517
    new-instance v1, Lcom/android/server/power/LPWGController$4;

    invoke-direct {v1, p0}, Lcom/android/server/power/LPWGController$4;-><init>(Lcom/android/server/power/LPWGController;)V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mLightChecker:Ljava/lang/Runnable;

    .line 539
    new-instance v1, Lcom/android/server/power/LPWGController$5;

    invoke-direct {v1, p0}, Lcom/android/server/power/LPWGController$5;-><init>(Lcom/android/server/power/LPWGController;)V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mSleeper:Ljava/lang/Runnable;

    .line 904
    new-instance v1, Lcom/android/server/power/LPWGController$8;

    invoke-direct {v1, p0}, Lcom/android/server/power/LPWGController$8;-><init>(Lcom/android/server/power/LPWGController;)V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mKnockCodeWaker:Ljava/lang/Runnable;

    .line 161
    iput-object p1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 163
    new-instance v1, Lcom/android/server/power/LPWGController$LPWGHandler;

    invoke-direct {v1, p0, p2}, Lcom/android/server/power/LPWGController$LPWGHandler;-><init>(Lcom/android/server/power/LPWGController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->init()V

    .line 169
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/LPWGController;)Lcom/android/internal/widget/LockPatternUtilsEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/LPWGController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/power/LPWGController;->setLightSensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/LPWGController;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/power/LPWGController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/power/LPWGController;->setProximitySensorEnabled(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mSleeper:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockCodeWaker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/power/LPWGController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLightChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/power/LPWGController;)Landroid/view/WindowManagerPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/LPWGController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/KnockCodeChecker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mOrientationListener:Lcom/android/server/power/ILPWGSensorEventListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/LPWGController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/power/LPWGController;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/LPWGController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mTouchedPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/LPWGController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/power/LPWGController;->wakeUpByKnockCodeInternalLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/power/LPWGController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/power/LPWGController;->mInit:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/power/LPWGController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/power/LPWGController;->mInit:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/LPWGController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/LPWGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->unregisterUserSwitchObserver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/LPWGController$LPWGHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/LPWGController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/power/LPWGController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/DriverNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/power/LPWGController;)Lcom/android/server/power/ILPWGSensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LPWGController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/server/power/LPWGController;->mLight:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 60
    sput p0, Lcom/android/server/power/LPWGController;->mLight:I

    return p0
.end method

.method private getFirstUserHasKnockCode()I
    .locals 6

    .prologue
    .line 927
    const/4 v2, -0x1

    .line 928
    .local v2, "userId":I
    const/4 v1, 0x0

    .line 929
    .local v1, "id":I
    iget-object v4, p0, Lcom/android/server/power/LPWGController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 930
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_0

    .line 931
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 932
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v1, v4, Landroid/content/pm/UserInfo;->id:I

    .line 933
    iget-object v4, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;->KNOCKCODE:Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    iget-object v5, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;->getLockScreenType(I)Lcom/android/internal/widget/LockPatternUtilsEx$LockScreenType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 935
    move v2, v1

    .line 940
    .end local v0    # "i":I
    :cond_0
    return v2

    .line 931
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTouchedPosition()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    const/4 v3, 0x0

    .line 998
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v11, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v13, "/sys/devices/virtual/input/lge_touch/lpwg_data"

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1004
    .local v6, "length":J
    const-wide/16 v14, 0x64

    cmp-long v13, v6, v14

    if-lez v13, :cond_0

    .line 1005
    const-wide/16 v6, 0x64

    .line 1007
    :cond_0
    long-to-int v13, v6

    new-array v2, v13, [B

    .line 1008
    .local v2, "filecontent":[B
    const/4 v9, 0x0

    .line 1009
    .local v9, "offset":I
    const/4 v8, 0x0

    .line 1011
    .local v8, "numRead":I
    :goto_0
    array-length v13, v2

    if-ge v9, v13, :cond_1

    array-length v13, v2

    sub-int/2addr v13, v9

    invoke-virtual {v4, v2, v9, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_1

    .line 1012
    add-int/2addr v9, v8

    goto :goto_0

    .line 1018
    :cond_1
    new-instance v12, Ljava/util/StringTokenizer;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v12, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v12, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1020
    new-instance v10, Landroid/graphics/Point;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    .line 1021
    .local v10, "p":Landroid/graphics/Point;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v10, Landroid/graphics/Point;->x:I

    .line 1022
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v10, Landroid/graphics/Point;->y:I

    .line 1023
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1026
    .end local v2    # "filecontent":[B
    .end local v6    # "length":J
    .end local v8    # "numRead":I
    .end local v9    # "offset":I
    .end local v10    # "p":Landroid/graphics/Point;
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 1027
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :goto_2
    :try_start_2
    sget-object v13, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v14, "A garbage data might be contained at the end of touched positions or no more valid positions might exist in LPWG data"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1035
    if-eqz v3, :cond_2

    .line 1036
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1040
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_3
    return-object v11

    .line 1025
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "filecontent":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "length":J
    .restart local v8    # "numRead":I
    .restart local v9    # "offset":I
    .restart local v12    # "st":Ljava/util/StringTokenizer;
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1035
    if-eqz v4, :cond_4

    .line 1036
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v3, v4

    .line 1038
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v13

    move-object v3, v4

    .line 1039
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1029
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filecontent":[B
    .end local v6    # "length":J
    .end local v8    # "numRead":I
    .end local v9    # "offset":I
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v13, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v14, "IOException while getting touched positions"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1035
    if-eqz v3, :cond_2

    .line 1036
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 1038
    :catch_3
    move-exception v13

    goto :goto_3

    .line 1031
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    sget-object v13, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception in getTouchPosition "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1035
    if-eqz v3, :cond_2

    .line 1036
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 1038
    :catch_5
    move-exception v13

    goto :goto_3

    .line 1034
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 1035
    :goto_6
    if-eqz v3, :cond_5

    .line 1036
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1038
    :cond_5
    :goto_7
    throw v13

    .restart local v5    # "nfe":Ljava/lang/NumberFormatException;
    :catch_6
    move-exception v13

    goto :goto_3

    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v14

    goto :goto_7

    .line 1034
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1031
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 1029
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1026
    .end local v1    # "file":Ljava/io/File;
    :catch_a
    move-exception v5

    goto :goto_2
.end method

.method private init()V
    .locals 13

    .prologue
    const/4 v2, 0x1

    .line 172
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "KnockOnService init ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 175
    .local v11, "resources":Landroid/content/res/Resources;
    iput-boolean v2, p0, Lcom/android/server/power/LPWGController;->mInit:Z

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/LPWGController;->mTimeToSleep:J

    iput-wide v0, p0, Lcom/android/server/power/LPWGController;->mTimeAfterSleep:J

    .line 178
    invoke-direct {p0, v11}, Lcom/android/server/power/LPWGController;->loadConfiguration(Landroid/content/res/Resources;)V

    .line 180
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1dcbd6f6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensor:Landroid/hardware/Sensor;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.lge.software.led"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/LPWGController;->mDeviceHasLed:Z

    .line 186
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1dcbd6f7

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 188
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_9

    .line 189
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "this device doesn\'t support knock_on_code proximity sensor!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 195
    :goto_0
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.light"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 197
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/LPWGController;->mLightSensor:Landroid/hardware/Sensor;

    .line 202
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mRotatedKnockCode:Z

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 206
    :cond_2
    new-instance v0, Lcom/android/server/power/LPWGController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LPWGController$1;-><init>(Lcom/android/server/power/LPWGController;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 225
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mUserManager:Landroid/os/UserManager;

    .line 226
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    .line 229
    :try_start_0
    new-instance v0, Lcom/lge/loader/LGContextHelper;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 230
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v1, "lgpowermanagerhelper"

    invoke-virtual {v0, v1}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_3
    :goto_2
    const/4 v12, 0x0

    .line 240
    .local v12, "wakeUpFailedAttempts":I
    :try_start_1
    sget v0, Lcom/lge/internal/R$integer;->config_wakeup_failed_attempts:I

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 244
    :goto_3
    if-eqz v12, :cond_4

    .line 245
    iput v12, p0, Lcom/android/server/power/LPWGController;->WAKEUP_FAILED_ATTEMPTS:I

    .line 248
    :cond_4
    new-instance v0, Lcom/android/server/power/LPWGController$KnockOnObserver;

    invoke-direct {v0, p0}, Lcom/android/server/power/LPWGController$KnockOnObserver;-><init>(Lcom/android/server/power/LPWGController;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mKnokOnObserver:Lcom/android/server/power/LPWGController$KnockOnObserver;

    .line 249
    new-instance v0, Lcom/android/server/power/DriverNotifier;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/power/DriverNotifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    .line 250
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsEx;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtilsEx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    .line 251
    new-instance v0, Lcom/android/server/power/LPWGUtils;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/power/LPWGUtils;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/server/power/LPWGStateUpdatable;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mLPWGUtils:Lcom/android/server/power/LPWGUtils;

    .line 252
    new-instance v0, Lcom/android/server/power/KnockCodeChecker;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    iget-object v4, p0, Lcom/android/server/power/LPWGController;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/server/power/LPWGController;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mSettingUserInfo:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/server/power/LPWGController;->WAKEUP_FAILED_ATTEMPTS:I

    invoke-direct/range {v0 .. v7}, Lcom/android/server/power/KnockCodeChecker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/widget/LockPatternUtilsEx;Landroid/os/UserManager;Landroid/app/IUserSwitchObserver;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    .line 255
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    if-eqz v0, :cond_5

    .line 256
    new-instance v0, Lcom/android/server/power/LightSensorListener;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    sget-object v3, Lcom/android/server/power/LPWGController;->mLightSensor:Landroid/hardware/Sensor;

    sget-boolean v4, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/power/LightSensorListener;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Landroid/hardware/Sensor;Z)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    .line 258
    :cond_5
    new-instance v0, Lcom/android/server/power/ProximitySensorListener;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/android/server/power/LPWGController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    iget-object v7, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    sget-boolean v8, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    sget-boolean v9, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    invoke-direct/range {v0 .. v9}, Lcom/android/server/power/ProximitySensorListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/power/ILPWGSensorEventListener;Lcom/android/server/power/DriverNotifier;ZZ)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    .line 260
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mRotatedKnockCode:Z

    if-eqz v0, :cond_6

    .line 261
    new-instance v0, Lcom/android/server/power/OrientatioinListener;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mOrientationSensor:Landroid/hardware/Sensor;

    iget-object v4, p0, Lcom/android/server/power/LPWGController;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/power/OrientatioinListener;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Landroid/hardware/Sensor;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mOrientationListener:Lcom/android/server/power/ILPWGSensorEventListener;

    .line 263
    :cond_6
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    if-nez v0, :cond_7

    .line 264
    new-instance v0, Lcom/android/server/power/KnockOnSensorListener;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    sget-boolean v4, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    iget-object v5, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/KnockOnSensorListener;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Lcom/android/internal/widget/LockPatternUtilsEx;ZLcom/android/server/power/ILPWGSensorEventListener;Lcom/android/server/power/ILPWGSensorEventListener;)V

    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    .line 267
    :cond_7
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->obtainLCDsize()V

    .line 269
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/server/power/PasswordConverter;->setDisplay(I)V

    .line 271
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtilsEx;

    if-eqz v0, :cond_b

    .line 272
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mDeviceLCDsize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/android/server/power/DriverNotifier;->init(Landroid/graphics/Point;)V

    .line 277
    :goto_4
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnokOnObserver:Lcom/android/server/power/LPWGController$KnockOnObserver;

    if-eqz v0, :cond_8

    .line 278
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "knockon startObserving"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnokOnObserver:Lcom/android/server/power/LPWGController$KnockOnObserver;

    const-string v1, "DEVPATH=/devices/system/lge_touch/lge_touch0"

    invoke-virtual {v0, v1}, Lcom/android/server/power/LPWGController$KnockOnObserver;->startObserving(Ljava/lang/String;)V

    .line 281
    :cond_8
    return-void

    .line 192
    .end local v12    # "wakeUpFailedAttempts":I
    :cond_9
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "this device doesn\'t support any proximity sensors!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    :cond_a
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "this device does\'nt support light sensor!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 233
    :catch_0
    move-exception v10

    .line 234
    .local v10, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "can\'t get boost loader!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 241
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "wakeUpFailedAttempts":I
    :catch_1
    move-exception v10

    .line 242
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t find resource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 274
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_b
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "warning : driver not be set init value!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private isSimPinSecure()Z
    .locals 3

    .prologue
    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "secured":Z
    const-string v1, "simpin_secure"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v2, "SimPin secured"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/4 v0, 0x1

    .line 1057
    :cond_0
    return v0
.end method

.method private loadConfiguration(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 306
    :try_start_0
    const-string v1, "/sys/devices/virtual/input/lge_touch/knock_on_type"

    invoke-direct {p0, v1}, Lcom/android/server/power/LPWGController;->readValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsTouchKnockOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget v1, Lcom/lge/internal/R$bool;->config_rotated_knockcode:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/LPWGController;->mRotatedKnockCode:Z

    .line 317
    sget v1, Lcom/lge/internal/R$bool;->config_multiuser_knockcode:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/LPWGController;->mMultiUserKnockCode:Z

    .line 318
    sget v1, Lcom/lge/internal/R$bool;->config_lpwg_by_lightsensor:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    .line 319
    return-void

    .line 309
    :cond_0
    :try_start_1
    sget v1, Lcom/lge/internal/R$bool;->config_double_tap_wakeup_mode:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find resource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private obtainLCDsize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 289
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 290
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 291
    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 292
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 294
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/power/LPWGController;->mDeviceLCDsize:Landroid/graphics/Point;

    .line 295
    if-eqz v0, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mDeviceLCDsize:Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_1
    sget-object v3, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v4, "can\'t get default display"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v9, ""

    .line 598
    .local v9, "value":Ljava/lang/String;
    const/4 v3, 0x0

    .line 600
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 604
    .local v6, "length":J
    const-wide/16 v12, 0x64

    cmp-long v11, v6, v12

    if-lez v11, :cond_0

    .line 605
    const-wide/16 v6, 0x64

    .line 607
    :cond_0
    long-to-int v11, v6

    new-array v0, v11, [B

    .line 608
    .local v0, "bytes":[B
    const/4 v8, 0x0

    .line 609
    .local v8, "offset":I
    const/4 v5, 0x0

    .line 611
    .local v5, "numRead":I
    :goto_0
    array-length v11, v0

    if-ge v8, v11, :cond_1

    array-length v11, v0

    sub-int/2addr v11, v8

    invoke-virtual {v4, v0, v8, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_1

    .line 612
    add-int/2addr v8, v5

    goto :goto_0

    .line 618
    :cond_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    .end local v9    # "value":Ljava/lang/String;
    .local v10, "value":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 628
    if-eqz v4, :cond_2

    .line 629
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 631
    :cond_2
    const/4 v3, 0x0

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .line 636
    .end local v0    # "bytes":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "numRead":I
    .end local v6    # "length":J
    .end local v8    # "offset":I
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_3

    .line 637
    const-string v9, ""

    .line 639
    :cond_3
    return-object v9

    .line 632
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v0    # "bytes":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "length":J
    .restart local v8    # "offset":I
    .restart local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v12, "I/O exception on close after exception"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .line 635
    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_1

    .line 620
    .end local v0    # "bytes":[B
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "numRead":I
    .end local v6    # "length":J
    .end local v8    # "offset":I
    :catch_1
    move-exception v1

    .line 621
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot find file:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 628
    if-eqz v3, :cond_4

    .line 629
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 631
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 632
    :catch_2
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v12, "I/O exception on close after exception"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 622
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 623
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException while reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 628
    if-eqz v3, :cond_5

    .line 629
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 631
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 632
    :catch_4
    move-exception v1

    .line 633
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v12, "I/O exception on close after exception"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 625
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot read file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 628
    if-eqz v3, :cond_6

    .line 629
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 631
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 632
    :catch_6
    move-exception v1

    .line 633
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v12, "I/O exception on close after exception"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 627
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 628
    :goto_5
    if-eqz v3, :cond_7

    .line 629
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 631
    :cond_7
    const/4 v3, 0x0

    .line 634
    :goto_6
    throw v11

    .line 632
    :catch_7
    move-exception v1

    .line 633
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v13, "I/O exception on close after exception"

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 627
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v0    # "bytes":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "length":J
    .restart local v8    # "offset":I
    .restart local v10    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v11

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_5

    .line 624
    .end local v0    # "bytes":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "numRead":I
    .end local v6    # "length":J
    .end local v8    # "offset":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v0    # "bytes":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "length":J
    .restart local v8    # "offset":I
    .restart local v10    # "value":Ljava/lang/String;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_4

    .line 622
    .end local v0    # "bytes":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "numRead":I
    .end local v6    # "length":J
    .end local v8    # "offset":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v0    # "bytes":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "length":J
    .restart local v8    # "offset":I
    .restart local v10    # "value":Ljava/lang/String;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    goto :goto_3

    .line 620
    .end local v0    # "bytes":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "numRead":I
    .end local v6    # "length":J
    .end local v8    # "offset":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "value":Ljava/lang/String;
    .restart local v0    # "bytes":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "length":J
    .restart local v8    # "offset":I
    .restart local v10    # "value":Ljava/lang/String;
    :catch_d
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method private sendIntent(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "result"    # Z

    .prologue
    .line 561
    const/4 v0, 0x1

    .line 562
    .local v0, "wakeupReason":I
    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/16 v1, 0x8

    if-ne v1, p1, :cond_1

    .line 564
    :cond_0
    const/16 v0, 0x100

    .line 566
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/power/LPWGController;->sendIntent(IZZI)V

    .line 567
    return-void
.end method

.method private sendIntent(IZZI)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "result"    # Z
    .param p3, "notify"    # Z
    .param p4, "wakeupReason"    # I

    .prologue
    .line 570
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/LPWGController;->sendIntent(IZZILjava/util/ArrayList;)V

    .line 571
    return-void
.end method

.method private sendIntent(IZZILjava/util/ArrayList;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "result"    # Z
    .param p3, "notify"    # Z
    .param p4, "wakeupReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.ACTION_KNOCK_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v0, "knockOnIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    const-string v1, "com.lge.intent.extra.LPWG_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string v1, "com.lge.intent.extra.LPWG_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 582
    const-string v1, "com.lge.intent.extra.LPWG_FAILED_ATTEMPTS"

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v2}, Lcom/android/server/power/KnockCodeChecker;->getFailedAttempts()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v1, "com.lge.intent.extra.LPWG_NOTIFY_USER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    const-string v1, "com.lge.intent.extra.LPWG_WAKEUP_REASON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string v1, "com.lge.intent.extra.LPWG_MATCHED_USERS"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 587
    :cond_0
    const/16 v1, 0x8

    if-ne v1, p1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 589
    const-string v1, "com.lge.intent.extra.LPWG_TOUCHED_POINTS"

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 594
    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_0

    .line 509
    if-eqz p1, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->enable()V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->disable()V

    goto :goto_0
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_0

    .line 499
    if-eqz p1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->enable()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->disable()V

    goto :goto_0
.end method

.method private unregisterUserSwitchObserver()V
    .locals 3

    .prologue
    .line 1045
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t unregister user switch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private wakeUp()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 894
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 898
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/power/LPWGController;->setProximitySensorEnabled(Z)V

    .line 899
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    if-eqz v0, :cond_1

    .line 900
    invoke-direct {p0, v1}, Lcom/android/server/power/LPWGController;->setLightSensorEnabled(Z)V

    .line 902
    :cond_1
    return-void
.end method

.method private wakeUpByKnockCode()V
    .locals 3

    .prologue
    .line 718
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v2, "LPWG PASSWORD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUp()V

    .line 721
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v1}, Lcom/android/server/power/LPWGController$LPWGResult;->send()V

    .line 735
    :goto_0
    return-void

    .line 724
    :cond_0
    sget-boolean v1, Lcom/android/server/power/LPWGController;->mRotatedKnockCode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mOrientationListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mOrientationListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v1}, Lcom/android/server/power/ILPWGSensorEventListener;->enable()V

    .line 727
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->getTouchedPosition()Ljava/util/ArrayList;

    move-result-object v0

    .line 728
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 729
    iput-object v0, p0, Lcom/android/server/power/LPWGController;->mTouchedPoints:Ljava/util/ArrayList;

    .line 730
    invoke-direct {p0, v0}, Lcom/android/server/power/LPWGController;->wakeUpByKnockCodeInternal(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 732
    :cond_2
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v2, "no touched position!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v1}, Lcom/android/server/power/LPWGController$LPWGResult;->send()V

    goto :goto_0
.end method

.method private wakeUpByKnockCodeFailedLocked()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 839
    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6}, Lcom/android/server/power/KnockCodeChecker;->hasCurrentUserKnockCode()Z

    move-result v1

    .line 840
    .local v1, "hasThisUserKnockCode":Z
    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6}, Lcom/android/server/power/KnockCodeChecker;->verifyFailedAttempts()Z

    move-result v4

    .line 841
    .local v4, "verified":Z
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 842
    sget-boolean v6, Lcom/android/server/power/LPWGController;->mMultiUserKnockCode:Z

    if-eqz v6, :cond_5

    if-eqz v1, :cond_0

    if-nez v4, :cond_5

    .line 843
    :cond_0
    if-nez v1, :cond_1

    .line 844
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 846
    :cond_1
    if-nez v4, :cond_2

    .line 847
    iput v8, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 850
    :cond_2
    iget v6, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    invoke-direct {p0, v8, v7, v7, v6}, Lcom/android/server/power/LPWGController;->sendIntent(IZZI)V

    .line 851
    if-nez v1, :cond_3

    .line 852
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->getFirstUserHasKnockCode()I

    move-result v2

    .line 853
    .local v2, "id":I
    const/4 v6, -0x1

    if-eq v6, v2, :cond_3

    .line 854
    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    new-instance v7, Lcom/android/server/power/LPWGController$7;

    invoke-direct {v7, p0, v2}, Lcom/android/server/power/LPWGController$7;-><init>(Lcom/android/server/power/LPWGController;I)V

    invoke-virtual {v6, v7}, Lcom/android/server/power/LPWGController$LPWGHandler;->post(Ljava/lang/Runnable;)Z

    .line 862
    .end local v2    # "id":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUp()V

    .line 888
    :cond_4
    :goto_0
    return-void

    .line 864
    :cond_5
    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v6}, Lcom/android/server/power/LPWGController$LPWGResult;->setDelay()V

    .line 865
    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6}, Lcom/android/server/power/KnockCodeChecker;->reportFailedPasswordAttempt()V

    .line 866
    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v6}, Lcom/android/server/power/KnockCodeChecker;->getFailedAttempts()I

    move-result v0

    .line 869
    .local v0, "failedAttempts":I
    const/4 v3, 0x0

    .line 870
    .local v3, "notify":Z
    const/4 v5, 0x0

    .line 871
    .local v5, "wakeup":Z
    iget v6, p0, Lcom/android/server/power/LPWGController;->NOTIFY_FAILED_ATTEMPTS:I

    rem-int v6, v0, v6

    if-nez v6, :cond_6

    .line 872
    const/4 v3, 0x1

    .line 874
    :cond_6
    iput v7, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 876
    rem-int/lit8 v6, v0, 0x5

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/server/power/LPWGController;->NOTIFY_FAILED_ATTEMPTS:I

    if-eq v6, v0, :cond_7

    iget v6, p0, Lcom/android/server/power/LPWGController;->WAKEUP_FAILED_ATTEMPTS:I

    if-ne v6, v0, :cond_8

    .line 879
    :cond_7
    iput v8, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 880
    const/4 v5, 0x1

    .line 882
    :cond_8
    iget v6, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    invoke-direct {p0, v8, v7, v3, v6}, Lcom/android/server/power/LPWGController;->sendIntent(IZZI)V

    .line 883
    if-eqz v5, :cond_4

    .line 884
    iget-object v6, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/power/LPWGController$LPWGResult;->setDelay(J)V

    .line 885
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUp()V

    goto :goto_0
.end method

.method private wakeUpByKnockCodeInternal(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    sget-boolean v0, Lcom/android/server/power/LPWGController;->mRotatedKnockCode:Z

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mKnockCodeWaker:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/LPWGController$LPWGHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/LPWGController;->wakeUpByKnockCodeInternalLocked(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private wakeUpByKnockCodeInternalLocked(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController$LPWGResult;->reset()V

    .line 781
    invoke-static {p1}, Lcom/android/server/power/PasswordConverter;->convertPositionToPassword(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 782
    .local v7, "passwords":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 783
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v0}, Lcom/android/server/power/KnockCodeChecker;->isVerifyFailedAttempts()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v0, v7}, Lcom/android/server/power/KnockCodeChecker;->check(Ljava/lang/String;)Lcom/android/server/power/KnockCodeBehavior;

    move-result-object v8

    .line 785
    .local v8, "verifiedResult":Lcom/android/server/power/KnockCodeBehavior;
    if-eqz v8, :cond_1

    .line 786
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v2, "success to check passwords"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v6, 0x0

    .line 788
    .local v6, "launchResult":I
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 789
    invoke-interface {v8}, Lcom/android/server/power/KnockCodeBehavior;->getMatchedUsers()Ljava/util/ArrayList;

    move-result-object v5

    .line 790
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget v0, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    invoke-interface {v8, v0}, Lcom/android/server/power/KnockCodeBehavior;->launch(I)I

    move-result v6

    .line 791
    iget v0, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    if-eq v0, v6, :cond_0

    .line 792
    iput v6, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 794
    :cond_0
    const/4 v2, 0x1

    iget v4, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/LPWGController;->sendIntent(IZZILjava/util/ArrayList;)V

    .line 795
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUp()V

    .line 796
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController$LPWGResult;->success()V

    .line 811
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "launchResult":I
    .end local v8    # "verifiedResult":Lcom/android/server/power/KnockCodeBehavior;
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController$LPWGResult;->send()V

    .line 812
    return-void

    .line 798
    .restart local v8    # "verifiedResult":Lcom/android/server/power/KnockCodeBehavior;
    :cond_1
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "fail to check passwords"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUpByKnockCodeFailedLocked()V

    .line 800
    invoke-virtual {p0}, Lcom/android/server/power/LPWGController;->notifyFailedFeedback()V

    goto :goto_0

    .line 803
    .end local v8    # "verifiedResult":Lcom/android/server/power/KnockCodeBehavior;
    :cond_2
    iput v1, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    .line 804
    iget v0, p0, Lcom/android/server/power/LPWGController;->mWakeupReason:I

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/android/server/power/LPWGController;->sendIntent(IZZI)V

    .line 805
    invoke-virtual {p0}, Lcom/android/server/power/LPWGController;->notifyFailedFeedback()V

    .line 806
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUp()V

    goto :goto_0

    .line 809
    :cond_3
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "converted password is null "

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wakeUpByKnockOn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 703
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController$LPWGResult;->reset()V

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/LPWGController;->mTimeToSleep:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/LPWGController;->mTimeAfterSleep:J

    .line 706
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LPWG WAKEUP isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TimeAfterSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/power/LPWGController;->mTimeAfterSleep:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/LPWGController;->mTimeAfterSleep:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 710
    invoke-direct {p0, v4, v4}, Lcom/android/server/power/LPWGController;->sendIntent(IZ)V

    .line 711
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUp()V

    .line 712
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController$LPWGResult;->success()V

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v0}, Lcom/android/server/power/LPWGController$LPWGResult;->send()V

    .line 715
    return-void
.end method

.method private wakeUpBySwipeDown()V
    .locals 8

    .prologue
    .line 738
    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v3}, Lcom/android/server/power/LPWGController$LPWGResult;->reset()V

    .line 740
    sget-object v3, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LPWG WAKEUP by swipe down :  isScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TimeAfterSleep = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/power/LPWGController;->mTimeAfterSleep:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/power/LPWGController;->mTimeToSleep:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/power/LPWGController;->mTimeAfterSleep:J

    .line 744
    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLPWGUtils:Lcom/android/server/power/LPWGUtils;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLPWGUtils:Lcom/android/server/power/LPWGUtils;

    invoke-virtual {v3}, Lcom/android/server/power/LPWGUtils;->isSwipeDownWakeupAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lcom/android/server/power/LPWGController;->mTimeAfterSleep:J

    const-wide/16 v6, 0x14a

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->getTouchedPosition()Ljava/util/ArrayList;

    move-result-object v2

    .line 747
    .local v2, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 748
    iput-object v2, p0, Lcom/android/server/power/LPWGController;->mTouchedPoints:Ljava/util/ArrayList;

    .line 750
    :cond_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/power/LPWGController;->sendIntent(IZ)V

    .line 752
    const-string v3, "display"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IDisplayManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerEx;

    move-result-object v0

    .line 754
    .local v0, "displayManagerEx":Landroid/hardware/display/IDisplayManagerEx;
    if-nez v0, :cond_2

    .line 755
    sget-object v3, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v4, "Unable to find IDisplayManagerEx interface."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v3}, Lcom/android/server/power/LPWGController$LPWGResult;->success()V

    .line 768
    .end local v0    # "displayManagerEx":Landroid/hardware/display/IDisplayManagerEx;
    .end local v2    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLPWGResult:Lcom/android/server/power/LPWGController$LPWGResult;

    invoke-virtual {v3}, Lcom/android/server/power/LPWGController$LPWGResult;->send()V

    .line 769
    return-void

    .line 759
    .restart local v0    # "displayManagerEx":Landroid/hardware/display/IDisplayManagerEx;
    .restart local v2    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/display/IDisplayManagerEx;->setGlanceView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 760
    :catch_0
    move-exception v1

    .line 761
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getCoverState()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/android/server/power/LPWGController;->mCoverOpened:Z

    return v0
.end method

.method public getKnockCodeSetting()Z
    .locals 1

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/android/server/power/LPWGController;->mKnockCodeSetting:Z

    return v0
.end method

.method public getKnockOnSetting()Z
    .locals 1

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    return v0
.end method

.method public getTimeToSleep()J
    .locals 2

    .prologue
    .line 1123
    iget-wide v0, p0, Lcom/android/server/power/LPWGController;->mTimeToSleep:J

    return-wide v0
.end method

.method handleLPWG(Ljava/lang/String;)V
    .locals 2
    .param p1, "uev"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I

    .line 689
    :goto_0
    if-eqz p1, :cond_0

    .line 690
    const-string v0, "WAKEUP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUpByKnockOn()V

    .line 700
    :cond_0
    :goto_1
    return-void

    .line 687
    :cond_1
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v1, "can\'t boost in wakeup by knockon"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :cond_2
    const-string v0, "PASSWORD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 693
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUpByKnockCode()V

    goto :goto_1

    .line 694
    :cond_3
    const-string v0, "SIGNATURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const-string v0, "SWIPE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/server/power/LPWGController;->wakeUpBySwipeDown()V

    goto :goto_1
.end method

.method handleNotifyFailedFeedback()V
    .locals 4

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "NotifyFailedFeedback"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 824
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 825
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 826
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    new-instance v2, Lcom/android/server/power/LPWGController$6;

    invoke-direct {v2, p0}, Lcom/android/server/power/LPWGController$6;-><init>(Lcom/android/server/power/LPWGController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/LPWGController$LPWGHandler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method notifyFailedFeedback()V
    .locals 3

    .prologue
    .line 815
    iget-boolean v1, p0, Lcom/android/server/power/LPWGController;->mDeviceHasLed:Z

    if-nez v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/power/LPWGController$LPWGHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 817
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/LPWGController$LPWGHandler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public notifyUpdateState(I)V
    .locals 1
    .param p1, "states"    # I

    .prologue
    .line 1088
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/power/DriverNotifier;->updateState(Lcom/android/server/power/LPWGStateUpdatable;)V

    .line 1090
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0, p0}, Lcom/android/server/power/ILPWGSensorEventListener;->updateState(Lcom/android/server/power/LPWGStateUpdatable;)V

    .line 1093
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1094
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    invoke-virtual {v0, p0}, Lcom/android/server/power/DriverNotifier;->updateState(Lcom/android/server/power/LPWGStateUpdatable;)V

    .line 1095
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_1

    .line 1096
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0, p0}, Lcom/android/server/power/ILPWGSensorEventListener;->updateState(Lcom/android/server/power/LPWGStateUpdatable;)V

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0, p0}, Lcom/android/server/power/ILPWGSensorEventListener;->updateState(Lcom/android/server/power/LPWGStateUpdatable;)V

    .line 1101
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mProximitySensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0, p0}, Lcom/android/server/power/ILPWGSensorEventListener;->updateState(Lcom/android/server/power/LPWGStateUpdatable;)V

    .line 1104
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1105
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_4

    .line 1106
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0, p0}, Lcom/android/server/power/ILPWGSensorEventListener;->updateState(Lcom/android/server/power/LPWGStateUpdatable;)V

    .line 1109
    :cond_4
    return-void
.end method

.method public setKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 1
    .param p1, "keyguard"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/power/LPWGController;->mKnockCodeChecker:Lcom/android/server/power/KnockCodeChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/power/KnockCodeChecker;->setKeyguard(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    .line 323
    return-void
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/server/power/LPWGController;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 285
    return-void
.end method

.method public updateCoverState(ZI)V
    .locals 5
    .param p1, "state"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 469
    iput-boolean p1, p0, Lcom/android/server/power/LPWGController;->mCoverOpened:Z

    .line 470
    iput p2, p0, Lcom/android/server/power/LPWGController;->mCoverType:I

    .line 471
    iget v1, p0, Lcom/android/server/power/LPWGController;->mCoverType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 472
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/LPWGController;->mCoverOpened:Z

    .line 474
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/power/LPWGController;->notifyUpdateState(I)V

    .line 476
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCoverState] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    sget-boolean v1, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/power/LPWGController;->mCoverOpened:Z

    if-nez v1, :cond_2

    .line 479
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    const-string v2, "cover closed, stop prroximity sensor."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-boolean v1, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    if-eqz v1, :cond_1

    .line 481
    invoke-direct {p0, v4}, Lcom/android/server/power/LPWGController;->setLightSensorEnabled(Z)V

    .line 483
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/power/LPWGController;->setProximitySensorEnabled(Z)V

    .line 485
    const-wide/16 v2, 0x46

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/DriverNotifier;->updateCoverStateChangedLocked(ZI)V

    .line 495
    :cond_3
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCoverState Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateScreenState(Z)V
    .locals 6
    .param p1, "screenOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 427
    sget-object v2, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateScreenState] screen on = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-boolean p1, p0, Lcom/android/server/power/LPWGController;->mScreenOn:Z

    .line 429
    if-eqz p1, :cond_4

    .line 430
    sget-boolean v2, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    if-eqz v2, :cond_1

    .line 431
    sget-boolean v2, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    if-eqz v2, :cond_0

    .line 432
    invoke-direct {p0, v5}, Lcom/android/server/power/LPWGController;->setLightSensorEnabled(Z)V

    .line 434
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/power/LPWGController;->setProximitySensorEnabled(Z)V

    .line 450
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    if-eqz v2, :cond_3

    .line 451
    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLazyScreenStateUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/power/LPWGController$LPWGHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 452
    const-wide/16 v0, 0x14a

    .line 453
    .local v0, "delay":J
    if-eqz p1, :cond_2

    .line 454
    const-wide/16 v0, 0x0

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/LPWGController;->mHandler:Lcom/android/server/power/LPWGController$LPWGHandler;

    iget-object v3, p0, Lcom/android/server/power/LPWGController;->mLazyScreenStateUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/LPWGController$LPWGHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    .end local v0    # "delay":J
    :cond_3
    return-void

    .line 437
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/LPWGController;->mTimeToSleep:J

    .line 438
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/power/LPWGController;->notifyUpdateState(I)V

    .line 439
    sget-boolean v2, Lcom/android/server/power/LPWGController;->mUsingLightSensor:Z

    if-eqz v2, :cond_5

    .line 440
    invoke-direct {p0, v5}, Lcom/android/server/power/LPWGController;->setLightSensorEnabled(Z)V

    .line 442
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/server/power/LPWGController;->setProximitySensorEnabled(Z)V

    .line 443
    sget-boolean v2, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/LPWGController;->mCoverOpened:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/power/LPWGController;->mKnockCodeSetting:Z

    if-eqz v2, :cond_1

    .line 444
    :cond_6
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/power/LPWGController;->setProximitySensorEnabled(Z)V

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 15

    .prologue
    .line 337
    const/4 v5, 0x0

    .line 338
    .local v5, "knockOnSetting":Z
    const/4 v4, 0x0

    .line 339
    .local v4, "knockCodeSetting":Z
    const/4 v9, 0x0

    .line 340
    .local v9, "passwordLength":I
    const/4 v8, 0x0

    .line 341
    .local v8, "owerLength":I
    const/4 v3, 0x0

    .line 343
    .local v3, "isSame1st2ndTap":Z
    sget-boolean v11, Lcom/android/server/power/LPWGController;->mMultiUserKnockCode:Z

    if-eqz v11, :cond_6

    .line 344
    const/4 v6, 0x0

    .line 345
    .local v6, "len":I
    const/4 v7, 0x0

    .line 346
    .local v7, "on":Z
    const/4 v0, 0x0

    .line 347
    .local v0, "code":Z
    const/4 v1, 0x0

    .line 348
    .local v1, "currentId":I
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 350
    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mSettingUserInfo:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 351
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "gesture_trun_screen_on"

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v5, 0x1

    .line 353
    :goto_0
    if-eqz v10, :cond_7

    .line 354
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v2, v11, :cond_7

    .line 355
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v1, v11, Landroid/content/pm/UserInfo;->id:I

    .line 356
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "gesture_trun_screen_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v7, 0x1

    .line 358
    :goto_2
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "KNOCKON_LOCK_SET"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v0, 0x1

    .line 360
    :goto_3
    or-int/2addr v4, v0

    .line 361
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "KNOCKON_LENGTH_KEY"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 363
    if-nez v1, :cond_0

    .line 364
    move v8, v6

    .line 366
    :cond_0
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "KNOCKON_SAME_KEY"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    :goto_4
    or-int/2addr v3, v11

    .line 369
    if-ge v9, v6, :cond_1

    .line 370
    move v9, v6

    .line 371
    const/4 v11, 0x2

    if-lt v8, v11, :cond_1

    if-ge v8, v9, :cond_1

    .line 372
    move v9, v8

    .line 375
    :cond_1
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mSettingUserInfo:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;

    invoke-direct {v12, v1, v7, v0, v6}, Lcom/android/server/power/KnockCodeChecker$SettingUserInfo;-><init>(IZZI)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 351
    .end local v2    # "i":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 356
    .restart local v2    # "i":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 358
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 366
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 379
    .end local v0    # "code":Z
    .end local v1    # "currentId":I
    .end local v2    # "i":I
    .end local v6    # "len":I
    .end local v7    # "on":Z
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "gesture_trun_screen_on"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    const/4 v5, 0x1

    .line 381
    :goto_5
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "KNOCKON_LOCK_SET"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    const/4 v4, 0x1

    .line 383
    :goto_6
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "KNOCKON_LENGTH_KEY"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 385
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "KNOCKON_SAME_KEY"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    const/4 v3, 0x1

    .line 389
    :cond_7
    :goto_7
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    if-eqz v11, :cond_b

    .line 390
    iget-boolean v11, p0, Lcom/android/server/power/LPWGController;->mKnockCodeSetting:Z

    if-ne v4, v11, :cond_8

    iget-boolean v11, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    if-eq v5, v11, :cond_9

    .line 391
    :cond_8
    iput-boolean v4, p0, Lcom/android/server/power/LPWGController;->mKnockCodeSetting:Z

    .line 392
    iput-boolean v5, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    .line 393
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/server/power/LPWGController;->notifyUpdateState(I)V

    .line 394
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    invoke-virtual {v11}, Lcom/android/server/power/DriverNotifier;->updateSettingsLocked()V

    .line 396
    :cond_9
    iget v11, p0, Lcom/android/server/power/LPWGController;->mPasswordLength:I

    if-eq v9, v11, :cond_a

    .line 397
    iput v9, p0, Lcom/android/server/power/LPWGController;->mPasswordLength:I

    .line 398
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    iget v12, p0, Lcom/android/server/power/LPWGController;->mPasswordLength:I

    invoke-virtual {v11, v12}, Lcom/android/server/power/DriverNotifier;->updatePasswordLength(I)V

    .line 400
    :cond_a
    iget-boolean v11, p0, Lcom/android/server/power/LPWGController;->mIsSame1st2ndTap:Z

    if-eq v3, v11, :cond_b

    .line 401
    iput-boolean v3, p0, Lcom/android/server/power/LPWGController;->mIsSame1st2ndTap:Z

    .line 402
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mNotifier:Lcom/android/server/power/DriverNotifier;

    iget-boolean v12, p0, Lcom/android/server/power/LPWGController;->mIsSame1st2ndTap:Z

    invoke-virtual {v11, v12}, Lcom/android/server/power/DriverNotifier;->update1st2ndTap(Z)V

    .line 406
    :cond_b
    iget-boolean v11, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    if-eq v5, v11, :cond_c

    .line 407
    iput-boolean v5, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    .line 408
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/server/power/LPWGController;->notifyUpdateState(I)V

    .line 409
    sget-boolean v11, Lcom/android/server/power/LPWGController;->mIsTouchKnockOn:Z

    if-nez v11, :cond_c

    .line 410
    iget-boolean v11, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    if-eqz v11, :cond_10

    .line 411
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v12, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    iget-object v13, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensor:Landroid/hardware/Sensor;

    const/4 v14, 0x3

    invoke-virtual {v11, v12, v13, v14}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 420
    :cond_c
    :goto_8
    sget-object v11, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[updateSettings] mKnockOnSetting = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/LPWGController;->mKnockOnSetting:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mKnockCodeSetting = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/LPWGController;->mKnockCodeSetting:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", tapcount = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/power/LPWGController;->mPasswordLength:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mIsSame1st2ndTap ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/power/LPWGController;->mIsSame1st2ndTap:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 379
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 381
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 385
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 414
    :cond_10
    iget-object v11, p0, Lcom/android/server/power/LPWGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v12, p0, Lcom/android/server/power/LPWGController;->mKnockOnSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-virtual {v11, v12}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_8
.end method
