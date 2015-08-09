.class Lcom/android/internal/policy/impl/LGGlobalActions;
.super Ljava/lang/Object;
.source "LGGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;,
        Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOffAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOnAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$LongPressAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$Poweroffaction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeTriStateAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeToggleAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressActionForEps;,
        Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/LGGlobalActions$Action;,
        Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_AIRPLANE_MODE_ON_POLICY_CHANGE:Ljava/lang/String; = "com.lge.mdm.intent.action.AIRPLANE_MODE_ON_POLICY_CHANGE"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final IMS_UCSTATE_URI:Landroid/net/Uri;

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final QTAG:Ljava/lang/String; = "Qtalkback"

.field private static final SHOW_SILENT_TOGGLE:Z = false

.field private static final TAG:Ljava/lang/String; = "LGGlobalActions"

.field private static final VIBRATE_DURATION:I = 0xc8

.field private static mContext:Landroid/content/Context;

.field private static mRingerMode:I


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

.field private mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

.field private mAirplaneOnDialog:Landroid/app/AlertDialog;

.field private mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

.field mAnimationActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallState:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDpiConvertUnit:F

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mHasVibrator:Z

.field private mIsATT:Z

.field private mIsCMCC:Z

.field private mIsKDDI:Z

.field private mIsRearDialog:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/LGGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mNavigationBarHeight:I

.field private mNavigationBarWidth:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPoweroffaction:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/LGGlobalActions$Action;

.field private mStatusBarHeight:I

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerMode:I

    .line 179
    const-string v0, "content://com.lge.ims.provider.uc/ucstate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/LGGlobalActions;->IMS_UCSTATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mKeyguardShowing:Z

    .line 163
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDeviceProvisioned:Z

    .line 164
    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 165
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z

    .line 171
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 172
    iput v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I

    .line 182
    const-string v8, "KDDI"

    const-string v11, "ro.build.target_operator"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsKDDI:Z

    .line 185
    const-string v8, "ATT"

    const-string v11, "ro.build.target_operator"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z

    .line 186
    const-string v8, "CMCC"

    const-string v11, "ro.build.target_operator"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsCMCC:Z

    .line 193
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    .line 1450
    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$11;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$11;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1493
    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$12;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$12;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1510
    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$13;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$13;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1519
    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$14;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    invoke-direct {v8, p0, v11}, Lcom/android/internal/policy/impl/LGGlobalActions$14;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 1532
    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$15;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$15;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget v8, Lcom/lge/internal/R$style;->Theme_LGE_White:I

    invoke-direct {v2, p1, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 206
    .local v2, "ctw":Landroid/view/ContextThemeWrapper;
    sput-object v2, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 208
    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 209
    const-string v8, "dreams"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 213
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v8, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v8, "com.lge.mdm.intent.action.AIRPLANE_MODE_ON_POLICY_CHANGE"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 227
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v11, 0x21

    invoke-virtual {v6, v8, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 230
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 232
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 234
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v8, "com.lguplus.u070pv507l"

    const/16 v11, 0x80

    invoke-virtual {v5, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 235
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_3
    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "airplane_mode_on"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v11, v9, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 243
    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "airplane_mode_on"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_7

    move v0, v9

    .line 247
    .local v0, "airplaneModeOn":Z
    :goto_4
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsKDDI:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    if-eqz v8, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->getIsServiceStatePowerOff()Z

    move-result v0

    .line 250
    :cond_0
    if-eqz v0, :cond_8

    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_5
    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 251
    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    const-string v11, "vibrator"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 252
    .local v7, "vibrator":Landroid/os/Vibrator;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v9

    :goto_6
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasVibrator:Z

    .line 254
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mShowSilentToggle:Z

    .line 256
    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v11, Lcom/lge/internal/R$bool;->config_rear_key_global_actions:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "persist.reardialog"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v9, v8, :cond_2

    :cond_1
    move v10, v9

    :cond_2
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsRearDialog:Z

    .line 257
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsRearDialog:Z

    if-eqz v8, :cond_3

    .line 258
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->initLGGlobalActionsDialog()V

    .line 260
    :cond_3
    return-void

    .end local v0    # "airplaneModeOn":Z
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "ctw":Landroid/view/ContextThemeWrapper;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v7    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    move v8, v10

    .line 182
    goto/16 :goto_0

    :cond_5
    move v8, v10

    .line 185
    goto/16 :goto_1

    :cond_6
    move v8, v10

    .line 186
    goto/16 :goto_2

    .line 236
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "ctw":Landroid/view/ContextThemeWrapper;
    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    move v0, v10

    .line 243
    goto :goto_4

    .line 250
    .restart local v0    # "airplaneModeOn":Z
    :cond_8
    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_5

    .restart local v7    # "vibrator":Landroid/os/Vibrator;
    :cond_9
    move v8, v10

    .line 252
    goto :goto_6
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LGGlobalActions;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LGGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerMode:I

    return v0
.end method

.method static synthetic access$1802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 139
    sput p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerMode:I

    return p0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LGGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/LGGlobalActions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mCallState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->refreshSilentMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/LGGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LGGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsRearDialog:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/LGGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LGGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarHeight:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LGGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarWidth:I

    return v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LGGlobalActions;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/LGGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsKDDI:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LGGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LGGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/LGGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LGGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LGGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGGlobalActions;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/LGGlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/LGGlobalActions$Action;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 730
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 732
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_6

    .line 733
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 734
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 735
    .local v5, "user":Landroid/content/pm/UserInfo;
    if-nez v6, :cond_1

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_0

    move v8, v10

    .line 737
    .local v8, "isCurrentUser":Z
    :goto_1
    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 739
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$10;

    const v2, 0x10803d8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_5

    const-string v1, " \u2714"

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LGGlobalActions$10;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    .line 759
    .local v0, "switchToUser":Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressAction;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "switchToUser":Lcom/android/internal/policy/impl/LGGlobalActions$SinglePressAction;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_0
    move v8, v11

    .line 735
    goto :goto_1

    :cond_1
    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    move v8, v11

    goto :goto_1

    .line 737
    .restart local v8    # "isCurrentUser":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 739
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string v1, "Primary"

    goto :goto_3

    :cond_5
    const-string v1, ""

    goto :goto_4

    .line 762
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    :cond_6
    return-void
.end method

.method private awakenIfNecessary()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1603
    sget v0, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1604
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSettingUX4_1_VZW(Z)V

    .line 1612
    :goto_0
    return-void

    .line 1607
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSettingUX4_1(Z)V

    goto :goto_0

    .line 1610
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LGGlobalActions;->changeAirplaneModeSystemSettingLegacy(Z)V

    goto :goto_0
.end method

.method private changeAirplaneModeSystemSettingLegacy(Z)V
    .locals 9
    .param p1, "on"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1795
    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1801
    const-string v3, "ro.airplane.phoneapp"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1802
    if-eqz p1, :cond_1

    .line 1803
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 1804
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1805
    iput-object v8, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 1808
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1810
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/lge/internal/R$string;->settings_airplane_mode_popup:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1816
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1817
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1818
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1819
    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 1824
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1826
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1827
    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1828
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    if-nez v3, :cond_2

    .line 1829
    if-eqz p1, :cond_4

    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 1831
    :cond_2
    return-void

    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    move v3, v5

    .line 1795
    goto :goto_0

    .line 1829
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method private changeAirplaneModeSystemSettingUX4_1(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1615
    if-eqz p1, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    if-eqz v4, :cond_6

    .line 1616
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1617
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1618
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 1620
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1621
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    sget v5, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v4, v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsCMCC:Z

    if-eqz v3, :cond_4

    :cond_1
    sget v3, Lcom/lge/internal/R$string;->global_actions_toggle_airplane_mode_ATT:I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsCMCC:Z

    if-eqz v3, :cond_5

    :cond_2
    sget v3, Lcom/lge/internal/R$string;->sp_airplane_mode_message_NORMAL_ATT:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/policy/impl/LGGlobalActions$17;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$17;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/internal/policy/impl/LGGlobalActions$16;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$16;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1666
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1667
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1668
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1669
    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 1683
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    :goto_2
    return-void

    .line 1621
    :cond_4
    const v3, 0x1040130

    goto :goto_0

    :cond_5
    sget v3, Lcom/lge/internal/R$string;->sp_airplane_mode_message_NORMAL:I

    goto :goto_1

    .line 1671
    :cond_6
    sget-object v4, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1675
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1677
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1678
    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1679
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    if-nez v3, :cond_3

    .line 1680
    if-eqz p1, :cond_8

    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_3
    iput-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_3
.end method

.method private changeAirplaneModeSystemSettingUX4_1_VZW(Z)V
    .locals 12
    .param p1, "on"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1685
    sget-object v9, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_dialog_do_not_show_this_again"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    move v5, v7

    .line 1687
    .local v5, "isVisiblePopup":Z
    :goto_0
    if-eqz p1, :cond_4

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    .line 1688
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    .line 1689
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 1690
    iput-object v11, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 1693
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1694
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    sget v8, Lcom/lge/internal/R$style;->Theme_LGE_White_Dialog_Alert:I

    invoke-direct {v1, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1695
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x1040130

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1697
    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1698
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcom/lge/internal/R$layout;->airplanemode_do_not_show:I

    invoke-virtual {v3, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1699
    .local v2, "doNotShowView":Landroid/view/View;
    sget v7, Lcom/lge/internal/R$id;->do_not_show_check:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mCheckBox:Landroid/widget/CheckBox;

    .line 1700
    sget v7, Lcom/lge/internal/R$id;->popup_text:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1702
    .local v6, "textMessage":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->isVoLTESupported()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1703
    sget v7, Lcom/lge/internal/R$string;->sp_airplane_mode_enable_vzw_NORMAL:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1708
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$18;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$18;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1714
    const v7, 0x104000a

    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$19;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$19;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1741
    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$20;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$20;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1748
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1750
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1751
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 1752
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1753
    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 1764
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "doNotShowView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "textMessage":Landroid/widget/TextView;
    :cond_1
    :goto_2
    return-void

    .end local v5    # "isVisiblePopup":Z
    :cond_2
    move v5, v8

    .line 1685
    goto/16 :goto_0

    .line 1705
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "doNotShowView":Landroid/view/View;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "isVisiblePopup":Z
    .restart local v6    # "textMessage":Landroid/widget/TextView;
    :cond_3
    sget v7, Lcom/lge/internal/R$string;->sp_airplane_mode_enable_vzw_com_NORMAL:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1755
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "doNotShowView":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "textMessage":Landroid/widget/TextView;
    :cond_4
    sget-object v9, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    if-eqz p1, :cond_5

    :goto_3
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1756
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1757
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1758
    const-string v7, "state"

    invoke-virtual {v4, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1759
    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1760
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasTelephony:Z

    if-nez v7, :cond_1

    .line 1761
    if-eqz p1, :cond_6

    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_4
    iput-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_2

    .end local v4    # "intent":Landroid/content/Intent;
    :cond_5
    move v7, v8

    .line 1755
    goto :goto_3

    .line 1761
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_6
    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_4
.end method

.method private createDialog()Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 478
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasVibrator:Z

    if-nez v0, :cond_6

    .line 479
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeToggleAction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeToggleAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    .line 483
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$5;

    const v2, 0x108037c

    const v3, 0x108037a

    const v4, 0x1040130

    sget v5, Lcom/lge/internal/R$string;->sp_turn_off_airplane_mode_NORMAL:I

    sget v6, Lcom/lge/internal/R$string;->sp_turn_on_airplane_mode_NORMAL:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/LGGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    .line 566
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->onAirplaneModeChanged()V

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 572
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$Poweroffaction;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$Poweroffaction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mPoweroffaction:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mPoweroffaction:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/impl/LGGlobalActions$6;

    sget v3, Lcom/lge/internal/R$drawable;->ic_lock_restart:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/lge/internal/R$string;->global_action_power_restart_ATT:I

    :goto_1
    invoke-direct {v2, p0, v3, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    const-string v8, ""

    .line 599
    .local v8, "homeprop":Ljava/lang/String;
    const-string v0, "service.plushome.currenthome"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 600
    const-string v0, "kids"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->isCurrentUserOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$7;

    sget v2, Lcom/lge/internal/R$drawable;->ic_lock_adb:I

    const v3, 0x1040129

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/LGGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mShowSilentToggle:Z

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_2
    const-string v0, "fw.power_user_switcher"

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LGGlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    .line 664
    :cond_3
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    invoke-direct {v0, p0, v13}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    .line 666
    new-instance v10, Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 667
    .local v10, "params":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    iput-object v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 668
    iput-object p0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 669
    iput-boolean v12, v10, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 672
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 673
    .local v9, "operator":Ljava/lang/String;
    const-string v0, "VZW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 674
    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 675
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$8;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    iput-object v0, v10, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 685
    :cond_4
    const-string v0, "DCM"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 686
    const-string v0, "persist.sys.epsmodestate"

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOnAction;

    invoke-direct {v1, p0, v13}, Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOnAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    :cond_5
    :goto_2
    new-instance v7, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;

    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v10}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    .line 697
    .local v7, "dialog":Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;
    invoke-virtual {v7, v11}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 699
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 700
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 701
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$9;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 709
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 711
    invoke-virtual {v7, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 713
    return-object v7

    .line 481
    .end local v7    # "dialog":Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;
    .end local v8    # "homeprop":Ljava/lang/String;
    .end local v9    # "operator":Ljava/lang/String;
    .end local v10    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_6
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeTriStateAction;

    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeTriStateAction;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    goto/16 :goto_0

    .line 578
    :cond_7
    sget v0, Lcom/lge/internal/R$string;->global_action_power_restart:I

    goto/16 :goto_1

    .line 691
    .restart local v8    # "homeprop":Ljava/lang/String;
    .restart local v9    # "operator":Ljava/lang/String;
    .restart local v10    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOffAction;

    invoke-direct {v1, p0, v13}, Lcom/android/internal/policy/impl/LGGlobalActions$EpsmodeOffAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Lcom/android/internal/policy/impl/LGGlobalActions$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 2

    .prologue
    .line 718
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 720
    :goto_0
    return-object v1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIsServiceStatePowerOff()Z
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "isServiceStatePowerOff":Z
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 378
    .local v1, "mTelephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 380
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 380
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleShow()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 418
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->awakenIfNecessary()V

    .line 419
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsRearDialog:Z

    if-eqz v7, :cond_3

    .line 420
    new-instance v7, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;

    sget-object v8, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    sget v9, Lcom/lge/internal/R$style;->RearDialog:I

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/policy/impl/LGGlobalActions$LGGlobalActionsDialog;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    .line 422
    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_1

    .line 426
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v6, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 427
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->setSecondState(Z)V

    .line 428
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 429
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 470
    .end local v0    # "airplaneModeOn":Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v6

    .line 422
    goto :goto_0

    .line 426
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v6, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_1

    .line 431
    .end local v0    # "airplaneModeOn":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->createDialog()Lcom/android/internal/policy/impl/LGGlobalActions$GlobalActionsDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    .line 432
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->prepareDialog()V

    .line 435
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsKDDI:Z

    if-eqz v7, :cond_4

    .line 436
    sget-object v7, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 437
    .local v3, "mWm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 438
    .local v2, "disp":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 440
    .local v4, "rotation":I
    packed-switch v4, :pswitch_data_0

    .line 448
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    sget v8, Lcom/lge/internal/R$style;->PowerDialog:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 451
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 452
    .local v5, "wmlp":Landroid/view/WindowManager$LayoutParams;
    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v7, v7, 0x200

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 456
    .end local v2    # "disp":Landroid/view/Display;
    .end local v3    # "mWm":Landroid/view/WindowManager;
    .end local v4    # "rotation":I
    .end local v5    # "wmlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 457
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v7, "GlobalActions"

    invoke-virtual {v1, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 459
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 460
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_5

    .line 461
    sget v7, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    .line 462
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 463
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 466
    :cond_5
    const-string v7, "service.keyguard.status"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 467
    iget-object v6, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto/16 :goto_2

    .line 442
    .end local v1    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v2    # "disp":Landroid/view/Display;
    .restart local v3    # "mWm":Landroid/view/WindowManager;
    .restart local v4    # "rotation":I
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    sget v8, Lcom/lge/internal/R$style;->PowerDialog_Land90:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_3

    .line 445
    :pswitch_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    sget v8, Lcom/lge/internal/R$style;->PowerDialog_Land270:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_3

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initLGGlobalActionsDialog()V
    .locals 12

    .prologue
    .line 263
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDpiConvertUnit:F

    .line 264
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mStatusBarHeight:I

    .line 265
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarHeight:I

    .line 266
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mNavigationBarWidth:I

    .line 268
    new-instance v0, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    const v2, 0x1040127

    sget v3, Lcom/lge/internal/R$drawable;->ic_system_action_lock_power_long_cue_normal:I

    sget v4, Lcom/lge/internal/R$drawable;->ic_system_action_lock_power_pressed:I

    sget v5, Lcom/lge/internal/R$string;->global_action_power_off:I

    sget v6, Lcom/lge/internal/R$string;->sp_phone_power_off_confirm_NORMAL:I

    new-instance v7, Lcom/android/internal/policy/impl/LGGlobalActions$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIIILandroid/view/View$OnClickListener;)V

    .line 302
    .local v0, "mAnimationAciton":Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, "operator":Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/lge/internal/R$string;->sp_restart_in_safe_mode_title:I

    :goto_0
    sget v3, Lcom/lge/internal/R$string;->sp_restart_in_safe_mode_details:I

    const-string v2, "VZW"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/lge/internal/R$string;->sp_restart_in_safe_mode_dlg_positive_btn:I

    :goto_1
    new-instance v4, Lcom/android/internal/policy/impl/LGGlobalActions$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->setLongClick(IIILandroid/view/View$OnClickListener;)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v9, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    sget v3, Lcom/lge/internal/R$string;->global_action_power_restart:I

    sget v4, Lcom/lge/internal/R$drawable;->ic_system_action_lock_restart_normal:I

    sget v5, Lcom/lge/internal/R$drawable;->ic_system_action_lock_restart_pressed:I

    sget v6, Lcom/lge/internal/R$string;->global_action_power_restart:I

    sget v7, Lcom/lge/internal/R$string;->sp_phone_restart_confirm_NORMAL:I

    new-instance v8, Lcom/android/internal/policy/impl/LGGlobalActions$3;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIIILandroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    sget v3, Lcom/lge/internal/R$string;->sp_turn_on_airplane_mode_NORMAL:I

    sget v4, Lcom/lge/internal/R$string;->sp_turn_off_airplane_mode_NORMAL:I

    sget v5, Lcom/lge/internal/R$drawable;->ic_system_lock_airplane_mode_on_normal:I

    sget v6, Lcom/lge/internal/R$drawable;->ic_system_lock_airplane_mode_off1_normal:I

    sget v7, Lcom/lge/internal/R$drawable;->ic_system_lock_airplane_mode_on_pressed:I

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsCMCC:Z

    if-eqz v2, :cond_4

    :cond_0
    sget v8, Lcom/lge/internal/R$string;->global_actions_toggle_airplane_mode_ATT:I

    :goto_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsATT:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsCMCC:Z

    if-eqz v2, :cond_5

    :cond_1
    sget v9, Lcom/lge/internal/R$string;->sp_airplane_mode_message_NORMAL_ATT:I

    :goto_3
    new-instance v10, Lcom/android/internal/policy/impl/LGGlobalActions$4;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/LGGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;)V

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;-><init>(Lcom/android/internal/policy/impl/LGGlobalActions;IIIIIIILandroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    .line 370
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAnimationActionList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    return-void

    .line 303
    :cond_2
    const v1, 0x104011f

    goto :goto_0

    :cond_3
    sget v2, Lcom/lge/internal/R$string;->dlg_ok:I

    goto :goto_1

    .line 328
    :cond_4
    const v8, 0x1040130

    goto :goto_2

    :cond_5
    sget v9, Lcom/lge/internal/R$string;->sp_airplane_mode_message_NORMAL:I

    goto :goto_3
.end method

.method private isCurrentUserOwner()Z
    .locals 2

    .prologue
    .line 725
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 726
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVoLTESupported()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1767
    const/4 v9, 0x0

    .line 1769
    .local v9, "value":Z
    sget-object v0, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->IMS_UCSTATE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1772
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    const-string v0, "voip_enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1774
    .local v8, "provision_index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1775
    .local v7, "provision_data":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1776
    const/4 v9, 0x1

    .line 1782
    .end local v7    # "provision_data":Ljava/lang/String;
    .end local v8    # "provision_index":I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1783
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1786
    :cond_1
    const-string v0, "LGGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoLTESubscribed() value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    return v9

    .line 1777
    .restart local v7    # "provision_data":Ljava/lang/String;
    .restart local v8    # "provision_index":I
    :cond_2
    :try_start_1
    const-string v0, "2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    const/4 v9, 0x0

    goto :goto_0

    .line 1782
    .end local v7    # "provision_data":Ljava/lang/String;
    .end local v8    # "provision_index":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1783
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1580
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1581
    sget v2, Lcom/lge/os/Build$LGUI_VERSION;->RELEASE:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 1582
    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1583
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneOnDialog:Landroid/app/AlertDialog;

    .line 1587
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1591
    .local v0, "airplaneModeOn":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    .line 1592
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mIsRearDialog:Z

    if-eqz v1, :cond_3

    .line 1593
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneAction:Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/LGGlobalActions$AnimationAction;->setSecondState(Z)V

    .line 1597
    :goto_2
    return-void

    .end local v0    # "airplaneModeOn":Z
    :cond_1
    move v0, v1

    .line 1587
    goto :goto_0

    .line 1591
    .restart local v0    # "airplaneModeOn":Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_1

    .line 1595
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)V

    goto :goto_2
.end method

.method private prepareDialog()V
    .locals 3

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->refreshSilentMode()V

    .line 766
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)V

    .line 767
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 768
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 769
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 770
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 773
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private refreshSilentMode()V
    .locals 3

    .prologue
    .line 776
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHasVibrator:Z

    if-nez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 779
    .local v0, "silentModeOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    check-cast v1, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;)V

    .line 782
    .end local v0    # "silentModeOn":Z
    :cond_0
    return-void

    .line 777
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 779
    .restart local v0    # "silentModeOn":Z
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/LGGlobalActions$ToggleAction$State;

    goto :goto_1
.end method


# virtual methods
.method public getPixelFromDpi(F)F
    .locals 1
    .param p1, "dpiSize"    # F

    .prologue
    .line 3086
    iget v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDpiConvertUnit:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/LGGlobalActions$SilentModeTriStateAction;

    if-nez v0, :cond_0

    .line 799
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/LGGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/LGGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LGGlobalActions$Action;->onPress()V

    .line 802
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 786
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_0

    .line 788
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/LGGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 791
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "LGGlobalActions"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mKeyguardShowing:Z

    .line 394
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDeviceProvisioned:Z

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mDialog:Landroid/app/Dialog;

    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGGlobalActions;->handleShow()V

    goto :goto_0
.end method
