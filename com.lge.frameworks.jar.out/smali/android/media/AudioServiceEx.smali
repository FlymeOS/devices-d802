.class public Landroid/media/AudioServiceEx;
.super Landroid/media/AudioService;
.source "AudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioServiceEx$ExtendedBinderInternal;,
        Landroid/media/AudioServiceEx$AudioHandlerEx;,
        Landroid/media/AudioServiceEx$AudioSystemThreadEx;,
        Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final FLAG_TOAST_ALL_VOLUME_MUTE:I = 0x4

.field private static final FLAG_TOAST_VOL_DOWN:I = 0x1

.field private static final FLAG_TOAST_VOL_TTY_MODE:I = 0x3

.field private static final FLAG_TOAST_VOL_UP:I = 0x2

.field private static MAX_STREAM_VOLUME_Ex:[I = null

.field private static final MSG_SHOW_VOLUME_INFO:I = 0x1d

.field private static STREAM_NAMES_Ex:[Ljava/lang/String; = null

.field private static final STREAM_VOLUME_ALIAS_DEFAULT_Ex:[I

.field private static STREAM_VOLUME_ALIAS_Ex:[I = null

.field private static STREAM_VOLUME_ALIAS_NON_VOICE_Ex:[I = null

.field private static final TAG:Ljava/lang/String; = "AudioServiceEx"

.field protected static final TALKBACK_OVERRIDE_DELAY_MS:I = 0x1f4


# instance fields
.field private final ROTATION_0:I

.field private final ROTATION_180:I

.field private final ROTATION_270:I

.field private final ROTATION_90:I

.field private final mAudioHandlerEx:Landroid/media/AudioServiceEx$AudioHandlerEx;

.field private mBluetoothA2dpInputEnabled:Z

.field private final mBluetoothA2dpInputEnabledLock:Ljava/lang/Object;

.field private mCurrentUserId:I

.field private mExtendedBinderInternal:Landroid/media/AudioServiceEx$ExtendedBinderInternal;

.field private mForcedUseForMedia:I

.field private mInited:Z

.field private mIsAllSoundOff:Z

.field private mIsQuickCoverClose:Z

.field private mIsSWIrRC:Ljava/lang/String;

.field private mIsSoundException:Z

.field private mLastRotation:I

.field private mLgSafeMediaDeviceToastFlag:I

.field private mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

.field private mMediaFocusControlEx:Landroid/media/MediaFocusControl;

.field private mPlugged:Z

.field private mPrevForcedUseForMedia:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSafeVoiceVolumeIndex:I

.field private mToast:Lcom/lge/view/SafevolumeToast;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 101
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    .line 117
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_Ex:[I

    .line 133
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_NON_VOICE_Ex:[I

    .line 149
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_DEFAULT_Ex:[I

    .line 166
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "STREAM_VOICE_CALL"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "STREAM_SYSTEM"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "STREAM_RING"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "STREAM_MUSIC"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "STREAM_ALARM"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STREAM_NOTIFICATION"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "STREAM_BLUETOOTH_SCO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "STREAM_DTMF"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "STREAM_TTS"

    aput-object v3, v1, v2

    sput-object v1, Landroid/media/AudioServiceEx;->STREAM_NAMES_Ex:[Ljava/lang/String;

    .line 223
    sget-object v1, Landroid/media/AudioManagerEx;->DEFAULT_STREAM_VOLUME_Ex:[I

    sput-object v1, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    .line 305
    :try_start_0
    const-string v1, "android.media.AudioManagerEx"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 307
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
    .end array-data

    .line 117
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x2
        0x2
        0x3
    .end array-data

    .line 133
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x2
        0x3
        0x3
    .end array-data

    .line 149
    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 228
    invoke-direct {p0, p1}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v5, p0, Landroid/media/AudioServiceEx;->mInited:Z

    .line 76
    new-instance v2, Landroid/media/AudioServiceEx$AudioHandlerEx;

    invoke-direct {v2, p0}, Landroid/media/AudioServiceEx$AudioHandlerEx;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mAudioHandlerEx:Landroid/media/AudioServiceEx$AudioHandlerEx;

    .line 80
    iput v5, p0, Landroid/media/AudioServiceEx;->ROTATION_0:I

    .line 81
    iput v3, p0, Landroid/media/AudioServiceEx;->ROTATION_90:I

    .line 82
    iput v4, p0, Landroid/media/AudioServiceEx;->ROTATION_180:I

    .line 83
    const/4 v2, 0x3

    iput v2, p0, Landroid/media/AudioServiceEx;->ROTATION_270:I

    .line 86
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    .line 87
    new-instance v2, Landroid/media/AudioServiceEx$1;

    invoke-direct {v2, p0}, Landroid/media/AudioServiceEx$1;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 97
    const-string v2, ""

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    .line 183
    new-instance v2, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;

    invoke-direct {v2, p0, v6}, Landroid/media/AudioServiceEx$LGAudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioServiceEx;Landroid/media/AudioServiceEx$1;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    iput-boolean v5, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    .line 202
    iput-boolean v5, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    .line 206
    iput-boolean v5, p0, Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z

    .line 210
    iput-boolean v5, p0, Landroid/media/AudioServiceEx;->mPlugged:Z

    .line 213
    iput-boolean v5, p0, Landroid/media/AudioServiceEx;->mBluetoothA2dpInputEnabled:Z

    .line 214
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mBluetoothA2dpInputEnabledLock:Ljava/lang/Object;

    .line 219
    iput-object v6, p0, Landroid/media/AudioServiceEx;->mExtendedBinderInternal:Landroid/media/AudioServiceEx$ExtendedBinderInternal;

    .line 229
    sget v2, Landroid/media/AudioManager;->NUM_SOUND_EFFECTS:I

    filled-new-array {v2, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES_MAP:[[I

    .line 230
    iput v5, p0, Landroid/media/AudioServiceEx;->mPrevForcedUseForMedia:I

    .line 231
    iput v5, p0, Landroid/media/AudioServiceEx;->mForcedUseForMedia:I

    .line 234
    const-string v2, "ro.lge.irrc.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    .line 243
    new-instance v2, Landroid/media/MediaFocusControlEx;

    iget-object v3, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v3}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v6, p0}, Landroid/media/MediaFocusControlEx;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mMediaFocusControlEx:Landroid/media/MediaFocusControl;

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 248
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$integer;->config_safe_media_volume_index:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    .line 250
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/lge/internal/R$bool;->config_lg_safe_media_volume_enabled:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    .line 252
    const-string v2, "ro.config.vc_call_vol_default"

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioServiceEx;->mSafeVoiceVolumeIndex:I

    .line 253
    iput v5, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    .line 254
    const-string v2, "AudioServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLgSafeMediaVolumeEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v2, "AudioServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSafeMediaVolumeState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v2, "AudioServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSafeMediaVolumeIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->readPersistedMABL()V

    .line 262
    const-string v2, "ro.lge.audio_soundexception"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    .line 265
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.android.intent.action.ACCESSORY_COVER_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iput v5, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    .line 271
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v2, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v2, "com.lge.mirrorlink.audio.started"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v2, "com.lge.mirrorlink.audio.stopped"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 284
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_0

    .line 287
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v2

    iput v2, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    .line 288
    const-string v2, "AudioServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mAudioHandlerEx:Landroid/media/AudioServiceEx$AudioHandlerEx;

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getRingerMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioServiceEx$AudioHandlerEx;->persistRingerMode(I)V

    .line 297
    new-instance v2, Landroid/media/AudioServiceEx$ExtendedBinderInternal;

    invoke-direct {v2, p0, v6}, Landroid/media/AudioServiceEx$ExtendedBinderInternal;-><init>(Landroid/media/AudioServiceEx;Landroid/media/AudioServiceEx$1;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mExtendedBinderInternal:Landroid/media/AudioServiceEx$ExtendedBinderInternal;

    .line 298
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->cameraSoundSetting()V

    .line 300
    new-instance v2, Lcom/lge/view/SafevolumeToast;

    iget-object v3, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/view/SafevolumeToast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/media/AudioServiceEx;->mToast:Lcom/lge/view/SafevolumeToast;

    .line 301
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioServiceEx"

    const-string v3, "Remote exception when adding rotation watcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioServiceEx;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioServiceEx;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->sendRotationParameter()V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/media/AudioServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/AudioServiceEx;->mWatchingRotation:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/media/AudioServiceEx;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/AudioServiceEx;)Landroid/view/IRotationWatcher;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioServiceEx;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/AudioServiceEx;->mForcedUseForMedia:I

    return v0
.end method

.method static synthetic access$1302(Landroid/media/AudioServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/AudioServiceEx;->mForcedUseForMedia:I

    return p1
.end method

.method static synthetic access$1400(Landroid/media/AudioServiceEx;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/AudioServiceEx;->mPrevForcedUseForMedia:I

    return v0
.end method

.method static synthetic access$1402(Landroid/media/AudioServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/AudioServiceEx;->mPrevForcedUseForMedia:I

    return p1
.end method

.method static synthetic access$1500(Landroid/media/AudioServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mBluetoothA2dpInputEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/media/AudioServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/AudioServiceEx;->mBluetoothA2dpInputEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/media/AudioServiceEx;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mBluetoothA2dpInputEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/AudioServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z

    return p1
.end method

.method static synthetic access$500(Landroid/media/AudioServiceEx;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget v0, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$502(Landroid/media/AudioServiceEx;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$600(Landroid/media/AudioServiceEx;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->readPersistedMABL()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/AudioServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mPlugged:Z

    return v0
.end method

.method static synthetic access$702(Landroid/media/AudioServiceEx;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/AudioServiceEx;->mPlugged:Z

    return p1
.end method

.method static synthetic access$800(Landroid/media/AudioServiceEx;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioServiceEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/media/AudioServiceEx;->onShowVolumeInfo(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioServiceEx;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioServiceEx;

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    return v0
.end method

.method private cameraSoundSetting()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1628
    const-string v0, "ro.build.target_country"

    const-string v1, "KR"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1629
    .local v9, "targetCountry":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1630
    .local v7, "cameraSoundForced":Z
    const-string v0, "KR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JP"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "58"

    const-string v1, "persist.sys.subset-list"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1631
    :cond_0
    const/4 v7, 0x1

    .line 1633
    :cond_1
    iget-object v10, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v10

    .line 1634
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_3

    .line 1635
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 1636
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_2

    const/16 v4, 0xb

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1644
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v8, v0, v1

    .line 1645
    .local v8, "s":Landroid/media/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    .line 1646
    invoke-virtual {v8}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 1647
    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    .line 1654
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getRingerMode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioServiceEx;->setRingerModeInt(IZ)V

    .line 1656
    .end local v8    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_3
    monitor-exit v10

    .line 1657
    return-void

    .line 1650
    .restart local v8    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v8, v0}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 1651
    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    goto :goto_0

    .line 1656
    .end local v8    # "s":Landroid/media/AudioService$VolumeStreamState;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllSoundOff()Z
    .locals 4

    .prologue
    .line 1313
    const-string v0, "com.android.settingsaccessibility/com.android.settingsaccessibility.turnoffallsounds.TurnOffAllSoundsService"

    .line 1314
    .local v0, "preference_key":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1317
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1320
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSafeMediaVolumeDevices()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 975
    const/4 v0, 0x0

    .line 976
    .local v0, "device":I
    const/16 v1, 0xc

    .line 977
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 978
    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_2

    .line 979
    shl-int v4, v3, v2

    and-int v0, v1, v4

    .line 980
    if-eqz v0, :cond_1

    .line 981
    iget-object v4, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 988
    :goto_1
    return v3

    .line 984
    :cond_0
    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v1, v4

    .line 986
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 988
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onShowVolumeInfo(II)V
    .locals 8
    .param p1, "flag"    # I
    .param p2, "device"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 859
    const-string v1, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowVolumeInfo mediavolume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Landroid/media/AudioServiceEx;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v1, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowVolumeInfo mLgSafeMediaDeviceToastFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    if-ne p1, v7, :cond_4

    .line 863
    invoke-virtual {p0, v4}, Landroid/media/AudioServiceEx;->getStreamVolume(I)I

    move-result v1

    iget v2, p0, Landroid/media/AudioServiceEx;->mSafeVoiceVolumeIndex:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/media/AudioServiceEx;->isSafeMediaVolumeDevices()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-string v1, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHeadsetVolumeScenario() set default call vol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget v1, p0, Landroid/media/AudioServiceEx;->mSafeVoiceVolumeIndex:I

    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v4, v2}, Landroid/media/AudioServiceEx;->setStreamVolume(IIILjava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 869
    sget v1, Lcom/lge/internal/R$string;->sp_audio_earjack_vol_down_automatically_toast_NORMAL:I

    invoke-virtual {p0, v1}, Landroid/media/AudioServiceEx;->safeMediaVolumeToast(I)V

    .line 873
    :cond_0
    iget v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 875
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v0, v1, v6

    .line 876
    .local v0, "streamType":I
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    iget v2, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    if-le v1, v2, :cond_1

    .line 878
    iget v1, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    invoke-virtual {p0, v0, v1, p2, v7}, Landroid/media/AudioServiceEx;->setStreamVolumeInt(IIIZ)V

    .line 879
    iget v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    .line 882
    :cond_1
    iget v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3

    .line 884
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 885
    sget v1, Lcom/lge/internal/R$string;->sp_audio_earjack_vol_down_automatically_toast_NORMAL:I

    invoke-virtual {p0, v1}, Landroid/media/AudioServiceEx;->safeMediaVolumeToast(I)V

    .line 887
    :cond_2
    iget v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    .line 902
    .end local v0    # "streamType":I
    :cond_3
    :goto_0
    return-void

    .line 890
    :cond_4
    if-ne p1, v5, :cond_5

    .line 891
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMode()I

    move-result v1

    if-eq v1, v5, :cond_3

    .line 893
    sget v1, Lcom/lge/internal/R$string;->sp_audio_vol_up_warning_toast_NORMAL:I

    invoke-virtual {p0, v1}, Landroid/media/AudioServiceEx;->safeMediaVolumeToast(I)V

    goto :goto_0

    .line 895
    :cond_5
    if-ne p1, v6, :cond_6

    .line 897
    sget v1, Lcom/lge/internal/R$string;->sp_audio_vol_tty_mode_warning_toast_NORMAL:I

    invoke-virtual {p0, v1}, Landroid/media/AudioServiceEx;->safeMediaVolumeToast(I)V

    goto :goto_0

    .line 898
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 900
    sget v1, Lcom/lge/internal/R$string;->accessibility_turn_off_all_sounds_noti_description_3:I

    invoke-virtual {p0, v1}, Landroid/media/AudioServiceEx;->safeMediaVolumeToast(I)V

    goto :goto_0
.end method

.method private readPersistedMABL()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 916
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mono_audio_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 917
    .local v1, "monoAudioSettingMode":I
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "balance_change_value"

    const/16 v4, 0x1f

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 918
    .local v0, "balanceChangeValue":I
    const-string v2, "AudioServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monoAudioSettingMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", balanceChangeValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {v1}, Lcom/lge/media/LGAudioSystem;->setMABLEnable(I)I

    .line 920
    const/16 v2, 0x3e

    invoke-static {v0, v2}, Lcom/lge/media/LGAudioSystem;->setMABLControl(II)I

    .line 921
    return-void
.end method

.method private sendAudioModeBroadcastIntent(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 454
    const-string v1, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAudioModeBroadcastIntent state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.media.AUDIOMODE_STATE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "intentState":Landroid/content/Intent;
    const-string v1, "com.lge.media.EXTRA_AUDIOMODE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    const-string v1, "tablet"

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-direct {p0, v0}, Landroid/media/AudioServiceEx;->sendBroadcastToUser(Landroid/content/Intent;)V

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendBroadcastToUser(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 671
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Landroid/media/AudioServiceEx;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 675
    return-void

    .line 673
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendRotationParameter()V
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Landroid/media/AudioServiceEx;->mLastRotation:I

    packed-switch v0, :pswitch_data_0

    .line 447
    const-string v0, "AudioServiceEx"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 435
    :pswitch_0
    const-string v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :pswitch_1
    const-string v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :pswitch_2
    const-string v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 444
    :pswitch_3
    const-string v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showAllSoundOffToast()V
    .locals 7

    .prologue
    const/16 v1, 0x1d

    const/4 v4, 0x0

    .line 1324
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    const-string v0, "AudioServiceEx"

    const-string v2, "AudioServiceEx::showAllSoundOffToast() IsAllSoundOff is true."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v5, 0x0

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1328
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .locals 11
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 480
    const-string v0, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v0, p0, Landroid/media/AudioServiceEx;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 484
    iget v1, p0, Landroid/media/AudioServiceEx;->mVolumeControlStream:I

    .line 503
    .local v1, "streamTypeEx":I
    :goto_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z

    if-eqz v0, :cond_8

    .line 504
    :cond_1
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsQuickCoverClose:Z

    if-eqz v0, :cond_7

    .line 505
    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    .line 506
    const-string v0, "AudioServiceEx"

    const-string v2, "QuickCoverClosed not showing volumepanel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    and-int/lit8 p3, p3, -0x2

    .line 516
    :cond_2
    :goto_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_8

    .line 517
    const-string v0, "AudioServiceEx"

    const-string v2, "Ignore STREAM_RING adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v1    # "streamTypeEx":I
    :cond_3
    :goto_2
    return-void

    .line 487
    :cond_4
    iget v0, p0, Landroid/media/AudioServiceEx;->mPlatformType:I

    if-nez v0, :cond_6

    .line 488
    const-string v0, "hfp_enable"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, "hfp_enable":Ljava/lang/String;
    const-string v0, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 490
    const-string v0, "AudioServiceEx"

    const-string v2, "hfp_enabled!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v1, 0x6

    .restart local v1    # "streamTypeEx":I
    goto :goto_0

    .line 494
    .end local v1    # "streamTypeEx":I
    :cond_5
    invoke-virtual {p0, p2}, Landroid/media/AudioServiceEx;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamTypeEx":I
    goto :goto_0

    .line 498
    .end local v1    # "streamTypeEx":I
    .end local v7    # "hfp_enable":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p2}, Landroid/media/AudioServiceEx;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamTypeEx":I
    goto :goto_0

    .line 510
    :cond_7
    iget v0, p0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 511
    const-string v0, "AudioServiceEx"

    const-string v2, "KeyguardLocked not showing volumepanel"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    and-int/lit8 p3, p3, -0x2

    goto :goto_1

    .line 523
    :cond_8
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_9

    .line 524
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->showAllSoundOffToast()V

    .line 528
    :cond_9
    iget v0, p0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 529
    const-string v0, "tty_mode"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 530
    .local v10, "ttyMode":Ljava/lang/String;
    const-string v0, "tty_full"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "tty_hco"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "tty_vco"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 531
    :cond_a
    const-string v0, "AudioServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() Cannot adjust the volume during TTY Mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x1d

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 538
    .end local v10    # "ttyMode":Ljava/lang/String;
    :cond_b
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v9, v0, v1

    .line 541
    .local v9, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    if-ne v9, v0, :cond_c

    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 543
    :cond_c
    and-int/lit8 p3, p3, -0x5

    .line 547
    :cond_d
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, v9, p3}, Landroid/media/AudioService$VolumeController;->suppressAdjustment(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 548
    const/4 p1, 0x0

    .line 549
    and-int/lit8 p3, p3, -0x5

    .line 550
    and-int/lit8 p3, p3, -0x11

    .line 551
    sget-boolean v0, Landroid/media/AudioServiceEx;->DEBUG_VOL:Z

    if-eqz v0, :cond_e

    const-string v0, "AudioServiceEx"

    const-string v2, "Volume controller suppressed adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    .line 554
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioServiceEx;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 557
    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    const-string v0, "AudioServiceEx"

    const-string v2, "adjustSuggestedStreamVolume: Stop notification sound"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v8}, Landroid/media/AudioServiceEx;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method protected createAudioSystemThread()V
    .locals 1

    .prologue
    .line 1140
    new-instance v0, Landroid/media/AudioServiceEx$AudioSystemThreadEx;

    invoke-direct {v0, p0}, Landroid/media/AudioServiceEx$AudioSystemThreadEx;-><init>(Landroid/media/AudioServiceEx;)V

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 1141
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 1142
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->waitForAudioHandlerCreation()V

    .line 1143
    return-void
.end method

.method enforceMuteDuringCallByMDM(II)V
    .locals 8
    .param p1, "prev_mode"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1599
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1600
    if-eq p2, v5, :cond_0

    if-ne p2, v6, :cond_3

    .line 1601
    :cond_0
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/cappuccino/IMdm;->checkEnforceMuteDuringCall()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1602
    invoke-static {v4}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1620
    :cond_1
    :goto_0
    return-void

    .line 1604
    :cond_2
    invoke-static {v7}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    goto :goto_0

    .line 1606
    :cond_3
    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_1

    .line 1608
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1610
    .local v2, "identity":J
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "microphone_mute"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1617
    :goto_1
    invoke-static {v7}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    goto :goto_0

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "AudioServiceEx"

    const-string v4, "Fail to putIntForUser"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1615
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 1335
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 1336
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 1343
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1344
    const/4 v0, 0x2

    .line 1359
    :cond_0
    :goto_0
    return v0

    .line 1345
    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 1346
    const/high16 v0, 0x40000

    goto :goto_0

    .line 1347
    :cond_2
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 1348
    const/high16 v0, 0x80000

    goto :goto_0

    .line 1349
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 1350
    const/high16 v0, 0x200000

    goto :goto_0

    .line 1351
    :cond_4
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    .line 1352
    const/4 v0, 0x4

    goto :goto_0

    .line 1353
    :cond_5
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_6

    .line 1354
    const/16 v0, 0x8

    goto :goto_0

    .line 1356
    :cond_6
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 1399
    invoke-virtual {p0, p1}, Landroid/media/AudioServiceEx;->ensureValidStreamType(I)V

    .line 1400
    invoke-virtual {p0, p1}, Landroid/media/AudioServiceEx;->getDeviceForStream(I)I

    move-result v0

    .line 1401
    .local v0, "device":I
    iget v3, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v3, v4, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    :cond_0
    if-ne p1, v4, :cond_1

    iget-boolean v3, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v3, :cond_1

    .line 1405
    const/4 v0, 0x2

    .line 1407
    :cond_1
    iget-boolean v3, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v3, :cond_3

    if-ne p1, v4, :cond_3

    iget v3, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-ne v3, v2, :cond_3

    .line 1409
    iget-object v3, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v1, v3, 0xa

    .line 1410
    .local v1, "volume":I
    if-eqz v1, :cond_2

    .line 1416
    .end local v1    # "volume":I
    :goto_0
    return v1

    .restart local v1    # "volume":I
    :cond_2
    move v1, v2

    .line 1413
    goto :goto_0

    .line 1416
    .end local v1    # "volume":I
    :cond_3
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v1, v2, 0xa

    goto :goto_0
.end method

.method public getMasterStreamType()I
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    const/4 v1, 0x2

    .line 1390
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 1392
    const/4 v0, 0x0

    .line 1394
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method protected handleConfigurationChanged(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1624
    invoke-super {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    .line 1625
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->cameraSoundSetting()V

    .line 1626
    return-void
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    const/4 v1, 0x2

    .line 1381
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 1383
    const/4 v0, 0x1

    .line 1385
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected loadTouchSoundAssets()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 630
    const-string v0, "AudioServiceEx"

    const-string v1, "loadTouchSoundAssets::start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-super {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    .line 632
    sget-object v0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "switchon.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "switchoff.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES_MAP:[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sget-object v1, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "switchon.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v0, v3

    .line 635
    iget-object v0, p0, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES_MAP:[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sget-object v1, Landroid/media/AudioServiceEx;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "switchoff.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v0, v3

    .line 636
    const-string v0, "AudioServiceEx"

    const-string v1, "loadTouchSoundAssets::end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void
.end method

.method protected onConfigureSafeVolume(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x2

    .line 926
    iget-object v9, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 927
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 928
    .local v7, "mcc":I
    iget v0, p0, Landroid/media/AudioServiceEx;->mMcc:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mMcc:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 929
    :cond_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    .line 936
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_lge_safe_media_volume_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    const/4 v8, 0x0

    .line 943
    .local v8, "safeMediaVolumeEnabled":Z
    if-eqz v8, :cond_4

    .line 944
    const/4 v3, 0x3

    .line 948
    .local v3, "persistedState":I
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 949
    iget v0, p0, Landroid/media/AudioServiceEx;->mMusicActiveMs:I

    if-nez v0, :cond_3

    .line 950
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 951
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->enforceSafeMediaVolume()V

    .line 961
    :cond_1
    :goto_0
    iput v7, p0, Landroid/media/AudioServiceEx;->mMcc:I

    .line 962
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 970
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :cond_2
    monitor-exit v9

    .line 971
    return-void

    .line 954
    .restart local v3    # "persistedState":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 970
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 958
    .restart local v7    # "mcc":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_4
    const/4 v3, 0x1

    .line 959
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected onSendBecomingNoisyIntent()V
    .locals 3

    .prologue
    .line 1459
    const-string v1, "AudioServiceEx"

    const-string v2, "sendBroadcastToAll ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1462
    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1464
    return-void
.end method

.method protected onSetStreamVolume(IIII)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v4, 0x0

    .line 1268
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2, p2, p4, v4}, Landroid/media/AudioServiceEx;->setStreamVolumeInt(IIIZ)V

    .line 1270
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getMasterStreamType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1273
    :cond_0
    if-nez p2, :cond_4

    .line 1274
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getRingerMode()I

    move-result v1

    .line 1275
    .local v1, "ringerMode":I
    if-ne v0, v1, :cond_3

    .line 1276
    iget-boolean v2, p0, Landroid/media/AudioServiceEx;->mHasVibrator:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1287
    .end local v1    # "ringerMode":I
    .local v0, "newRingerMode":I
    :cond_1
    :goto_0
    and-int/lit16 v2, p3, 0x1000

    if-nez v2, :cond_2

    .line 1288
    invoke-virtual {p0, v0, v4}, Landroid/media/AudioServiceEx;->setRingerMode(IZ)V

    .line 1291
    .end local v0    # "newRingerMode":I
    :cond_2
    return-void

    .line 1281
    .restart local v1    # "ringerMode":I
    :cond_3
    move v0, v1

    .restart local v0    # "newRingerMode":I
    goto :goto_0

    .line 1284
    .end local v0    # "newRingerMode":I
    .end local v1    # "ringerMode":I
    :cond_4
    const/4 v0, 0x2

    .restart local v0    # "newRingerMode":I
    goto :goto_0
.end method

.method protected onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 10
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 765
    iget-object v9, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v9

    .line 766
    if-nez p2, :cond_1

    if-eq p1, v5, :cond_0

    if-ne p1, v6, :cond_1

    .line 768
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/media/AudioServiceEx;->setBluetoothA2dpOnInt(Z)V

    .line 779
    :cond_1
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_AUDIO_HEADSET_TYPE_EXT:Z

    if-eqz v2, :cond_2

    .line 781
    const-string v2, "h2w"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 782
    if-ne p2, v0, :cond_c

    const-string v7, "HeadsetState=1"

    .line 784
    .local v7, "HeadsetState":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 799
    .end local v7    # "HeadsetState":Ljava/lang/String;
    :cond_2
    :goto_1
    and-int/lit16 v2, p1, -0x6001

    if-eqz v2, :cond_3

    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_12

    const v2, 0x7fffe7ff

    and-int/2addr v2, p1

    if-nez v2, :cond_12

    :cond_3
    move v8, v0

    .line 802
    .local v8, "isUsb":Z
    :goto_2
    if-ne p2, v0, :cond_4

    move v1, v0

    :cond_4
    if-eqz v8, :cond_13

    move-object v0, p3

    :goto_3
    invoke-virtual {p0, v1, p1, v0}, Landroid/media/AudioServiceEx;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 803
    if-eqz p2, :cond_14

    .line 804
    if-eq p1, v5, :cond_5

    if-eq p1, v6, :cond_5

    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_6

    .line 807
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->setBluetoothA2dpOnInt(Z)V

    .line 809
    :cond_6
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_8

    .line 810
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 811
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x1d

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move v4, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 820
    :cond_7
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 829
    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_a

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_a

    .line 830
    iget v0, p0, Landroid/media/AudioServiceEx;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/media/AudioServiceEx;->mFixedVolumeDevices:I

    .line 831
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->checkAllFixedVolumeDevices()V

    .line 832
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_a

    .line 833
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_9

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioServiceEx;->mHdmiCecSink:Z

    .line 836
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, Landroid/media/AudioServiceEx;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 838
    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 850
    :cond_a
    :goto_4
    if-nez v8, :cond_b

    const v0, -0x7ffffff0

    if-eq p1, v0, :cond_b

    .line 851
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioServiceEx;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 853
    :cond_b
    monitor-exit v9

    .line 854
    return-void

    .line 782
    .end local v8    # "isUsb":Z
    :cond_c
    const-string v7, "HeadsetState=0"

    goto/16 :goto_0

    .line 785
    :cond_d
    const-string v2, "h2w_advanced"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 786
    if-ne p2, v0, :cond_e

    const-string v7, "HeadsetState=2"

    .line 788
    .restart local v7    # "HeadsetState":Ljava/lang/String;
    :goto_5
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 853
    .end local v7    # "HeadsetState":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 786
    :cond_e
    :try_start_3
    const-string v7, "HeadsetState=0"

    goto :goto_5

    .line 789
    :cond_f
    const-string v2, "h2w_aux"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 790
    if-ne p2, v0, :cond_10

    const-string v7, "HeadsetState=3"

    .line 792
    .restart local v7    # "HeadsetState":Ljava/lang/String;
    :goto_6
    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 790
    .end local v7    # "HeadsetState":Ljava/lang/String;
    :cond_10
    const-string v7, "HeadsetState=0"

    goto :goto_6

    .line 794
    :cond_11
    const-string v2, "AudioServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown headset type. name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    move v8, v1

    .line 799
    goto/16 :goto_2

    .line 802
    .restart local v8    # "isUsb":Z
    :cond_13
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 838
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 842
    :cond_14
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_a

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_a

    .line 843
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_a

    .line 844
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 845
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Landroid/media/AudioServiceEx;->mHdmiCecSink:Z

    .line 846
    monitor-exit v1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1235
    const/4 v1, 0x0

    .line 1237
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1243
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/media/AudioServiceEx;->mExtendedBinderInternal:Landroid/media/AudioServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Landroid/media/AudioServiceEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mExtendedBinderInternal:Landroid/media/AudioServiceEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioServiceEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1249
    :goto_0
    return v1

    .line 1247
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method

.method public playSoundEffectVolume(IF)V
    .locals 6
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 678
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 681
    .local v0, "oldIdent":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_0

    .line 683
    const-string v2, "AudioServiceEx"

    const-string v3, "Prevent sound effect caused by Current User setting."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    .end local v0    # "oldIdent":J
    :goto_0
    return-void

    .line 688
    .restart local v0    # "oldIdent":J
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 691
    .end local v0    # "oldIdent":J
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    goto :goto_0

    .line 688
    .restart local v0    # "oldIdent":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected readPersistedSettings()V
    .locals 0

    .prologue
    .line 1254
    invoke-super {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1258
    return-void
.end method

.method public safeMediaVolumeToast(I)V
    .locals 4
    .param p1, "toastName"    # I

    .prologue
    return-void

    .line 905
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mToast:Lcom/lge/view/SafevolumeToast;

    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->showToast(Ljava/lang/CharSequence;J)V

    .line 906
    return-void
.end method

.method public safeMediaVolumeToast(Ljava/lang/String;)V
    .locals 4
    .param p1, "toastNameStr"    # Ljava/lang/String;

    .prologue
    return-void

    .line 910
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mToast:Lcom/lge/view/SafevolumeToast;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/view/SafevolumeToast;->showToast(Ljava/lang/CharSequence;J)V

    .line 911
    return-void
.end method

.method protected sendVolumeUpdate(IIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x2

    .line 697
    const-string v0, "AudioServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVolumeUpdate postVolumeChanged streamType:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " index:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " flags:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isPlatformVoice()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 700
    const/4 p1, 0x5

    .line 705
    :cond_0
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_2

    if-ne p1, v5, :cond_2

    .line 706
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1

    .line 707
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_1

    and-int/lit16 v0, p4, 0x100

    if-nez v0, :cond_1

    .line 709
    and-int/lit8 p4, p4, -0x2

    .line 711
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :cond_2
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Landroid/media/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 717
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_4

    .line 721
    const-string v0, "AudioServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_VOICE:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", oldIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", newIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mSafeMediaVolumeIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_VOICE:[I

    aget v0, v0, p1

    if-ne v0, v5, :cond_4

    iget v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    if-gt p2, v0, :cond_4

    iget v0, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    if-le p3, v0, :cond_4

    iget-object v0, p0, Landroid/media/AudioServiceEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_vol_up_toast_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v0, 0x0

    if-eqz v0, :cond_4

    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-eq v0, v6, :cond_4

    .line 728
    iget-object v0, p0, Landroid/media/AudioServiceEx;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x1d

    const/4 v5, 0x0

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioServiceEx;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 733
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-nez v0, :cond_5

    .line 734
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 p2, v0, 0xa

    .line 735
    add-int/lit8 v0, p3, 0x5

    div-int/lit8 p3, v0, 0xa

    .line 736
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    const-string v0, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    invoke-virtual {p0, v7}, Landroid/media/AudioServiceEx;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 742
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_5
    return-void

    .line 711
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "strArg"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1295
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1300
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->isAllSoundOff()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TurnOffAllSound="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "CameraSoundForced="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1305
    const-string v0, "persist.sys.lg.sound_enable"

    iget-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z

    if-eqz v1, :cond_3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1301
    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 1305
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioServiceEx;->getRingerMode()I

    move-result v2

    goto :goto_3
.end method

.method protected setModeInt(ILandroid/os/IBinder;I)I
    .locals 17
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 313
    move-object/from16 v0, p0

    iget v11, v0, Landroid/media/AudioServiceEx;->mMode:I

    .line 316
    .local v11, "prev_mode":I
    sget-boolean v14, Landroid/media/AudioServiceEx;->DEBUG_MODE:Z

    if-eqz v14, :cond_0

    const-string v14, "AudioServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setModeInt(mode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    const/4 v9, 0x0

    .line 318
    .local v9, "newModeOwnerPid":I
    if-nez p2, :cond_1

    .line 319
    const-string v14, "AudioServiceEx"

    const-string v15, "setModeInt() called with null binder"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 428
    .end local v9    # "newModeOwnerPid":I
    .local v10, "newModeOwnerPid":I
    :goto_0
    return v10

    .line 323
    .end local v10    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    :cond_1
    const/4 v6, 0x0

    .line 324
    .local v6, "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 325
    .local v8, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 326
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 327
    .local v5, "h":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v14

    move/from16 v0, p3

    if-ne v14, v0, :cond_2

    .line 328
    move-object v6, v5

    .line 330
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 331
    invoke-virtual {v6}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v6, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 335
    .end local v5    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_3
    const/4 v12, 0x0

    .line 337
    .local v12, "status":I
    :cond_4
    if-nez p1, :cond_d

    .line 339
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v6, Landroid/media/AudioService$SetModeDeathHandler;

    .line 341
    .restart local v6    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v6}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 342
    invoke-virtual {v6}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 343
    sget-boolean v14, Landroid/media/AudioServiceEx;->DEBUG_MODE:Z

    if-eqz v14, :cond_5

    .line 344
    const-string v14, "AudioServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " using mode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " instead due to death hdlr at pid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v6, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioServiceEx;->mMode:I

    move/from16 v0, p1

    if-eq v0, v14, :cond_13

    .line 374
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v12

    .line 375
    if-nez v12, :cond_10

    .line 376
    sget-boolean v14, Landroid/media/AudioServiceEx;->DEBUG_MODE:Z

    if-eqz v14, :cond_6

    const-string v14, "AudioServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " mode successfully set to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mIsSWIrRC:Ljava/lang/String;

    const-string v15, "sw"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 379
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    const/4 v14, 0x2

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    const/4 v14, 0x3

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    if-nez p1, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioServiceEx;->mMode:I

    if-eqz v14, :cond_8

    .line 383
    :cond_7
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioServiceEx;->sendAudioModeBroadcastIntent(I)V

    .line 387
    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioServiceEx;->mMode:I

    .line 406
    :cond_9
    :goto_2
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 408
    :cond_a
    if-nez v12, :cond_c

    .line 409
    if-eqz p1, :cond_b

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 411
    const-string v14, "AudioServiceEx"

    const-string v15, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_b
    :goto_3
    const/high16 v14, -0x80000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/media/AudioServiceEx;->getActiveStreamType(I)I

    move-result v13

    .line 417
    .local v13, "streamType":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/media/AudioServiceEx;->getDeviceForStream(I)I

    move-result v3

    .line 418
    .local v3, "device":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v15, v15, v13

    aget-object v14, v14, v15

    invoke-virtual {v14, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    .line 419
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v14, v14, v13

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7, v3, v15}, Landroid/media/AudioServiceEx;->setStreamVolumeInt(IIIZ)V

    .line 421
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/media/AudioServiceEx;->updateStreamVolumeAlias(Z)V

    .line 425
    .end local v3    # "device":I
    .end local v7    # "index":I
    .end local v13    # "streamType":I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Landroid/media/AudioServiceEx;->enforceMuteDuringCallByMDM(II)V

    move v10, v9

    .line 428
    .end local v9    # "newModeOwnerPid":I
    .restart local v10    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 350
    .end local v10    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    :cond_d
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioServiceEx;->mMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_e

    .line 351
    const-string v14, "AudioServiceEx"

    const-string v15, "setModeInt() Set ringtone mode when commnunication mode, so don\'t call setPhoneState."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioServiceEx;->mMode:I

    .line 353
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 356
    :cond_e
    if-nez v6, :cond_f

    .line 357
    new-instance v6, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v6    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v6, v0, v1, v2}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 361
    .restart local v6    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_f
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 370
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 362
    :catch_0
    move-exception v4

    .line 364
    .local v4, "e":Landroid/os/RemoteException;
    const-string v14, "AudioServiceEx"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setMode() could not link to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " binder death"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 389
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_10
    if-eqz v6, :cond_11

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 391
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 394
    :cond_11
    sget-boolean v14, Landroid/media/AudioServiceEx;->DEBUG_MODE:Z

    if-eqz v14, :cond_12

    const-string v14, "AudioServiceEx"

    const-string v15, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_12
    const/16 p1, 0x0

    .line 397
    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioServiceEx;->mMode:I

    if-eqz v14, :cond_9

    .line 398
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioServiceEx;->sendAudioModeBroadcastIntent(I)V

    goto/16 :goto_2

    .line 404
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 413
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioServiceEx;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v14}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v9

    goto/16 :goto_3
.end method

.method protected setRingerModeInt(IZ)V
    .locals 8
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v7, 0x2

    .line 1428
    invoke-super {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1429
    iget-boolean v5, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v5, :cond_5

    .line 1430
    if-ne p1, v7, :cond_3

    .line 1433
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1434
    .local v2, "numStreamTypes":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "streamType":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1435
    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    aget v5, v5, v4

    if-ne v5, v7, :cond_2

    .line 1436
    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, v4

    monitor-enter v6

    .line 1437
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1438
    .local v3, "set":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1439
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1440
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1441
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 1442
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1445
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v3    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v3    # "set":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    iget-object v5, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1434
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v3    # "set":Ljava/util/Set;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1451
    .end local v2    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :cond_3
    sget-boolean v5, Landroid/media/AudioServiceEx;->DEBUG_VOL:Z

    if-eqz v5, :cond_4

    const-string v5, "AudioServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioSystem.setRingerMode persist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ringerMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_4
    iget v5, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    invoke-static {v5}, Lcom/lge/media/LGAudioSystem;->setRingerMode(I)I

    .line 1454
    :cond_5
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 659
    invoke-super {p0, p1}, Landroid/media/AudioService;->setSpeakerphoneOn(Z)V

    .line 661
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.media.SPEAKER_PHONE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "speakerphone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    invoke-virtual {p0, v0}, Landroid/media/AudioServiceEx;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 665
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 0
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1262
    invoke-direct {p0}, Landroid/media/AudioServiceEx;->showAllSoundOffToast()V

    .line 1263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 1264
    return-void
.end method

.method protected setStreamVolumeInt(IIIZ)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v1, 0x2

    .line 1368
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    if-eq v0, v1, :cond_0

    if-nez p2, :cond_0

    if-ne p1, v1, :cond_0

    .line 1372
    const-string v0, "AudioServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamVolumeInt(), mRingerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioServiceEx;->mRingerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :goto_0
    return-void

    .line 1376
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 3
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-super {p0, p1, p2, p3}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 748
    if-nez p2, :cond_0

    .line 749
    and-int/lit8 v1, p1, 0xc

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaVolumeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    const/4 v2, 0x3

    aget v0, v1, v2

    .line 752
    .local v0, "streamType":I
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    iget v2, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    if-le v1, v2, :cond_0

    .line 754
    iget v1, p0, Landroid/media/AudioServiceEx;->mSafeMediaVolumeIndex:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/media/AudioServiceEx;->setStreamVolumeInt(IIIZ)V

    .line 755
    iget v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/media/AudioServiceEx;->mLgSafeMediaDeviceToastFlag:I

    .line 760
    .end local v0    # "streamType":I
    :cond_0
    return-void
.end method

.method updateRingerModeAffectedStreams()Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 573
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 580
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit16 v0, v0, 0x126

    .line 585
    iget v1, p0, Landroid/media/AudioServiceEx;->mPlatformType:I

    packed-switch v1, :pswitch_data_0

    .line 590
    and-int/lit8 v0, v0, -0x9

    .line 594
    :goto_0
    iget-object v2, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 595
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    and-int/lit16 v0, v0, -0x81

    .line 600
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 602
    or-int/lit16 v0, v0, 0x100

    .line 609
    :goto_2
    iget-boolean v1, p0, Landroid/media/AudioServiceEx;->mIsSoundException:Z

    if-eqz v1, :cond_0

    .line 610
    and-int/lit8 v0, v0, -0x5

    .line 614
    :cond_0
    iget v1, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_3

    .line 615
    iget-object v1, p0, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 619
    iput v0, p0, Landroid/media/AudioServiceEx;->mRingerModeAffectedStreams:I

    .line 620
    const/4 v1, 0x1

    .line 622
    :goto_3
    return v1

    .line 587
    :pswitch_0
    const/4 v0, 0x0

    .line 588
    goto :goto_0

    .line 598
    :cond_1
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 600
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 604
    :cond_2
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 622
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected updateStreamVolumeAlias(Z)V
    .locals 4
    .param p1, "updateVolumes"    # Z

    .prologue
    const/4 v3, 0x0

    .line 642
    sget-object v0, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    const-string v1, "ro.config.vc_call_vol_steps"

    sget-object v2, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v3

    .line 645
    iget-boolean v0, p0, Landroid/media/AudioServiceEx;->mInited:Z

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioServiceEx;->mInited:Z

    .line 647
    sget-object v0, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME_Ex:[I

    sput-object v0, Landroid/media/AudioServiceEx;->MAX_STREAM_VOLUME:[I

    .line 648
    sget-object v0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_Ex:[I

    iput-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 649
    sget-object v0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_NON_VOICE_Ex:[I

    iput-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 650
    sget-object v0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_DEFAULT_Ex:[I

    iput-object v0, p0, Landroid/media/AudioServiceEx;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 651
    sget-object v0, Landroid/media/AudioServiceEx;->STREAM_NAMES_Ex:[Ljava/lang/String;

    sput-object v0, Landroid/media/AudioServiceEx;->STREAM_NAMES:[Ljava/lang/String;

    .line 653
    :cond_0
    invoke-super {p0, p1}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 654
    return-void
.end method
