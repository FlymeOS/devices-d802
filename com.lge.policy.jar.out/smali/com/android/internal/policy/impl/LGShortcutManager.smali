.class Lcom/android/internal/policy/impl/LGShortcutManager;
.super Ljava/lang/Object;
.source "LGShortcutManager.java"


# static fields
.field static final DEBUG:Z = true

.field private static final HOT_KEY_LONG_PRESS_DELAY_MILLIS:J = 0x3e8L

.field private static final LAUNCH_QMEMO_WAKELOCK_DELAY_MILLIS:J = 0x7d0L

.field private static final LOCK_TO_APP_DELAY_MILLIS:I = 0x3e8

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field private static final NOTUSER_DEBUG:Z

.field private static final SHAKE_VIBRATE_TIME:I = 0x12c

.field static final TAG:Ljava/lang/String; = "LGShortcutManager"

.field private static final VOLUME_KEY_LONG_PRESS_DELAY_MILLIS:J = 0x3e8L

.field static mHWMenuKeyDB:I

.field static mInjectMenuKeyHandled:Z

.field static mIsExpandedNotificationPanel:Z

.field static mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field static mMenuLongPressEnabled:Z

.field static mMenuLongPressed:Z

.field static mQuickClipVolumeKeyCombo:Z

.field static mRecentKeyLongpressEnabled:Z

.field static mShakingGesture:Z

.field static mStatusBarReceiver:Landroid/content/BroadcastReceiver;

.field static mVolumeKeyLongPressEnabled:Z

.field static mVolumeKeyShortcutStatus:I


# instance fields
.field private INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private INSECURE_COVER_CAMERA_INTENT:Landroid/content/Intent;

.field private SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private mAccelSensorNotSupported:Z

.field private mBasicGestureSensor:Landroid/hardware/Sensor;

.field final mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

.field private mContext:Landroid/content/Context;

.field private mFourthKeySharing:Z

.field private mHandler:Landroid/os/Handler;

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field mHotKeyCustomizing:Z

.field mHotKeyLongPressEnabled:Z

.field mHotKeyLongRunnable:Ljava/lang/Runnable;

.field private mHotKeyPressed:Z

.field private mHotKeyPressedForWakeLock:Z

.field mHotKeySettingsRunnable:Ljava/lang/Runnable;

.field mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private mLockToAppConsumed:Z

.field final mLockToAppRunnable:Ljava/lang/Runnable;

.field final mMenuKeyLongPressRunnable:Ljava/lang/Runnable;

.field mMenuKeyTriggeredByLockToApp:Z

.field private mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerKeyTimeByLockToApp:J

.field private mPowerKeyTriggeredByLockToApp:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerVolumeDownReset:Z

.field mQButtonDialog:Landroid/app/AlertDialog;

.field final mQuickClipChordLongPress:Ljava/lang/Runnable;

.field private mRearSideKeyEnable:Z

.field private mRecentAndMenuKeyTimeByLockToApp:J

.field mRecentKeyTriggeredByLockToApp:Z

.field private mRotationModeIsLand:Z

.field mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mShakingClass:Ljava/lang/String;

.field private mShakingEnabled:Z

.field private mShakingMode:I

.field private mShakingPkg:Ljava/lang/String;

.field mSimSwitchLongPress:Ljava/lang/Runnable;

.field private mSimSwitchPressed:Z

.field private mSimSwitchingKey:Z

.field private mSupportQuickMemo:Z

.field mToastBlockSimSwitch:Ljava/lang/Runnable;

.field mToastIsRinging:Ljava/lang/Runnable;

.field mVolumeDownKeyConsumedByLongPress:Z

.field mVolumeDownKeyTriggeredByLongPress:Z

.field final mVolumeDownLongPress:Ljava/lang/Runnable;

.field mVolumeUpKeyConsumedByLongPress:Z

.field mVolumeUpKeyTriggeredByLongPress:Z

.field final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private nExptToast:Landroid/widget/Toast;

.field private sShortKeyClass:Ljava/lang/String;

.field private sShortKeyPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->NOTUSER_DEBUG:Z

    .line 76
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipVolumeKeyCombo:Z

    .line 79
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mInjectMenuKeyHandled:Z

    .line 80
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyLongpressEnabled:Z

    .line 81
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressed:Z

    .line 82
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressEnabled:Z

    .line 83
    sput v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mHWMenuKeyDB:I

    .line 90
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    .line 95
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyLongPressEnabled:Z

    .line 127
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mIsExpandedNotificationPanel:Z

    .line 826
    new-instance v0, Lcom/android/internal/policy/impl/LGShortcutManager$6;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/LGShortcutManager$6;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "pwmEx"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyCustomizing:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongPressEnabled:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressed:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressedForWakeLock:Z

    .line 70
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;

    .line 72
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchingKey:Z

    .line 73
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchPressed:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mFourthKeySharing:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerVolumeDownReset:Z

    .line 85
    iput v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingMode:I

    .line 86
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingEnabled:Z

    .line 87
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingClass:Ljava/lang/String;

    .line 88
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingPkg:Ljava/lang/String;

    .line 89
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensor:Landroid/hardware/Sensor;

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.android.intent.action.STILL_IMAGE_CAMERA_COVER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->INSECURE_COVER_CAMERA_INTENT:Landroid/content/Intent;

    .line 112
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 118
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSupportQuickMemo:Z

    .line 122
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 123
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 129
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->sShortKeyClass:Ljava/lang/String;

    .line 130
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->sShortKeyPkg:Ljava/lang/String;

    .line 132
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRotationModeIsLand:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mAccelSensorNotSupported:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppConsumed:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTriggeredByLockToApp:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    .line 138
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    .line 147
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 149
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerManager:Landroid/os/PowerManager;

    .line 150
    iput-object v5, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 784
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$5;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    .line 839
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$7;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 938
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$8;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    .line 953
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$9;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mToastIsRinging:Ljava/lang/Runnable;

    .line 966
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$10;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongRunnable:Ljava/lang/Runnable;

    .line 974
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$11;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeySettingsRunnable:Ljava/lang/Runnable;

    .line 982
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$12;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$12;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchLongPress:Ljava/lang/Runnable;

    .line 1010
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$13;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$13;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mToastBlockSimSwitch:Ljava/lang/Runnable;

    .line 1026
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$14;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$14;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 1070
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$15;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$15;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    .line 1112
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$16;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$16;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyLongPressRunnable:Ljava/lang/Runnable;

    .line 1154
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$17;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$17;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppRunnable:Ljava/lang/Runnable;

    .line 154
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 156
    iput-object p3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 157
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerManager:Landroid/os/PowerManager;

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lge/internal/R$bool;->config_quick_memo_hotkey_customizing:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyCustomizing:Z

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lge/internal/R$bool;->config_quick_memo_hotkey_long_enable:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongPressEnabled:Z

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lge/internal/R$bool;->config_quickmemo_by_volumekey:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipVolumeKeyCombo:Z

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lge/internal/R$bool;->config_menu_long_available:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressEnabled:Z

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lge/internal/R$bool;->config_recent_long_available:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyLongpressEnabled:Z

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lge/internal/R$bool;->config_sim_switch_key_available:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchingKey:Z

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/lge/internal/R$bool;->config_fourth_key_sharing_available:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mFourthKeySharing:Z

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.sensor.accelerometer"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mAccelSensorNotSupported:Z

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$bool;->config_shaking_gesture:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$bool;->config_rearside_key:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$bool;->config_volumeKeyLongPress:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyLongPressEnabled:Z

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$bool;->config_power_volumedown_reset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerVolumeDownReset:Z

    .line 185
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/lge/internal/R$bool;->config_quick_memo_preinstalled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSupportQuickMemo:Z

    .line 188
    sget-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyLongPressEnabled:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "mVolumeLongKeyWakeLock"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    :cond_0
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v1, p1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v2, "volumevibrator"

    invoke-virtual {v1, v2}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/VolumeVibratorManager;

    check-cast v1, Lcom/lge/systemservice/core/VolumeVibratorManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    .line 195
    sget-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    if-eqz v1, :cond_1

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    .line 204
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->makeLGPowerManagerLoader()V

    .line 205
    return-void

    :cond_2
    move v1, v3

    .line 173
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LGShortcutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mFourthKeySharing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/LGShortcutManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressed:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/LGShortcutManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LGShortcutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LGShortcutManager;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LGShortcutManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LGShortcutManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LGShortcutManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LGShortcutManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LGShortcutManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LGShortcutManager;->startActivityByPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LGShortcutManager;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/LGShortcutManager;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGShortcutManager;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private ignoreHotKeyWhenRinging(Z)Z
    .locals 5
    .param p1, "down"    # Z

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "result":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 501
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 503
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    if-eqz p1, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->popupRingingToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    const/4 v1, 0x1

    .line 515
    :cond_1
    :goto_0
    return v1

    .line 509
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LGShortcutManager"

    const-string v4, "ITelephony threw Remote Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private makeLGPowerManagerLoader()V
    .locals 3

    .prologue
    .line 212
    :try_start_0
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v2, "lgpowermanagerhelper"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->NOTUSER_DEBUG:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private popupRingingToast()V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mToastIsRinging:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 520
    return-void
.end method

.method private releaseLongKeyWakeLock()V
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 711
    :cond_0
    return-void
.end method

.method private setBoost()V
    .locals 3

    .prologue
    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-nez v1, :cond_0

    .line 599
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-nez v1, :cond_2

    .line 602
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v2, "lgpowermanagerhelper"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 613
    :cond_1
    :goto_0
    return-void

    .line 604
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->NOTUSER_DEBUG:Z

    if-eqz v1, :cond_1

    .line 610
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityByPackageInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "PkgName"    # Ljava/lang/String;
    .param p2, "PkgClass"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const/high16 v3, 0x30200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 413
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 416
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->collapsePanels()V

    .line 417
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "LGShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping application Settings launch because the activity to which it is registered was not found: , package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method cancelPendingQuickClipChordAction()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method cancelPendingVolumeDownLongKeyChord()V
    .locals 2

    .prologue
    .line 721
    const-string v0, "LGShortcutManager"

    const-string v1, "cancelPendingVolumeDownLongKeyChord"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 723
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SensorUtil;->setSensorEnabled(Z)V

    .line 724
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->releaseLongKeyWakeLock()V

    .line 725
    return-void
.end method

.method cancelPendingVolumeUpLongKeyChord()V
    .locals 2

    .prologue
    .line 714
    const-string v0, "LGShortcutManager"

    const-string v1, "cancelPendingVolumeUpLongKeyAction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 716
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SensorUtil;->setSensorEnabled(Z)V

    .line 717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->releaseLongKeyWakeLock()V

    .line 718
    return-void
.end method

.method cancelVolumeDownLongKey()V
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyTriggeredByLongPress:Z

    .line 734
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelPendingVolumeDownLongKeyChord()V

    .line 735
    return-void
.end method

.method cancelVolumeUpLongKey()V
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyTriggeredByLongPress:Z

    .line 729
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelPendingVolumeUpLongKeyChord()V

    .line 730
    return-void
.end method

.method dumpLGShortcutManager(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1174
    const-string v0, " mVolumeKeyShortcutStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    sget v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyShortcutStatus:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1176
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1177
    const-string v0, " mHotKeyCustomizing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1179
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    const-string v0, " mHotKeyLongPressEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongPressEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    const-string v0, " mQuickClipVolumeKeyCombo="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1184
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipVolumeKeyCombo:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1185
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    const-string v0, " mMenuLongPressEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1187
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    const-string v0, " mRecentKeyLongpressEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyLongpressEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1191
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    const-string v0, " mShakingGesture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1193
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1194
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1195
    const-string v0, " mAccelSensorNotSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mAccelSensorNotSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1197
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1198
    const-string v0, " mSimSwitchingKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1199
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchingKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1201
    const-string v0, " mFourthKeySharing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mFourthKeySharing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1204
    const-string v0, " mRearSideKeyEnable ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1206
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    const-string v0, " mHWMenuKeyDB ="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    sget v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHWMenuKeyDB:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1209
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/LGShortcutManager;->dumpVolumeLongKeyAction(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1210
    return-void
.end method

.method dumpVolumeLongKeyAction(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1168
    const-string v0, " mVolumeKeyLongPressEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1169
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyLongPressEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1170
    return-void
.end method

.method executeHotKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "PkgName"    # Ljava/lang/String;
    .param p2, "PkgClass"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 377
    const-string v4, "LGShortcutManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeHotKey PkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PkgClass:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz p1, :cond_0

    const-string v4, "none"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mAccelSensorNotSupported:Z

    if-eqz v4, :cond_2

    const-string v4, "rotate_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->switchRotationMode()V

    .line 401
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "first_q_button"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v1, v2

    .line 403
    .local v1, "isFirstQButton":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->showQButtonGuideDialog()V

    .line 406
    :cond_1
    return-void

    .line 383
    .end local v1    # "isFirstQButton":Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mFourthKeySharing:Z

    if-eqz v4, :cond_5

    const-string v4, "sim_switch"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 384
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 386
    .local v0, "isAirplaneMode":Z
    :goto_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isHomeGuestMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->popupBlockSimSwitchToast()V

    goto :goto_0

    .end local v0    # "isAirplaneMode":Z
    :cond_3
    move v0, v3

    .line 384
    goto :goto_2

    .line 388
    .restart local v0    # "isAirplaneMode":Z
    :cond_4
    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->sendSimSwitchKeyIntent()V

    goto :goto_0

    .line 391
    .end local v0    # "isAirplaneMode":Z
    :cond_5
    const-string v4, "com.lge.QuickClip"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.lge.qmemoplus"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 392
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->toggleQuickClipFromHotKey()V

    goto :goto_0

    .line 393
    :cond_7
    const-string v4, "com.lge.pa"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->executeQuickVoice()V

    goto :goto_0

    .line 395
    :cond_8
    const-string v4, "com.android.settings"

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/LGShortcutManager;->executeHotKeySettings(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LGShortcutManager;->startActivityByPackageInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move v1, v3

    .line 401
    goto :goto_1
.end method

.method executeHotKeySettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "PkgName"    # Ljava/lang/String;
    .param p2, "PkgClass"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v2, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v1, "hotkey_settings":Landroid/content/Intent;
    const-string v2, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    const-string v2, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    :cond_1
    :goto_0
    const/high16 v2, 0x30200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->collapsePanels()V

    .line 366
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v1    # "hotkey_settings":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 360
    .restart local v1    # "hotkey_settings":Landroid/content/Intent;
    :cond_3
    const-string v2, "com.android.settings.Settings"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    const-string v2, "android.settings.SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "LGShortcutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping application Settings launch because the activity to which it is registered was not found: , package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method executeQSlideKey(ZIZZZ)V
    .locals 3
    .param p1, "keyguardOn"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "down"    # Z
    .param p4, "canceled"    # Z
    .param p5, "interactive"    # Z

    .prologue
    .line 238
    if-eqz p4, :cond_1

    .line 239
    const-string v1, "LGShortcutManager"

    const-string v2, "Ignoring KEYCODE_QSLIDE : QSlide tray will not be shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    .line 244
    :cond_2
    if-nez p3, :cond_0

    .line 245
    if-nez p1, :cond_0

    if-eqz p5, :cond_0

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.qslide.TOGGLE_QSLIDE_TRAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 251
    .local v0, "toggleIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method executeQuickVoice()V
    .locals 4

    .prologue
    .line 571
    const/high16 v2, 0x10000000

    invoke-static {v2}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "mediaState":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 577
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$string;->media_scan_status_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;

    .line 583
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->nExptToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 587
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/LGShortcutManager$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$4;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method executeSimSwitchKey(ZIZZ)V
    .locals 6
    .param p1, "keyguardOn"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "down"    # Z
    .param p4, "canceled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchingKey:Z

    if-eqz v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 262
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 263
    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    .line 264
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchPressed:Z

    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    .end local v0    # "isAirplaneMode":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 259
    goto :goto_0

    .line 266
    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    if-nez p3, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchPressed:Z

    if-eqz v1, :cond_0

    .line 267
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchPressed:Z

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSimSwitchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 269
    if-nez p4, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->sendSimSwitchKeyIntent()V

    goto :goto_1
.end method

.method handleHWMenuLongKey(IZ)Z
    .locals 6
    .param p1, "repeatCount"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1132
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 1133
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1134
    sput-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressed:Z

    .line 1135
    sget v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mHWMenuKeyDB:I

    if-ne v2, v0, :cond_3

    .line 1136
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    .line 1151
    :cond_0
    :goto_0
    return v0

    .line 1139
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    .line 1141
    :cond_2
    if-nez p2, :cond_3

    .line 1142
    sget-boolean v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressed:Z

    if-eqz v2, :cond_3

    .line 1143
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1144
    sget v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mHWMenuKeyDB:I

    if-ne v2, v0, :cond_3

    .line 1145
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    .line 1146
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressed:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1151
    goto :goto_0
.end method

.method handleHotKeyDispatching(IZZZZ)V
    .locals 4
    .param p1, "repeatCount"    # I
    .param p2, "down"    # Z
    .param p3, "canceled"    # Z
    .param p4, "keyguardOn"    # Z
    .param p5, "isInteractive"    # Z

    .prologue
    const-wide/16 v2, 0x3e8

    .line 468
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/LGShortcutManager;->ignoreHotKeyWhenRinging(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    .line 474
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongPressEnabled:Z

    if-eqz v0, :cond_5

    .line 475
    if-nez p4, :cond_2

    if-nez p5, :cond_4

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressed:Z

    goto :goto_0

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeySettingsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 480
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mFourthKeySharing:Z

    if-eqz v0, :cond_3

    .line 481
    if-nez p4, :cond_3

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeySettingsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 486
    :cond_6
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressed:Z

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressed:Z

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeySettingsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 490
    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p3, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isMDMGetLockoutNow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->sShortKeyPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->sShortKeyClass:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->executeHotKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleHotKeyLongPressWakeLock(Z)V
    .locals 1
    .param p1, "down"    # Z

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyLongPressEnabled:Z

    if-eqz v0, :cond_0

    .line 549
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressedForWakeLock:Z

    if-nez v0, :cond_1

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressedForWakeLock:Z

    .line 551
    sget-object v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressedForWakeLock:Z

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyPressedForWakeLock:Z

    .line 554
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->releaseLongKeyWakeLock()V

    goto :goto_0
.end method

.method handleRotationKey(Z)V
    .locals 1
    .param p1, "down"    # Z

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mAccelSensorNotSupported:Z

    if-eqz v0, :cond_0

    .line 283
    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->switchRotationMode()V

    .line 287
    :cond_0
    return-void
.end method

.method interceptHotKeyLong()V
    .locals 4

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyTriggeredByLongPress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyTriggeredByLongPress:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 564
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->launchHotKeyLongPressAction()V

    .line 566
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->releaseLongKeyWakeLock()V

    .line 568
    :cond_0
    return-void
.end method

.method interceptLockToApps(Landroid/view/KeyEvent;ZZ)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "isInjected"    # Z

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 897
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_9

    if-nez p3, :cond_9

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 898
    if-eqz p2, :cond_3

    .line 899
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppConsumed:Z

    if-nez v2, :cond_9

    .line 900
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    if-eqz v2, :cond_9

    .line 902
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppConsumed:Z

    .line 903
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 935
    :goto_0
    return v0

    .line 907
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTriggeredByLockToApp:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    if-eqz v2, :cond_9

    .line 908
    :cond_2
    iget-wide v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTimeByLockToApp:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentAndMenuKeyTimeByLockToApp:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 909
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 910
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppConsumed:Z

    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 918
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppConsumed:Z

    if-eqz v0, :cond_9

    .line 919
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    if-eqz v0, :cond_8

    :cond_4
    move v0, v1

    .line 921
    goto :goto_0

    .line 924
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTriggeredByLockToApp:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTriggeredByLockToApp:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    if-eqz v0, :cond_8

    :cond_7
    move v0, v1

    .line 926
    goto :goto_0

    .line 930
    :cond_8
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppConsumed:Z

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLockToAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    move v0, v1

    .line 935
    goto :goto_0
.end method

.method interceptVolumeDownLongKey()V
    .locals 4

    .prologue
    .line 646
    const-string v0, "LGShortcutManager"

    const-string v1, "interceptVolumeDownLongKey"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 650
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "LGShortcutManager"

    const-string v1, "HW_SENSOR : Proximity Sensor confirm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/SensorUtil;->setSensorEnabled(Z)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    return-void
.end method

.method interceptVolumeUpLongKey()V
    .locals 4

    .prologue
    .line 631
    const-string v0, "LGShortcutManager"

    const-string v1, "interceptVolumeUpLongKey:"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sget-object v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 634
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    if-eqz v0, :cond_0

    .line 636
    const-string v0, "LGShortcutManager"

    const-string v1, "HW_SENSOR : Proximity Sensor confirm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/SensorUtil;->setSensorEnabled(Z)V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 3

    .prologue
    .line 892
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 893
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    return v1
.end method

.method isPowerVolumeDownResetAvailable()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerVolumeDownReset:Z

    return v0
.end method

.method isRearSideKeyEnabled()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    return v0
.end method

.method isSmartCoverExceptionalCase(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 738
    sget-boolean v2, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    if-eqz v2, :cond_1

    .line 739
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 757
    :cond_0
    :goto_0
    return v0

    .line 741
    :sswitch_0
    const-string v2, "persist.radio.keyBlockByCall"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 744
    goto :goto_0

    .line 749
    :sswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/SmartCoverUtil;->isSmartCoverNoView()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 752
    goto :goto_0

    :cond_1
    move v0, v1

    .line 757
    goto :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x52 -> :sswitch_1
        0xa5 -> :sswitch_0
        0xbb -> :sswitch_1
    .end sparse-switch
.end method

.method isVolumeLongKeySettingAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 698
    sget-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyLongPressEnabled:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyShortcutStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVolumeUpDownComboSettingAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 765
    sget-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipVolumeKeyCombo:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyShortcutStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method launchHotKeyLongPressAction()V
    .locals 4

    .prologue
    .line 616
    const-string v1, "LGShortcutManager"

    const-string v2, "launchHotKeyLongPressAction:"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->wakeUpAndShowToastForLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->setBoost()V

    .line 621
    sget-object v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mLongKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.Q_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "quickclipIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 626
    const-string v1, "com.lge.intent.extra.Q_BUTTON_PATH"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.lge.permission.QUICKMODE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method launchVolumeDownLongPressAction()V
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->wakeUpAndShowToastForLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    :goto_0
    return-void

    .line 665
    :cond_0
    const/4 v0, 0x0

    .line 666
    .local v0, "cameraIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->setBoost()V

    .line 667
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 676
    :goto_1
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 679
    const-string v1, "com.lge.camera.launchingPath"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    const-string v1, "com.lge.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    sget-boolean v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SmartCoverUtil;->isSmartCoverNoView()Z

    move-result v1

    if-nez v1, :cond_2

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 686
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->releaseLongKeyWakeLock()V

    goto :goto_0

    .line 670
    :cond_3
    sget-boolean v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-eqz v1, :cond_4

    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->INSECURE_COVER_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_1

    .line 673
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_1
.end method

.method launchVolumeUpLongPressAction()V
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRearSideKeyEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mSupportQuickMemo:Z

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->launchHotKeyLongPressAction()V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LGShortcutManager;->launchVolumeDownLongPressAction()V

    goto :goto_0
.end method

.method popupBlockSimSwitchToast()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mToastBlockSimSwitch:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method postQuickClipLongPress()V
    .locals 4

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 782
    return-void
.end method

.method registerStatusBarReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 525
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.lge.statusbar.expanded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v1, "com.lge.statusbar.collapsed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    sget-object v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mStatusBarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 528
    return-void
.end method

.method sendQuickMemoBlockIntent()Z
    .locals 3

    .prologue
    .line 769
    const/high16 v1, 0x20000000

    invoke-static {v1}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    const-string v1, "LGShortcutManager"

    const-string v2, "QMemo is blocked. Broadcast the QMemo block intent."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyCustomizing:Z

    if-nez v1, :cond_0

    .line 772
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.systemui.qmemo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v0, "blockQuickClipIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 775
    .end local v0    # "blockQuickClipIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    .line 777
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method sendSimSwitchKeyIntent()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "LGShortcutManager"

    const-string v1, "sendSimSwitchKeyIntent : sendBroadcast ACTION_DUAL_SIM_SWITCHING_KEY_PRESSED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$1;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    :cond_0
    return-void
.end method

.method setBasicSensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 454
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 455
    if-eqz p1, :cond_1

    .line 456
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 457
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 458
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method showQButtonGuideDialog()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$2;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method switchRotationMode()V
    .locals 3

    .prologue
    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.SWITCH_ROTATION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRotationModeIsLand:Z

    if-eqz v1, :cond_1

    .line 294
    const-string v1, "com.lge.intent.extra.ROTATION_MODE"

    const-string v2, "port"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 296
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRotationModeIsLand:Z

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 307
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 298
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "com.lge.intent.extra.ROTATION_MODE"

    const-string v2, "land"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 300
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRotationModeIsLand:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 304
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 305
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method systemReadyShakingGesture()V
    .locals 3

    .prologue
    .line 538
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 540
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1dcbd6f8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensor:Landroid/hardware/Sensor;

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mBasicGestureSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 542
    const-string v0, "LGShortcutManager"

    const-string v1, "HW_SENSOR : Don\'t Use BasicGesture Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    return-void
.end method

.method toggleQuickClipFromHotKey()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGShortcutManager$3;-><init>(Lcom/android/internal/policy/impl/LGShortcutManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method updateHWMenuKeySetting(Landroid/content/ContentResolver;Z)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "hasNavigationBar"    # Z

    .prologue
    .line 426
    if-nez p2, :cond_0

    .line 427
    const-string v0, "set_hw_menu_key_options"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHWMenuKeyDB:I

    .line 429
    :cond_0
    return-void
.end method

.method updateHotKeyPkgClassName(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, -0x2

    .line 432
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mHotKeyCustomizing:Z

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "hotkey_short_package"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->sShortKeyPkg:Ljava/lang/String;

    .line 434
    const-string v0, "hotkey_short_class"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->sShortKeyClass:Ljava/lang/String;

    .line 436
    :cond_0
    return-void
.end method

.method updateLGShortcutSettings(Landroid/content/ContentResolver;Z)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "hasNavibationBar"    # Z

    .prologue
    .line 531
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LGShortcutManager;->updateHotKeyPkgClassName(Landroid/content/ContentResolver;)V

    .line 532
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LGShortcutManager;->updateShakingGestureStatus(Landroid/content/ContentResolver;)V

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/LGShortcutManager;->updateHWMenuKeySetting(Landroid/content/ContentResolver;Z)V

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LGShortcutManager;->updateVolumeLongKeySettings(Landroid/content/ContentResolver;)V

    .line 535
    return-void
.end method

.method updateLockToAppTriggeredAndTime(Landroid/view/KeyEvent;ZZ)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "isInjected"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 852
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 853
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 854
    .local v1, "keyCode":I
    const/16 v4, 0x1a

    if-ne v1, v4, :cond_3

    .line 855
    if-eqz v0, :cond_2

    .line 856
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTriggeredByLockToApp:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 858
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTriggeredByLockToApp:Z

    .line 859
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTimeByLockToApp:J

    .line 889
    :cond_0
    :goto_1
    return-void

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_1
    move v0, v3

    .line 852
    goto :goto_0

    .line 862
    .restart local v0    # "down":Z
    .restart local v1    # "keyCode":I
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mPowerKeyTriggeredByLockToApp:Z

    goto :goto_1

    .line 864
    :cond_3
    const/16 v4, 0xbb

    if-ne v1, v4, :cond_5

    .line 865
    if-nez p3, :cond_0

    .line 866
    if-eqz v0, :cond_4

    .line 867
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 869
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    .line 870
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentAndMenuKeyTimeByLockToApp:J

    goto :goto_1

    .line 873
    :cond_4
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    goto :goto_1

    .line 876
    :cond_5
    const/16 v4, 0x52

    if-ne v1, v4, :cond_0

    .line 877
    if-nez p3, :cond_0

    .line 878
    if-eqz v0, :cond_6

    .line 879
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 881
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    .line 882
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentAndMenuKeyTimeByLockToApp:J

    goto :goto_1

    .line 885
    :cond_6
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    goto :goto_1
.end method

.method updateShakingGestureStatus(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 439
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingGesture:Z

    if-eqz v0, :cond_0

    .line 440
    const-string v0, "isai_enabled"

    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingEnabled:Z

    .line 441
    const-string v0, "isai_mode_select"

    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingMode:I

    .line 442
    const-string v0, "isai_shortcut_package"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingPkg:Ljava/lang/String;

    .line 443
    const-string v0, "isai_shortcut_class"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingClass:Ljava/lang/String;

    .line 445
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/LGShortcutManager;->mShakingMode:I

    if-ne v0, v1, :cond_2

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->setBasicSensorEnabled(Z)V

    .line 451
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 440
    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->setBasicSensorEnabled(Z)V

    goto :goto_1
.end method

.method updateVolumeLongKeySettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 702
    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyLongPressEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mQuickClipVolumeKeyCombo:Z

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    const-string v0, "shortcut_key_status"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeKeyShortcutStatus:I

    .line 705
    :cond_1
    return-void
.end method
