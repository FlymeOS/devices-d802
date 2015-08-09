.class public Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "PhoneWindowManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;
    }
.end annotation


# static fields
.field private static final QUICKCLIP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "PhoneWindowManagerEx"

.field private static final TAG_SMARTCOVER:Ljava/lang/String; = "SmartCover"

.field static mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;


# instance fields
.field private final endCallByPowerKey:Ljava/lang/Runnable;

.field private mBackKeyLongPressed:Z

.field private mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

.field private mCurrId:I

.field private mEasyAccessLauncher:Lcom/android/internal/policy/impl/EasyAccessLauncher;

.field private mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

.field mHelperBoost:Lcom/lge/loader/LGContextHelper;

.field private final mHoldCallByPowerKey:Ljava/lang/Runnable;

.field private mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

.field private mIsInteractiveWhenPowerKeyDown:Z

.field private mIsInteractiveWhenPowerKeyDownInCall:Z

.field private mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

.field private mLGGlobalActions:Lcom/android/internal/policy/impl/LGGlobalActions;

.field private mLGInputEventMonitor:Lcom/android/internal/policy/impl/LGInputEventMonitor;

.field private mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

.field mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

.field private mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

.field private mPowerKeyConsumedByReset:Z

.field private mPowerKeyScenarioOfLG:Z

.field private mPowerKeyTriggeredByEx:Z

.field private mPowerKeyTriggeredByReset:Z

.field private mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

.field private mSensorUtil:Lcom/android/internal/policy/impl/SensorUtil;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

.field private mSilenceRinger:Z

.field mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

.field mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

.field private mSmartCoverUtil:Lcom/android/internal/policy/impl/SmartCoverUtil;

.field private mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

.field private mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

.field private mTouchCrackModeControl:Lcom/android/internal/policy/impl/TouchCrackModeControl;

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeDownKeyConsumedByQuickClipChord:Z

.field private mVolumeDownKeyConsumedByReset:Z

.field private mVolumeDownKeyTimeByEx:J

.field private mVolumeDownKeyTriggeredByEx:Z

.field private mVolumeDownKeyTriggeredByReset:Z

.field private mVolumeUpKeyConsumedByQuickClipChord:Z

.field private mVolumeUpKeyTimeByEx:J

.field private mVolumeUpKeyTriggeredByEx:Z

.field private mWakedByHomeKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGGlobalActions:Lcom/android/internal/policy/impl/LGGlobalActions;

    .line 77
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    .line 78
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    .line 79
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    .line 80
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    .line 81
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeControl:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    .line 82
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    .line 83
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    .line 84
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessLauncher:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    .line 85
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    .line 86
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverUtil:Lcom/android/internal/policy/impl/SmartCoverUtil;

    .line 87
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorUtil:Lcom/android/internal/policy/impl/SensorUtil;

    .line 88
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyScenarioOfLG:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDown:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDownInCall:Z

    .line 106
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    .line 107
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 109
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    .line 110
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCurrId:I

    .line 112
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByReset:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByReset:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    .line 134
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    .line 137
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBackKeyLongPressed:Z

    .line 880
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHoldCallByPowerKey:Ljava/lang/Runnable;

    .line 899
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->endCallByPowerKey:Ljava/lang/Runnable;

    .line 1480
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/LGShortcutManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/HomeSetupWizard;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCurrId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManagerEx;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCurrId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;)Lcom/android/internal/policy/impl/TouchControlArea;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManagerEx;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    return-object v0
.end method

.method public static getLGSystemUiVisibility()I
    .locals 4

    .prologue
    .line 1800
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLastSystemUiFlagsLG:I

    .line 1801
    .local v0, "mSystemUiVisibilityLG":I
    const-string v1, "PhoneWindowManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call!!!getLGSystemUiVisibility. =0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    return v0
.end method

.method private handleMenuLongDispatching(Landroid/view/KeyEvent;IIIZ)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "keyCode"    # I
    .param p4, "repeatCount"    # I
    .param p5, "down"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1807
    sget-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuLongPressEnabled:Z

    if-eqz v1, :cond_2

    .line 1808
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1809
    if-nez p5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1823
    :cond_0
    :goto_0
    return v0

    .line 1814
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/policy/impl/LGShortcutManager;->handleHWMenuLongKey(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1823
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1818
    :cond_3
    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleMenuLongToRecentKey(Landroid/view/KeyEvent;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private handleMenuLongToRecentKey(Landroid/view/KeyEvent;IZ)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "repeatCount"    # I
    .param p3, "down"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1828
    if-eqz p3, :cond_1

    if-nez p2, :cond_1

    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->preloadRecentApps()V

    .line 1837
    :cond_0
    :goto_0
    return v0

    .line 1830
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 1831
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1832
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1833
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->toggleRecentApps()V

    .line 1835
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handlePowerKeyByLG(Landroid/view/KeyEvent;IZZZZ)I
    .locals 15
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "result"    # I
    .param p3, "down"    # Z
    .param p4, "canceled"    # Z
    .param p5, "interactive"    # Z
    .param p6, "isWakeKey"    # Z

    .prologue
    .line 726
    and-int/lit8 p2, p2, -0x2

    .line 727
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 728
    .local v10, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz p3, :cond_13

    .line 729
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    iget v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLastSystemUiFlags:I

    invoke-virtual {p0, v14}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isImmersiveMode(I)Z

    move-result v14

    move/from16 v0, p5

    invoke-virtual {v11, v0, v12, v13, v14}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)Z

    move-result v5

    .line 731
    .local v5, "panic":Z
    if-eqz v5, :cond_0

    sget-boolean v11, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    if-nez v11, :cond_0

    .line 732
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRequestTransientNav:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    :cond_0
    if-eqz p5, :cond_1

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v11

    and-int/lit16 v11, v11, 0x400

    if-nez v11, :cond_1

    .line 737
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    .line 738
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTime:J

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptScreenshotChord()V

    .line 742
    :cond_1
    const/4 v3, 0x0

    .line 743
    .local v3, "hungUp":Z
    const/4 v6, 0x0

    .line 744
    .local v6, "silenceMode":Z
    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIncallPowerBehavior:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_8

    const/4 v4, 0x1

    .line 745
    .local v4, "incallPowerBehavior":Z
    :goto_0
    if-eqz v10, :cond_2

    .line 746
    const-string v11, "PhoneWindowManagerEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Power key -> [endCall()] : mIncallPowerBehavior is hangup = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " interactive = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mCoverType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/internal/policy/impl/SmartCoverUtil;->mCoverType:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mSmartCoverClosed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :try_start_0
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 753
    const-string v11, "DCM"

    invoke-static {v11}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 754
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v8

    .line 755
    .local v8, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v8, :cond_2

    .line 756
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelepcomServiceEx()Lcom/lge/internal/telecom/ITelecomServiceEx;

    move-result-object v7

    .line 757
    .local v7, "telecomEx":Lcom/lge/internal/telecom/ITelecomServiceEx;
    if-eqz v7, :cond_9

    invoke-interface {v7}, Lcom/lge/internal/telecom/ITelecomServiceEx;->isReservedCall()Z

    move-result v11

    if-nez v11, :cond_9

    .line 758
    const-string v11, "PhoneWindowManagerEx"

    const-string v12, "TelecomManager.silenceRinger())"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    const/4 v6, 0x1

    .line 809
    .end local v7    # "telecomEx":Lcom/lge/internal/telecom/ITelecomServiceEx;
    .end local v8    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    :goto_1
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDown:Z

    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDownInCall:Z

    .line 810
    if-eqz p5, :cond_3

    const/16 v11, 0x1a

    invoke-direct {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isPowerKeyScreenOnInCalling(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 811
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDownInCall:Z

    .line 814
    :cond_3
    if-nez v3, :cond_6

    if-nez v6, :cond_6

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    iget-boolean v11, v11, Lcom/android/internal/policy/impl/LGKeyException;->mPowerLongGlobalActionOnScreenOff:Z

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isScreenOn()Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz p5, :cond_6

    :cond_4
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v11, :cond_6

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v11, :cond_6

    sget-boolean v11, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyConsumedByEmergencyLauncher:Z

    if-nez v11, :cond_6

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    if-nez v11, :cond_6

    sget-boolean v11, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    if-eqz v11, :cond_5

    invoke-static {}, Lcom/android/internal/policy/impl/SmartCoverUtil;->isSmartCoverNoView()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isRecentMenuKeyTriggeredInLockToApp()Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_6
    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptPowerKeyDown(Z)V

    .line 842
    .end local v3    # "hungUp":Z
    .end local v4    # "incallPowerBehavior":Z
    .end local v5    # "panic":Z
    .end local v6    # "silenceMode":Z
    :goto_3
    if-eqz p6, :cond_7

    .line 843
    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 845
    :cond_7
    return p2

    .line 744
    .restart local v3    # "hungUp":Z
    .restart local v5    # "panic":Z
    .restart local v6    # "silenceMode":Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 761
    .restart local v4    # "incallPowerBehavior":Z
    .restart local v7    # "telecomEx":Lcom/lge/internal/telecom/ITelecomServiceEx;
    .restart local v8    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_9
    if-eqz v4, :cond_2

    .line 762
    :try_start_1
    const-string v11, "PhoneWindowManagerEx"

    const-string v12, "TelecomManager.endCall())"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v8}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    goto :goto_1

    .line 767
    .end local v7    # "telecomEx":Lcom/lge/internal/telecom/ITelecomServiceEx;
    .end local v8    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_a
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyServiceEx()Lcom/lge/internal/telephony/ITelephonyEx;

    move-result-object v9

    .line 768
    .local v9, "telephonyEx":Lcom/lge/internal/telephony/ITelephonyEx;
    if-eqz v9, :cond_b

    invoke-interface {v9}, Lcom/lge/internal/telephony/ITelephonyEx;->isReservedCall()Z

    move-result v11

    if-nez v11, :cond_b

    .line 769
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V

    .line 770
    const-string v11, "PhoneWindowManagerEx"

    const-string v12, "telephonyService.isRinging())"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 773
    :cond_b
    if-eqz v4, :cond_2

    invoke-interface {v9}, Lcom/lge/internal/telephony/ITelephonyEx;->isSKTPhone20RelaxationRingingMode()Z

    move-result v11

    if-nez v11, :cond_2

    .line 776
    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v3

    goto/16 :goto_1

    .line 780
    .end local v9    # "telephonyEx":Lcom/lge/internal/telephony/ITelephonyEx;
    :cond_c
    if-eqz v4, :cond_f

    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez p5, :cond_e

    :cond_d
    sget-boolean v11, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSmartCoverClosed:Z

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/android/internal/policy/impl/SmartCoverUtil;->isSmartCoverNoView()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 783
    :cond_e
    const-string v11, "PhoneWindowManagerEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "speakerphoneheadset ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/android/internal/policy/impl/LGCallAction;->isBTSpeakerPhoneHeadsetMode()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-static {}, Lcom/android/internal/policy/impl/LGCallAction;->isBTSpeakerPhoneHeadsetMode()Z

    move-result v11

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v11, :cond_2

    .line 789
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPendingPowerKeyUpCanceled:Z

    .line 790
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptCallEndPowerkey()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 805
    :catch_0
    move-exception v2

    .line 806
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v11, "PhoneWindowManagerEx"

    const-string v12, "ITelephony threw RemoteException"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 792
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_f
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz p5, :cond_11

    if-eqz v4, :cond_11

    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v11

    const/16 v12, 0x64

    if-eq v11, v12, :cond_10

    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v11

    const/16 v12, 0x66

    if-ne v11, v12, :cond_11

    :cond_10
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v11, :cond_11

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v11, :cond_11

    .line 796
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPendingPowerKeyUpCanceled:Z

    .line 797
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptCallEndPowerkey()V

    goto/16 :goto_1

    .line 798
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz p5, :cond_2

    if-nez v4, :cond_2

    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v11

    const/16 v12, 0x66

    if-ne v11, v12, :cond_2

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v11, :cond_2

    .line 801
    sget-boolean v11, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyHoldingCallByPowerKey:Z

    if-eqz v11, :cond_2

    .line 802
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptHoldCallPowerkey()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 814
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 822
    .end local v3    # "hungUp":Z
    .end local v4    # "incallPowerBehavior":Z
    .end local v5    # "panic":Z
    .end local v6    # "silenceMode":Z
    :cond_13
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    .line 823
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingScreenshotChordAction()V

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isScreenOn()Z

    move-result v11

    if-nez v11, :cond_14

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDown:Z

    if-eqz v11, :cond_14

    .line 826
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDown:Z

    .line 828
    :cond_14
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDown:Z

    if-eqz v11, :cond_15

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mIsInteractiveWhenPowerKeyDownInCall:Z

    if-eqz v11, :cond_15

    if-nez p4, :cond_15

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPendingPowerKeyUpCanceled:Z

    if-eqz v11, :cond_17

    :cond_15
    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->interceptPowerKeyUp(Z)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 829
    const/high16 v11, 0x2000000

    invoke-static {v11}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v11

    if-nez v11, :cond_16

    .line 830
    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOnEarly:Z

    if-eqz v11, :cond_18

    iget-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenOnFully:Z

    if-nez v11, :cond_18

    .line 831
    const-string v11, "PhoneWindowManagerEx"

    const-string v12, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :goto_5
    const/16 p6, 0x0

    .line 839
    :cond_16
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPendingPowerKeyUpCanceled:Z

    goto/16 :goto_3

    .line 828
    :cond_17
    const/4 v11, 0x0

    goto :goto_4

    .line 834
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->powerShortPress(J)V

    goto :goto_5
.end method

.method private handlePowerVolumeDownReset(Landroid/view/KeyEvent;ZIZ)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "keyCode"    # I
    .param p4, "interactive"    # Z

    .prologue
    const/16 v4, 0x1a

    const/16 v3, 0x19

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    if-eqz v0, :cond_1

    .line 634
    if-eqz p2, :cond_3

    .line 635
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1

    .line 636
    if-ne p3, v4, :cond_2

    .line 637
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    .line 641
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByReset:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByReset:Z

    if-eqz v0, :cond_1

    .line 642
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RestartAction;->runRestartAction()V

    .line 662
    :cond_1
    :goto_1
    return-void

    .line 638
    :cond_2
    if-ne p3, v3, :cond_0

    .line 639
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    goto :goto_0

    .line 649
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_5

    .line 650
    if-ne p3, v4, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    if-eqz v0, :cond_4

    .line 651
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    .line 653
    :cond_4
    if-ne p3, v3, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    if-eqz v0, :cond_5

    .line 654
    if-nez p4, :cond_5

    .line 655
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    .line 659
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/RestartAction;->cancleRestartActionPending()V

    goto :goto_1
.end method

.method private handleVolumeDownLongKey(Landroid/view/KeyEvent;ZZ)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v0, :cond_0

    .line 682
    if-eqz p2, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyTriggeredByLongPress:Z

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyConsumedByLongPress:Z

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyTriggeredByLongPress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVolumeLongKeyExecutable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->interceptVolumeDownLongKey()V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeDownLongKey()V

    goto :goto_0
.end method

.method private handleVolumeUpDownCombo(Landroid/view/KeyEvent;ZIZ)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "keyCode"    # I
    .param p4, "interactive"    # Z

    .prologue
    const-wide/16 v6, 0x96

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 599
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v4, :cond_3

    .line 600
    if-eqz p2, :cond_4

    .line 601
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_3

    .line 602
    const/16 v4, 0x19

    if-ne p3, v4, :cond_1

    .line 603
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 607
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-eqz v4, :cond_3

    .line 608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 609
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByEx:J

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeByEx:J

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gtz v4, :cond_3

    .line 611
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 612
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 614
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/LGShortcutManager;->sendQuickMemoBlockIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 627
    .end local v0    # "now":J
    :goto_1
    return v2

    .line 604
    :cond_1
    const/16 v4, 0x18

    if-ne p3, v4, :cond_0

    .line 605
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    goto :goto_0

    .line 617
    .restart local v0    # "now":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 618
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->postQuickClipLongPress()V

    .end local v0    # "now":J
    :cond_3
    :goto_2
    move v2, v3

    .line 627
    goto :goto_1

    .line 624
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelPendingQuickClipChordAction()V

    goto :goto_2
.end method

.method private handleVolumeUpLongKey(Landroid/view/KeyEvent;ZZ)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v0, :cond_1

    .line 666
    if-eqz p2, :cond_2

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyTriggeredByLongPress:Z

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyConsumedByLongPress:Z

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyTriggeredByLongPress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->isRearSideKeyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVolumeLongKeyExecutable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->interceptVolumeUpLongKey()V

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeUpLongKey()V

    goto :goto_0
.end method

.method private hideCliptrayIfNeededByBackKey(ZI)Z
    .locals 1
    .param p1, "down"    # Z
    .param p2, "keyCode"    # I

    .prologue
    .line 918
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 920
    if-nez p1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-virtual {v0}, Lcom/lge/systemservice/core/CliptrayManager;->hideCliptrayIfNeeded()V

    .line 923
    :cond_0
    const/4 v0, 0x1

    .line 926
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private injectMenuByAppSwitchLongPress(Landroid/view/KeyEvent;ZIZ)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyguardOn"    # Z
    .param p3, "repeatCount"    # I
    .param p4, "down"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1863
    sget-boolean v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyLongpressEnabled:Z

    if-eqz v2, :cond_3

    .line 1864
    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    .line 1865
    sput-boolean v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mInjectMenuKeyHandled:Z

    .line 1867
    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mInjectMenuKeyHandled:Z

    if-eqz v2, :cond_1

    if-nez p4, :cond_1

    .line 1868
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPreloadRecentApps()V

    .line 1880
    :goto_0
    return v0

    .line 1871
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    .line 1872
    sput-boolean v0, Lcom/android/internal/policy/impl/LGShortcutManager;->mInjectMenuKeyHandled:Z

    .line 1873
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1874
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1876
    :cond_2
    const/16 v1, 0x52

    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->injectKeyEvent(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1880
    goto :goto_0
.end method

.method private interceptCallEndPowerkey()V
    .locals 4

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->endCallByPowerKey:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 893
    :cond_0
    return-void
.end method

.method private interceptHoldCallPowerkey()V
    .locals 4

    .prologue
    .line 869
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHoldCallByPowerKey:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 872
    :cond_0
    return-void
.end method

.method private isCallAudioActive()Z
    .locals 1

    .prologue
    .line 696
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isFMActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isVVMActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isQPairCallingActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isOffhook()Z

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

.method private isFocusedWindowIsKeyguard()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x1

    return v0
.end method

.method private isPowerKeyScreenOnInCalling(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 859
    invoke-static {}, Lcom/android/internal/policy/impl/LGCallAction;->isPowerKeyScreenOnInCalling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    const/4 v0, 0x1

    .line 864
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecentMenuKeyTriggeredInLockToApp()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isInLockTaskMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mRecentKeyTriggeredByLockToApp:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mMenuKeyTriggeredByLockToApp:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 855
    :cond_1
    return v0
.end method

.method private isVolumeLongKeyExecutable(Z)Z
    .locals 1
    .param p1, "interactive"    # Z

    .prologue
    .line 707
    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardIsShowingTq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isFocusedWindowIsKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/SmartCoverUtil;->mSupportSmartCover:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/SmartCoverUtil;->isSmartCoverWithView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isMDMGetLockoutNow()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isGsmOTARunningOrIgnoreKey()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isCallAudioActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isAllowedVolumeLongShortcutKeyByMDM()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVolumeUpDownCombo()Z
    .locals 2

    .prologue
    .line 716
    const/4 v0, 0x0

    .line 717
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeUpDownComboSettingAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 718
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyTriggeredByLongPress:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyTriggeredByLongPress:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 721
    :cond_2
    :goto_0
    return v0

    .line 718
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchGuestModeHome()V
    .locals 5

    .prologue
    .line 1326
    const-string v2, "homekey"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1328
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1329
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.lge.launcher2"

    const-string v3, "com.lge.launcher2.plushome.kidshome.LGKidsHome"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1330
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1331
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private makeLGPowerManagerLoader()V
    .locals 3

    .prologue
    .line 185
    :try_start_0
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v2, "lgpowermanagerhelper"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeEndCallByPowerKey()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->endCallByPowerKey:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 897
    return-void
.end method

.method private removeHoldCallByPowerKey()V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHoldCallByPowerKey:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method

.method private updateKeyTriggeredAndTime(Landroid/view/KeyEvent;Z)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 554
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 555
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 557
    .local v1, "keyCode":I
    const/16 v4, 0x1a

    if-ne v1, v4, :cond_4

    .line 558
    if-eqz v0, :cond_3

    .line 559
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 561
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    .line 563
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByReset:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    .line 564
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByReset:Z

    .line 595
    :cond_1
    :goto_1
    return-void

    .end local v0    # "down":Z
    .end local v1    # "keyCode":I
    :cond_2
    move v0, v3

    .line 554
    goto :goto_0

    .line 567
    .restart local v0    # "down":Z
    .restart local v1    # "keyCode":I
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    .line 568
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByReset:Z

    goto :goto_1

    .line 570
    :cond_4
    const/16 v4, 0x19

    if-ne v1, v4, :cond_7

    .line 571
    if-eqz v0, :cond_6

    .line 572
    if-eqz p2, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_5

    .line 574
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    .line 575
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByEx:J

    .line 577
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByReset:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    .line 578
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByReset:Z

    goto :goto_1

    .line 581
    :cond_6
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    .line 582
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByReset:Z

    goto :goto_1

    .line 584
    :cond_7
    const/16 v4, 0x18

    if-ne v1, v4, :cond_1

    .line 585
    if-eqz v0, :cond_8

    .line 586
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    .line 588
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    .line 589
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeByEx:J

    goto :goto_1

    .line 592
    :cond_8
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    goto :goto_1
.end method


# virtual methods
.method public allowAppAnimationsLw()Z
    .locals 2

    .prologue
    .line 1278
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->allowAppAnimationsLw()Z

    move-result v0

    .line 1279
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1281
    const/4 v0, 0x0

    .line 1284
    :cond_0
    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1205
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/LGKeyException;->setKeyExceptionWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    if-eqz v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mForceStatusBar:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->applySplitWindowAtPostLayoutPolicyLw(Z)V

    .line 1213
    :cond_1
    return-void
.end method

.method protected areTranslucentBarsAllowed()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TouchControlArea;->getTouchControlServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 1
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    .line 1197
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->beginPostLayoutPolicyLw(II)V

    .line 1198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LGKeyException;->sIsUpdatedKeyExceptionWinState:Z

    .line 1199
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1781
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method protected canHideNavigationBar()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TouchControlArea;->getTouchControlServiceRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1792
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1349
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/LGShortcutManager;->dumpLGShortcutManager(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->dumpEmergencyLauncher(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1357
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v0, :cond_2

    .line 1358
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/LGKeyException;->dumpLGKeyException(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1360
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    if-eqz v0, :cond_3

    .line 1361
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/LGCallAction;->dumpLGCallAction(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1363
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    if-eqz v0, :cond_4

    .line 1364
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/HomeSetupWizard;->dumpHomeSetupWizard(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1366
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorUtil:Lcom/android/internal/policy/impl/SensorUtil;

    if-eqz v0, :cond_5

    .line 1367
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorUtil:Lcom/android/internal/policy/impl/SensorUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/SensorUtil;->dumpSensorUtil(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1369
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverUtil:Lcom/android/internal/policy/impl/SmartCoverUtil;

    if-eqz v0, :cond_6

    .line 1370
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverUtil:Lcom/android/internal/policy/impl/SmartCoverUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/SmartCoverUtil;->dumpSmartCoverUtil(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1372
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeControl:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    if-eqz v0, :cond_7

    .line 1373
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeControl:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->dumpTouchCrackMode(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1375
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    if-eqz v0, :cond_8

    .line 1376
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/RestartAction;->dumpRestartAction(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1378
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    if-eqz v0, :cond_9

    .line 1379
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->dumpSplitWindowLauncher(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1381
    :cond_9
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 2

    .prologue
    .line 1244
    const/4 v0, 0x0

    .line 1246
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    .line 1248
    sget-boolean v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHideLockScreen:Z

    if-eqz v1, :cond_2

    .line 1250
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->onCoverHide()V

    .line 1272
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishPostLayoutPolicyLw()I

    move-result v1

    or-int/2addr v1, v0

    return v1

    .line 1261
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->onCoverShow()V

    goto :goto_0
.end method

.method public getKeyguardServiceDelegate()Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    return-object v0
.end method

.method public goingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 1290
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goingToSleep(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->onScreenTurnedOff(I)V

    .line 1294
    :cond_0
    return-void
.end method

.method handleNotificationKeyDispatching()V
    .locals 4

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1842
    .local v1, "sbs":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v1, :cond_0

    .line 1843
    const-string v2, "PhoneWindowManagerEx"

    const-string v3, "StatusBarService is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :goto_0
    return-void

    .line 1848
    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mIsExpandedNotificationPanel:Z

    if-eqz v2, :cond_1

    .line 1849
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1856
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1851
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1852
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method handleVolumeKey(II)V
    .locals 5
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    .line 1659
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1660
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 1687
    :goto_0
    return-void

    .line 1668
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1671
    if-nez p1, :cond_1

    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1672
    const/4 p1, 0x6

    .line 1676
    :cond_1
    const/16 v2, 0x18

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1676
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1682
    :catch_0
    move-exception v1

    .line 1683
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1685
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 149
    new-instance v1, Lcom/android/internal/policy/impl/EasyAccessLauncher;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/EasyAccessLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessLauncher:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    .line 150
    new-instance v1, Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/EmergencyLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    .line 151
    new-instance v1, Lcom/android/internal/policy/impl/HomeSetupWizard;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/HomeSetupWizard;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    .line 152
    new-instance v1, Lcom/android/internal/policy/impl/SensorUtil;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/SensorUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorUtil:Lcom/android/internal/policy/impl/SensorUtil;

    .line 153
    new-instance v1, Lcom/android/internal/policy/impl/LGCallAction;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/LGCallAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    .line 154
    new-instance v1, Lcom/android/internal/policy/impl/LGKeyException;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/LGKeyException;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    .line 155
    new-instance v1, Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/internal/policy/impl/LGShortcutManager;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    .line 156
    new-instance v1, Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/SplitWindowLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    .line 157
    new-instance v1, Lcom/android/internal/policy/impl/SmartCoverUtil;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/SmartCoverUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverUtil:Lcom/android/internal/policy/impl/SmartCoverUtil;

    .line 159
    new-instance v1, Lcom/android/internal/policy/impl/TouchControlArea;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/TouchControlArea;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/TouchControlArea;->setHandler(Landroid/os/Handler;)V

    .line 164
    :cond_0
    new-instance v1, Lcom/android/internal/policy/impl/TouchCrackModeControl;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/policy/impl/TouchCrackModeControl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeControl:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    .line 166
    new-instance v1, Lcom/android/internal/policy/impl/RestartAction;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/RestartAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    .line 168
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerEx;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx$SettingsObserver;->observe()V

    .line 171
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v1, p1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v2, "volumevibrator"

    invoke-virtual {v1, v2}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/VolumeVibratorManager;

    check-cast v1, Lcom/lge/systemservice/core/VolumeVibratorManager;

    sput-object v1, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    .line 172
    new-instance v1, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v1, p1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v2, "cliptray"

    invoke-virtual {v1, v2}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/CliptrayManager;

    check-cast v1, Lcom/lge/systemservice/core/CliptrayManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    .line 173
    new-instance v1, Lcom/android/internal/policy/impl/LGInputEventMonitor;

    invoke-direct {v1, p1, p3}, Lcom/android/internal/policy/impl/LGInputEventMonitor;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGInputEventMonitor:Lcom/android/internal/policy/impl/LGInputEventMonitor;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "userSwitchFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->makeLGPowerManagerLoader()V

    .line 181
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 30
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v12

    .line 936
    .local v12, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 937
    .local v5, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 939
    .local v6, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 940
    .local v21, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v7, 0x1

    .line 941
    .local v7, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    .line 944
    .local v11, "canceled":Z
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptKeyTi keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " down="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " repeatCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keyguardOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHomePressed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canceled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/LGKeyException;->bypassKeyExceptionStatus(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 950
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is passed to app."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-wide/16 v26, 0x0

    .line 1191
    :cond_0
    :goto_1
    return-wide v26

    .line 940
    .end local v7    # "down":Z
    .end local v11    # "canceled":Z
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 954
    .restart local v7    # "down":Z
    .restart local v11    # "canceled":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v5, v7}, Lcom/android/internal/policy/impl/TouchControlArea;->handleTouchControlLauncherDispatching(Landroid/view/KeyEvent;IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 955
    const-wide/16 v26, -0x1

    goto :goto_1

    .line 959
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    move/from16 v0, p3

    invoke-virtual {v2, v0, v5, v7}, Lcom/android/internal/policy/impl/LGCallAction;->answerRingingCallByHomeOrHotKey(IIZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 960
    const-wide/16 v26, -0x1

    goto :goto_1

    .line 963
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGKeyException;->bypassKeySPCErrFreeze()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 964
    const-wide/16 v26, 0x0

    goto :goto_1

    .line 967
    :cond_5
    const/4 v2, 0x3

    if-ne v5, v2, :cond_9

    .line 968
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isGsmOTARunningOrIgnoreKey()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 969
    const-wide/16 v26, -0x1

    goto :goto_1

    .line 973
    :cond_6
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isVTRingingOrDialing()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    if-eqz v2, :cond_7

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/LGCallAction;->ignoreHomeKeyWhileVTRingingOrDialing(I)J

    move-result-wide v26

    goto :goto_1

    .line 979
    :cond_7
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    if-eqz v7, :cond_8

    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeDoubleTapPending:Z

    if-nez v2, :cond_8

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->preloadRecentApps()V

    .line 984
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeConsumed:Z

    invoke-virtual {v2, v7, v11, v3}, Lcom/android/internal/policy/impl/HomeSetupWizard;->showGoHomeDialog(ZZZ)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 985
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    .line 986
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 990
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_1a

    .line 991
    const/16 v2, 0xbb

    if-ne v5, v2, :cond_c

    .line 992
    if-nez v12, :cond_c

    .line 993
    if-nez v11, :cond_a

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isGsmOTARunningOrIgnoreKey()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 994
    :cond_a
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 996
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v6, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->injectMenuByAppSwitchLongPress(Landroid/view/KeyEvent;ZIZ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 997
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1002
    :cond_c
    const/16 v2, 0x52

    if-ne v5, v2, :cond_d

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 1003
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleMenuLongDispatching(Landroid/view/KeyEvent;IIIZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1004
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1007
    :cond_d
    const/16 v2, 0xa5

    if-ne v5, v2, :cond_f

    .line 1008
    if-nez v7, :cond_e

    if-eqz v11, :cond_e

    .line 1009
    const-string v2, "PhoneWindowManagerEx"

    const-string v3, "Ignoring KEYCODE_HOT_KEY : event canceled."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1012
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v13

    move v9, v6

    move v10, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/policy/impl/LGShortcutManager;->handleHotKeyDispatching(IZZZZ)V

    .line 1013
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1014
    :cond_f
    const/16 v2, 0xab

    if-ne v5, v2, :cond_13

    .line 1015
    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v11, :cond_10

    sget-boolean v2, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-eqz v2, :cond_11

    .line 1016
    :cond_10
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1018
    :cond_11
    if-nez v7, :cond_12

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->toggleQuickClipFromHotKey()V

    .line 1021
    :cond_12
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1022
    :cond_13
    const/16 v2, 0x53

    if-ne v5, v2, :cond_15

    .line 1023
    if-nez v11, :cond_14

    if-nez v7, :cond_14

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleNotificationKeyDispatching()V

    .line 1026
    :cond_14
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1027
    :cond_15
    const/16 v2, 0xa7

    if-ne v5, v2, :cond_16

    .line 1028
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v18

    move v14, v12

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v11

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/policy/impl/LGShortcutManager;->executeQSlideKey(ZIZZZ)V

    .line 1029
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1030
    :cond_16
    const/16 v2, 0xa6

    if-ne v5, v2, :cond_19

    .line 1031
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isHomeGuestMode()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1032
    if-eqz v7, :cond_17

    if-nez v6, :cond_17

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->popupBlockSimSwitchToast()V

    .line 1038
    :cond_17
    :goto_2
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1036
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2, v12, v6, v7, v11}, Lcom/android/internal/policy/impl/LGShortcutManager;->executeSimSwitchKey(ZIZZ)V

    goto :goto_2

    .line 1039
    :cond_19
    const/16 v2, 0xaa

    if-ne v5, v2, :cond_1a

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/LGShortcutManager;->handleRotationKey(Z)V

    .line 1041
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1048
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_1c

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_1c

    .line 1049
    const/16 v2, 0x19

    if-ne v5, v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-eqz v2, :cond_1c

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isRearSideKeyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1052
    const/16 v22, 0x0

    .line 1053
    .local v22, "isOffhook":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v23

    .line 1054
    .local v23, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v23, :cond_1b

    .line 1056
    :try_start_0
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1062
    :cond_1b
    :goto_3
    if-eqz v22, :cond_1c

    .line 1063
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 1064
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTime:J

    const-wide/16 v8, 0x12c

    add-long v28, v2, v8

    .line 1065
    .local v28, "timeoutTime":J
    cmp-long v2, v24, v28

    if-gez v2, :cond_1e

    .line 1066
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v2, :cond_1d

    .line 1067
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1080
    .end local v22    # "isOffhook":Z
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v24    # "now":J
    .end local v28    # "timeoutTime":J
    :cond_1c
    :goto_4
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    .line 1082
    .local v26, "result":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeUpDownComboSettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_24

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_24

    .line 1084
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    if-nez v2, :cond_1f

    .line 1085
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 1086
    .restart local v24    # "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTimeByEx:J

    const-wide/16 v8, 0x96

    add-long v28, v2, v8

    .line 1087
    .restart local v28    # "timeoutTime":J
    cmp-long v2, v24, v28

    if-gez v2, :cond_20

    .line 1088
    sub-long v26, v28, v24

    goto/16 :goto_1

    .line 1057
    .end local v24    # "now":J
    .end local v26    # "result":J
    .end local v28    # "timeoutTime":J
    .restart local v22    # "isOffhook":Z
    .restart local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v20

    .line 1058
    .local v20, "ex":Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v3, "ITelephony threw RemoteException"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1069
    .end local v20    # "ex":Landroid/os/RemoteException;
    .restart local v24    # "now":J
    .restart local v28    # "timeoutTime":J
    :cond_1d
    sub-long v26, v28, v24

    goto/16 :goto_1

    .line 1071
    :cond_1e
    const-wide/16 v2, 0x96

    add-long v2, v2, v28

    cmp-long v2, v24, v2

    if-gez v2, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggered:Z

    if-nez v2, :cond_1c

    .line 1073
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    goto :goto_4

    .line 1090
    .end local v22    # "isOffhook":Z
    .end local v23    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v24    # "now":J
    .end local v28    # "timeoutTime":J
    .restart local v26    # "result":J
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyTriggeredByEx:Z

    if-nez v2, :cond_20

    .line 1091
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 1092
    .restart local v24    # "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTimeByEx:J

    const-wide/16 v8, 0x96

    add-long v28, v2, v8

    .line 1093
    .restart local v28    # "timeoutTime":J
    cmp-long v2, v24, v28

    if-gez v2, :cond_20

    .line 1094
    sub-long v26, v28, v24

    goto/16 :goto_1

    .line 1097
    .end local v24    # "now":J
    .end local v28    # "timeoutTime":J
    :cond_20
    const/16 v2, 0x19

    if-ne v5, v2, :cond_22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    if-eqz v2, :cond_22

    .line 1099
    if-nez v7, :cond_21

    .line 1100
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByQuickClipChord:Z

    .line 1102
    :cond_21
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1104
    :cond_22
    const/16 v2, 0x18

    if-ne v5, v2, :cond_24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    if-eqz v2, :cond_24

    .line 1106
    if-nez v7, :cond_23

    .line 1107
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyConsumedByQuickClipChord:Z

    .line 1109
    :cond_23
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1113
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isPowerVolumeDownResetAvailable()Z

    move-result v2

    if-eqz v2, :cond_28

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_28

    .line 1114
    const/16 v2, 0x1a

    if-ne v5, v2, :cond_26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    if-eqz v2, :cond_26

    .line 1115
    if-nez v7, :cond_25

    .line 1116
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyConsumedByReset:Z

    .line 1118
    :cond_25
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1120
    :cond_26
    const/16 v2, 0x19

    if-ne v5, v2, :cond_28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    if-eqz v2, :cond_28

    .line 1121
    if-nez v7, :cond_27

    .line 1122
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    .line 1124
    :cond_27
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1128
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeLongKeySettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_2c

    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_2c

    .line 1130
    const/16 v2, 0x19

    if-ne v5, v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyConsumedByLongPress:Z

    if-eqz v2, :cond_2a

    .line 1132
    if-nez v7, :cond_29

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeDownKeyConsumedByLongPress:Z

    .line 1135
    :cond_29
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1137
    :cond_2a
    const/16 v2, 0x18

    if-ne v5, v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyConsumedByLongPress:Z

    if-eqz v2, :cond_2c

    .line 1139
    if-nez v7, :cond_2b

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/LGShortcutManager;->mVolumeUpKeyConsumedByLongPress:Z

    .line 1142
    :cond_2b
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1147
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->isDualWindowKeyAvailable()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1148
    const/4 v2, 0x4

    if-ne v5, v2, :cond_2d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2d

    if-eqz v7, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBackKeyLongPressed:Z

    if-eqz v2, :cond_2e

    :cond_2d
    const/16 v2, 0xac

    if-ne v5, v2, :cond_32

    if-nez v7, :cond_32

    if-nez v11, :cond_32

    .line 1150
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardOn()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isHomeGuestMode()Z

    move-result v2

    if-nez v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->isExceptionalPkgForSplitWindow()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isAutoTestMode()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/SplitWindowLauncher;->mSplitWindowDisabled:Z

    if-eqz v2, :cond_30

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->showMiniViewExceptionToast()V

    .line 1166
    :cond_2f
    :goto_5
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1158
    :cond_30
    const/4 v2, 0x4

    if-ne v5, v2, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1160
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1161
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBackKeyLongPressed:Z

    .line 1163
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->launchSplitWindowUI(I)V

    goto :goto_5

    .line 1168
    :cond_32
    const/4 v2, 0x4

    if-ne v5, v2, :cond_33

    if-eqz v7, :cond_33

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBackKeyLongPressed:Z

    if-eqz v2, :cond_33

    .line 1169
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1170
    :cond_33
    const/4 v2, 0x4

    if-ne v5, v2, :cond_34

    if-nez v7, :cond_34

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBackKeyLongPressed:Z

    if-eqz v2, :cond_34

    .line 1171
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mBackKeyLongPressed:Z

    .line 1176
    :cond_34
    const/4 v2, 0x3

    if-ne v5, v2, :cond_35

    if-nez v7, :cond_35

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d2

    if-ne v2, v3, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Floating"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1179
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->requestHideInputMethodWindow()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1187
    :cond_35
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGCallAction:Lcom/android/internal/policy/impl/LGCallAction;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v5, v7, v3, v6}, Lcom/android/internal/policy/impl/LGCallAction;->ignoreVolumeLongKeyAtCallScene(IZZI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1188
    const-wide/16 v26, -0x1

    goto/16 :goto_1

    .line 1180
    :catch_1
    move-exception v19

    .line 1181
    .local v19, "e":Ljava/lang/Exception;
    const-string v2, "PhoneWindowManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from requestHideInputMethodWindow() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 22
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSystemBooted:Z

    if-nez v2, :cond_1

    .line 211
    const/4 v11, 0x0

    .line 550
    :cond_0
    :goto_0
    return v11

    .line 214
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isShutdownStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "BeforeQueueing, Shutdown Started, All Key is blocked"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v11, 0x0

    goto :goto_0

    .line 219
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGKeyException;->bypassKeySPCErrFreeze()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    const/4 v11, 0x0

    goto :goto_0

    .line 223
    :cond_3
    const/4 v11, 0x1

    .line 224
    .local v11, "result":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_9

    const/4 v3, 0x1

    .line 225
    .local v3, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    .line 226
    .local v13, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 227
    .local v4, "keyCode":I
    const/high16 v2, 0x1000000

    and-int v2, v2, p2

    if-eqz v2, :cond_a

    const/16 v17, 0x1

    .line 228
    .local v17, "isInjected":Z
    :goto_2
    const/high16 v2, 0x20000000

    and-int v2, v2, p2

    if-eqz v2, :cond_b

    const/4 v7, 0x1

    .line 229
    .local v7, "interactive":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v2, :cond_c

    const/4 v8, 0x0

    .line 235
    .local v8, "keyguardActive":Z
    :goto_4
    const-string v2, "PhoneWindowManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTq keycode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " down="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interactive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " policyFlags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " injected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " keyguardActive="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_4
    const/4 v15, 0x1

    .line 245
    .local v15, "isWakeKey":Z
    :goto_5
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isPowerKeyScreenOnInCalling(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v17, :cond_f

    if-nez v15, :cond_f

    .line 248
    :cond_6
    const/4 v11, 0x1

    .line 249
    const/4 v15, 0x0

    .line 266
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGKeyException;->isVolumeDownToScreenOnAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x19

    if-ne v4, v2, :cond_8

    if-nez v3, :cond_8

    if-nez v7, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isCallAudioActive()Z

    move-result v2

    if-nez v2, :cond_8

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 273
    :cond_8
    const/4 v2, 0x3

    if-ne v4, v2, :cond_13

    if-nez v17, :cond_13

    .line 274
    if-eqz v3, :cond_12

    .line 275
    if-nez v7, :cond_13

    .line 276
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 278
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 224
    .end local v3    # "down":Z
    .end local v4    # "keyCode":I
    .end local v7    # "interactive":Z
    .end local v8    # "keyguardActive":Z
    .end local v13    # "canceled":Z
    .end local v15    # "isWakeKey":Z
    .end local v17    # "isInjected":Z
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 227
    .restart local v3    # "down":Z
    .restart local v4    # "keyCode":I
    .restart local v13    # "canceled":Z
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 228
    .restart local v17    # "isInjected":Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 229
    .restart local v7    # "interactive":Z
    :cond_c
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v8

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v8

    goto/16 :goto_4

    .line 243
    .restart local v8    # "keyguardActive":Z
    :cond_e
    const/4 v15, 0x0

    goto :goto_5

    .line 250
    .restart local v15    # "isWakeKey":Z
    :cond_f
    if-nez v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->shouldDispatchInputWhenNonInteractive()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 255
    const/4 v11, 0x1

    goto :goto_6

    .line 259
    :cond_10
    const/4 v11, 0x0

    .line 260
    if-eqz v15, :cond_7

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isWakeKeyWhenScreenOff(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 261
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 281
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    if-eqz v2, :cond_13

    .line 282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWakedByHomeKey:Z

    .line 283
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 290
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 291
    if-eqz v15, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 297
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->updateKeyTriggeredAndTime(Landroid/view/KeyEvent;Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_15

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v2, v0, v7, v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->updateLockToAppTriggeredAndTime(Landroid/view/KeyEvent;ZZ)V

    .line 302
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v2, :cond_16

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/internal/policy/impl/LGKeyException;->interceptKeyPreprocessingBeforeQueueing(ZIZ)V

    .line 306
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/LGShortcutManager;->isSmartCoverExceptionalCase(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 307
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 309
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeControl:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchCrackModeControl:Lcom/android/internal/policy/impl/TouchCrackModeControl;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->controlHWKeyAtTouchCrackMode(ZIZZZZ)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 311
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 315
    :cond_18
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->skipAllKeyByMDM(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 316
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 320
    :cond_19
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_1a

    .line 321
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v2

    if-eqz v2, :cond_1a

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 323
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "Power key is passed to app."

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    or-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 328
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    if-eqz v2, :cond_1c

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v7}, Lcom/android/internal/policy/impl/TouchControlArea;->isIgnoredKeyWhileTouchControl(Landroid/view/KeyEvent;ZIZ)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 330
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 333
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    invoke-virtual {v2, v11, v4}, Lcom/android/internal/policy/impl/TouchControlArea;->isHandledKeyWhileTouchControl(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isPowerKeyScreenOnInCalling(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 339
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getPowerManagerEx()Landroid/os/IPowerManagerEx;

    move-result-object v18

    .line 340
    .local v18, "powerManagerEx":Landroid/os/IPowerManagerEx;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 341
    .local v19, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_1d

    if-eqz v19, :cond_1d

    .line 343
    if-eqz v3, :cond_27

    .line 344
    :try_start_0
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 345
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/os/IPowerManagerEx;->setPowerKeyWhenCalling(Z)V

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/LGKeyException;->setForceGoToSleepAvaliableException(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v18    # "powerManagerEx":Landroid/os/IPowerManagerEx;
    .end local v19    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1d
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->isEmergencyLauncherConfigEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 361
    const/16 v2, 0x18

    if-ne v4, v2, :cond_2a

    .line 362
    if-eqz v3, :cond_29

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyTriggeredByEmergencyLauncher:Z

    if-nez v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1f

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyTriggeredByEmergencyLauncher:Z

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyTimeByEmergencyLauncher:J

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->interceptEmegencyLauncher()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeLongKeySettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeUpLongKey()V

    .line 371
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingPowerKeyAction()V

    .line 395
    :cond_1f
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isPowerVolumeDownResetAvailable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 396
    const/16 v2, 0x1a

    if-eq v4, v2, :cond_20

    const/16 v2, 0x19

    if-ne v4, v2, :cond_21

    .line 397
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handlePowerVolumeDownReset(Landroid/view/KeyEvent;ZIZ)V

    .line 401
    :cond_21
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_2e

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RestartAction;->isRestartActionConfigEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 403
    if-eqz v3, :cond_2d

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RestartAction;->runRestartAction()V

    .line 410
    :cond_22
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyScenarioOfLG:Z

    if-eqz v2, :cond_23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v12, v3

    move v14, v7

    .line 411
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handlePowerKeyByLG(Landroid/view/KeyEvent;IZZZZ)I

    move-result v11

    .line 414
    :cond_23
    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeLongKeySettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 415
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByScreenshotChord:Z

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyConsumedByReset:Z

    if-eqz v2, :cond_25

    .line 416
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeDownLongKey()V

    .line 420
    :cond_25
    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2, v7}, Lcom/android/internal/policy/impl/LGKeyException;->isForceGoToSleepAvaliable(Z)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGKeyException;->forceGoToSleep()V

    .line 424
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_0

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->interceptLockToApps(Landroid/view/KeyEvent;ZZ)Z

    goto/16 :goto_0

    .line 349
    .restart local v18    # "powerManagerEx":Landroid/os/IPowerManagerEx;
    .restart local v19    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_27
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/os/IPowerManagerEx;->getPowerKeyWhenCalling()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/os/IPowerManagerEx;->setPowerKeyWhenCalling(Z)V

    .line 352
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/LGKeyException;->setForceGoToSleepAvaliableException(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 354
    :catch_0
    move-exception v16

    .line 355
    .local v16, "ex":Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "RemoteException thrown"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 375
    .end local v16    # "ex":Landroid/os/RemoteException;
    .end local v18    # "powerManagerEx":Landroid/os/IPowerManagerEx;
    .end local v19    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mVolumeUpKeyTriggeredByEmergencyLauncher:Z

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->cancelPendingEmergencyLauncherChord()V

    goto/16 :goto_8

    .line 378
    :cond_2a
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_1f

    .line 379
    if-eqz v3, :cond_2c

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mPowerKeyTriggeredByEmergencyLauncher:Z

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mPowerKeyTimeByEmergencyLauncher:J

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->interceptEmegencyLauncher()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeLongKeySettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeUpLongKey()V

    .line 386
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->cancelPendingPowerKeyAction()V

    goto/16 :goto_8

    .line 389
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/EmergencyLauncher;->mPowerKeyTriggeredByEmergencyLauncher:Z

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEmergencyLauncher:Lcom/android/internal/policy/impl/EmergencyLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EmergencyLauncher;->cancelPendingEmergencyLauncherChord()V

    goto/16 :goto_8

    .line 406
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mRestartAction:Lcom/android/internal/policy/impl/RestartAction;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RestartAction;->cancleRestartActionPending()V

    goto/16 :goto_9

    .line 431
    :cond_2e
    const/16 v2, 0x19

    if-ne v4, v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_30

    :cond_2f
    const/16 v2, 0x18

    if-ne v4, v2, :cond_31

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_31

    .line 433
    :cond_30
    if-eqz v3, :cond_31

    .line 434
    if-eqz v7, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_31

    .line 435
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->removeEndCallByPowerKey()V

    .line 437
    sget-boolean v2, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyHoldingCallByPowerKey:Z

    if-eqz v2, :cond_31

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->removeHoldCallByPowerKey()V

    .line 445
    :cond_31
    invoke-super/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v11

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeUpDownComboSettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 448
    const/16 v2, 0x19

    if-eq v4, v2, :cond_32

    const/16 v2, 0x18

    if-ne v4, v2, :cond_33

    .line 449
    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleVolumeUpDownCombo(Landroid/view/KeyEvent;ZIZ)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 450
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 455
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_35

    .line 456
    const/16 v2, 0xbb

    if-eq v4, v2, :cond_34

    const/16 v2, 0x52

    if-ne v4, v2, :cond_35

    .line 457
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->interceptLockToApps(Landroid/view/KeyEvent;ZZ)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 458
    const/4 v11, -0x1

    goto/16 :goto_0

    .line 463
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->isVolumeLongKeySettingAvailable()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_39

    .line 465
    const/16 v2, 0x18

    if-ne v4, v2, :cond_3b

    .line 466
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeDownKeyTriggeredByEx:Z

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleVolumeUpLongKey(Landroid/view/KeyEvent;ZZ)V

    .line 471
    :cond_36
    :goto_a
    const/16 v2, 0x18

    if-eq v4, v2, :cond_37

    const/16 v2, 0x19

    if-ne v4, v2, :cond_39

    .line 472
    :cond_37
    if-eqz v3, :cond_39

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isCallAudioActive()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeDownLongKey()V

    .line 476
    :cond_38
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isVolumeUpDownCombo()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeUpLongKey()V

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->cancelVolumeDownLongKey()V

    .line 484
    :cond_39
    const/16 v2, 0xa5

    if-ne v4, v2, :cond_3a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v2, :cond_3a

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/LGShortcutManager;->handleHotKeyLongPressWakeLock(Z)V

    .line 486
    if-nez v7, :cond_3a

    .line 487
    or-int/lit8 v11, v11, 0x1

    .line 491
    :cond_3a
    const/4 v2, 0x3

    if-ne v4, v2, :cond_3d

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGKeyException:Lcom/android/internal/policy/impl/LGKeyException;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LGKeyException;->canBypassHomeKey()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 493
    or-int/lit8 v11, v11, 0x1

    .line 494
    goto/16 :goto_0

    .line 467
    :cond_3b
    const/16 v2, 0x19

    if-ne v4, v2, :cond_36

    .line 468
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeUpKeyTriggeredByEx:Z

    if-nez v2, :cond_36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v7}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleVolumeDownLongKey(Landroid/view/KeyEvent;ZZ)V

    goto :goto_a

    .line 497
    :cond_3c
    if-nez v3, :cond_3d

    if-nez v13, :cond_3d

    .line 498
    if-eqz v7, :cond_3d

    if-nez v8, :cond_3d

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_3d

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3d

    const-string v2, "SearchPanel"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessLauncher:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessLauncher:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/EasyAccessLauncher;->isHomeKeyConsumedByEasyAccess()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomePressed:Z

    .line 502
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 509
    :cond_3d
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_CLIPTRAY:Z

    if-eqz v2, :cond_3f

    .line 510
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->hideCliptrayIfNeededByBackKey(ZI)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 511
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 513
    :cond_3e
    if-eqz v3, :cond_3f

    const/4 v2, 0x3

    if-ne v4, v2, :cond_3f

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-virtual {v2}, Lcom/lge/systemservice/core/CliptrayManager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3f

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClipManager:Lcom/lge/systemservice/core/CliptrayManager;

    invoke-virtual {v2}, Lcom/lge/systemservice/core/CliptrayManager;->hideCliptray()V

    .line 521
    :cond_3f
    const/16 v2, 0x19

    if-eq v4, v2, :cond_40

    const/16 v2, 0x18

    if-eq v4, v2, :cond_40

    const/16 v2, 0xa4

    if-ne v4, v2, :cond_0

    .line 524
    :cond_40
    if-eqz v3, :cond_43

    .line 525
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v19

    .line 526
    .restart local v19    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v19, :cond_42

    .line 528
    :try_start_2
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 529
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    .line 531
    :cond_41
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isVVMActive()Z

    move-result v2

    if-eqz v2, :cond_42

    and-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_42

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-nez v2, :cond_42

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleVolumeKey(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 539
    :cond_42
    :goto_b
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isQPairCallingActive()Z

    move-result v2

    if-eqz v2, :cond_0

    and-int/lit8 v2, v11, 0x1

    if-nez v2, :cond_0

    .line 540
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->handleVolumeKey(II)V

    goto/16 :goto_0

    .line 535
    :catch_1
    move-exception v16

    .line 536
    .restart local v16    # "ex":Landroid/os/RemoteException;
    const-string v2, "PhoneWindowManagerEx"

    const-string v5, "ITelephony threw RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 543
    .end local v16    # "ex":Landroid/os/RemoteException;
    .end local v19    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    if-eqz v2, :cond_0

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSilenceRinger:Z

    .line 545
    and-int/lit8 v11, v11, -0x2

    goto/16 :goto_0
.end method

.method public interceptPowerKeyDown(Z)V
    .locals 4
    .param p1, "handled"    # Z

    .prologue
    .line 1712
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerKeyHandled:Z

    .line 1713
    if-nez p1, :cond_0

    .line 1714
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1716
    :cond_0
    return-void
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1563
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return v5

    .line 1566
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "haptic_feedback_enabled"

    const/4 v9, -0x2

    invoke-static {v7, v8, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_3

    move v0, v6

    .line 1568
    .local v0, "hapticsDisabled":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 1571
    :cond_2
    const/4 v2, 0x0

    .line 1572
    .local v2, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1574
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLongPressVibePattern:[J

    .line 1606
    :goto_2
    array-length v7, v2

    if-ne v7, v6, :cond_4

    .line 1608
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-virtual {v7, v10}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v3

    .line 1609
    .local v3, "vibVolume":I
    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    aget-wide v8, v2, v5

    invoke-virtual {v7, v8, v9, v3}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate(JI)V

    :goto_3
    move v5, v6

    .line 1619
    goto :goto_0

    .end local v0    # "hapticsDisabled":Z
    .end local v2    # "pattern":[J
    .end local v3    # "vibVolume":I
    :cond_3
    move v0, v5

    .line 1566
    goto :goto_1

    .line 1577
    .restart local v0    # "hapticsDisabled":Z
    .restart local v2    # "pattern":[J
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVirtualKeyVibePattern:[J

    .line 1578
    goto :goto_2

    .line 1580
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyboardTapVibePattern:[J

    .line 1581
    goto :goto_2

    .line 1583
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mClockTickVibePattern:[J

    .line 1584
    goto :goto_2

    .line 1586
    :sswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mCalendarDateVibePattern:[J

    .line 1587
    goto :goto_2

    .line 1589
    :sswitch_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSafeModeDisabledVibePattern:[J

    .line 1590
    goto :goto_2

    .line 1592
    :sswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSafeModeEnabledVibePattern:[J

    .line 1593
    goto :goto_2

    .line 1612
    :cond_4
    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    invoke-virtual {v5, v10}, Lcom/lge/systemservice/core/VolumeVibratorManager;->getVibrateVolume(I)I

    move-result v3

    .line 1613
    .restart local v3    # "vibVolume":I
    array-length v5, v2

    new-array v4, v5, [I

    .line 1614
    .local v4, "volumeIndex":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 1615
    aput v3, v4, v1

    .line 1614
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1617
    :cond_5
    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mVolumeVibrator:Lcom/lge/systemservice/core/VolumeVibratorManager;

    const/4 v7, -0x1

    invoke-virtual {v5, v2, v7, v4}, Lcom/lge/systemservice/core/VolumeVibratorManager;->vibrate([JI[I)V

    goto :goto_3

    .line 1572
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1220
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 1222
    .local v0, "result":I
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d9

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LG_SmartCover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    const-string v1, "SmartCover"

    const-string v2, "smart cover window added"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1227
    :cond_0
    return v0
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1233
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1235
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 1236
    const-string v0, "SmartCover"

    const-string v1, "Removing smart cover window.. crash?"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCover:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1239
    :cond_0
    return-void
.end method

.method protected requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1625
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1627
    :cond_1
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/4 v5, 0x1

    .line 1631
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->rotationForOrientationLw(II)I

    move-result v1

    .line 1632
    .local v1, "result":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1634
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHdmiPlugged:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDemoHdmiRotationLock:Z

    if-eqz v3, :cond_3

    .line 1635
    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-eq p1, v5, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mUserRotationMode:I

    if-ne v3, v5, :cond_1

    .line 1641
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPortraitRotation:I

    .line 1649
    .local v0, "preferredRotation":I
    :goto_0
    monitor-exit v4

    .line 1652
    .end local v0    # "preferredRotation":I
    :goto_1
    return v0

    .line 1643
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v2

    .line 1644
    .local v2, "sensorRotation":I
    if-gez v2, :cond_2

    .line 1645
    move v2, p2

    .line 1647
    :cond_2
    move v0, v2

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 1651
    .end local v0    # "preferredRotation":I
    .end local v2    # "sensorRotation":I
    :cond_3
    monitor-exit v4

    move v0, v1

    .line 1652
    goto :goto_1

    .line 1651
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setCurrentUserLw(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 1339
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 1340
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->setCurrentUser(I)V

    .line 1343
    :cond_0
    return-void
.end method

.method public setRotationLw(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 1722
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    if-nez v1, :cond_0

    .line 1723
    new-instance v1, Lcom/lge/loader/LGContextHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lge/loader/LGContextHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    .line 1725
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    if-nez v1, :cond_1

    .line 1726
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHelperBoost:Lcom/lge/loader/LGContextHelper;

    const-string v2, "lgpowermanagerhelper"

    invoke-virtual {v1, v2}, Lcom/lge/loader/LGContextHelper;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/loader/power/ILGPowerManagerLoader;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setRotationLw(I)V

    .line 1733
    return-void

    .line 1728
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGPowerManagerLoader:Lcom/lge/loader/power/ILGPowerManagerLoader;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/lge/loader/power/ILGPowerManagerLoader;->boost(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showGlobalActionsInternal()V
    .locals 5

    .prologue
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsInternal()V

    return-void

    const/4 v4, 0x0

    .line 1692
    sget-boolean v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-eqz v1, :cond_1

    .line 1693
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGGlobalActions:Lcom/android/internal/policy/impl/LGGlobalActions;

    if-nez v1, :cond_2

    .line 1696
    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/LGGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGGlobalActions:Lcom/android/internal/policy/impl/LGGlobalActions;

    .line 1699
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->keyguardIsShowingTq()Z

    move-result v0

    .line 1700
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGGlobalActions:Lcom/android/internal/policy/impl/LGGlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/LGGlobalActions;->showDialog(ZZ)V

    .line 1702
    if-eqz v0, :cond_0

    .line 1705
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_0
.end method

.method startDockOrHome()V
    .locals 1

    .prologue
    .line 1316
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->awakenDreams()V

    .line 1318
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isHomeGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->launchGuestModeHome()V

    .line 1323
    :goto_0
    return-void

    .line 1321
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_0
.end method

.method public systemBooted()V
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->onBootCompleted()V

    .line 1311
    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemBooted()V

    .line 1312
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 1526
    new-instance v0, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    .line 1527
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->onSystemReady()V

    .line 1529
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorUtil:Lcom/android/internal/policy/impl/SensorUtil;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSensorUtil:Lcom/android/internal/policy/impl/SensorUtil;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SensorUtil;->systemReadySensorUtil()V

    .line 1532
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v0, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGShortcutManager;->systemReadyShakingGesture()V

    .line 1535
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-nez v0, :cond_2

    .line 1536
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 1539
    :cond_2
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemReady()V

    .line 1541
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGInputEventMonitor:Lcom/android/internal/policy/impl/LGInputEventMonitor;

    if-eqz v0, :cond_3

    .line 1542
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGInputEventMonitor:Lcom/android/internal/policy/impl/LGInputEventMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LGInputEventMonitor;->handleInputEventListener()V

    .line 1545
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSystemReady:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasNavigationBar:Z

    if-eqz v0, :cond_4

    .line 1546
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v0, :cond_4

    .line 1547
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LGShortcutManager;->registerStatusBarReceiver(Landroid/content/Context;)V

    .line 1551
    :cond_4
    return-void
.end method

.method public updateSettings()V
    .locals 3

    .prologue
    .line 1499
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSettings()V

    .line 1501
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1503
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    if-eqz v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mLGShortcutManager:Lcom/android/internal/policy/impl/LGShortcutManager;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHasNavigationBar:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/LGShortcutManager;->updateLGShortcutSettings(Landroid/content/ContentResolver;Z)V

    .line 1506
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    if-eqz v1, :cond_1

    .line 1507
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mHomeSetupWizard:Lcom/android/internal/policy/impl/HomeSetupWizard;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/HomeSetupWizard;->updateGoHomeSetupWizardSettings(Landroid/content/ContentResolver;)V

    .line 1509
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessLauncher:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    if-eqz v1, :cond_2

    .line 1510
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mEasyAccessLauncher:Lcom/android/internal/policy/impl/EasyAccessLauncher;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/EasyAccessLauncher;->updateEasyAccessSetting(Landroid/content/ContentResolver;)V

    .line 1512
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    if-eqz v1, :cond_3

    .line 1513
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mTouchControlArea:Lcom/android/internal/policy/impl/TouchControlArea;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/TouchControlArea;->updateTouchControlSetting(Landroid/content/ContentResolver;)V

    .line 1515
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverUtil:Lcom/android/internal/policy/impl/SmartCoverUtil;

    if-eqz v1, :cond_4

    .line 1516
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverUtil:Lcom/android/internal/policy/impl/SmartCoverUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/SmartCoverUtil;->updateSmartCoverStatus(Landroid/content/ContentResolver;)V

    .line 1518
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    if-eqz v1, :cond_5

    .line 1519
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSplitWindowLauncher:Lcom/android/internal/policy/impl/SplitWindowLauncher;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/SplitWindowLauncher;->updateDualWindowKeySettings(Landroid/content/ContentResolver;)V

    .line 1521
    :cond_5
    return-void
.end method

.method protected updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 1739
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v0

    return v0
.end method

.method public wakingUp()V
    .locals 1

    .prologue
    .line 1299
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->wakingUp()V

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerEx;->mSmartCoverDelegate:Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/cover/SmartCoverServiceDelegate;->onScreenTurnedOn()V

    .line 1303
    :cond_0
    return-void
.end method
