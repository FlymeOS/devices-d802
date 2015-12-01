.class public Lcom/lge/camera/controller/SoundController;
.super Lcom/lge/camera/controller/Controller;
.source "SoundController.java"


# static fields
.field public static MAX_BURST_SHOT_SOUND:I = 0x0

.field public static MAX_CONTINUOUS_SHOT_SOUND:I = 0x0

.field public static final SHUTTER_SOUND_COUNT:I = 0x4


# instance fields
.field private final completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private final completeListener_music:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mClearSoundResultID:I

.field private mContinuousSoundResultID:I

.field private mMusicSoundSampleIDLoadedMaskID:I

.field private mShutter:[I

.field private mShutterSoundLoaded:Z

.field private mShutterSoundResID:I

.field private mSoundBuildThread:Ljava/lang/Thread;

.field private mSoundSampleIDBeforeLoaded:I

.field private mSoundSampleIDLoadedMaskID:I

.field private mSoundSampleIDRegisteredMaskID:I

.field private mSound_Timer1sec:I

.field private mSound_TimerLast:I

.field private mSound_afFail:I

.field private mSound_afSuccess:I

.field private mSound_clearshot_delay:I

.field private mSound_clearshot_snap:I

.field private mSound_continuous_shutter:I

.field private mSound_pool:Landroid/media/SoundPool;

.field private mSound_pool_music:Landroid/media/SoundPool;

.field private mSound_shutter:I

.field private mSound_startRecording:I

.field private mSound_stopRecording:I

.field private mSound_voiceShutter_LG:I

.field private mSound_voiceShutter_cheese:I

.field private mSound_voiceShutter_kimchi:I

.field private mSound_voiceShutter_smile:I

.field private mSound_voiceShutter_torimasu:I

.field private mSound_voiceShutter_whisky:I

.field private msound_capture:I

.field private voiceCommandStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x6

    sput v0, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    .line 34
    const/16 v0, 0x27

    sput v0, Lcom/lge/camera/controller/SoundController;->MAX_BURST_SHOT_SOUND:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 51
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 52
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 53
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 54
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 55
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 56
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 58
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    .line 59
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    .line 61
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    .line 63
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    .line 64
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    .line 65
    iput-boolean v1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 68
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    .line 69
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I

    .line 152
    new-instance v0, Lcom/lge/camera/controller/SoundController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController$1;-><init>(Lcom/lge/camera/controller/SoundController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 194
    new-instance v0, Lcom/lge/camera/controller/SoundController$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController$2;-><init>(Lcom/lge/camera/controller/SoundController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener_music:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 700
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 899
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setLoadedSoundMaskID(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SoundController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setLoadedMusicSoundMaskID(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener_music:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    return p1
.end method

.method static synthetic access$1502(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    return p1
.end method

.method static synthetic access$1602(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    return p1
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSourceHWTunned()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunnedInCamcorder()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunned()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSource()V

    return-void
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceInCamcorder()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSource()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/SoundController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->getSoundIDPlayedBeforeLoaded()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/SoundController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    return v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    return p1
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lge/camera/controller/SoundController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->checkShutterSoundLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/SoundController;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->checkAllSoundLoaded()Z

    move-result v0

    return v0
.end method

.method private buildSoundPoolSoundSource()V
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 462
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/SoundController$7;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SoundController$7;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 499
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private checkAllSoundLoaded()Z
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkShutterSoundLoaded()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "result":Z
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 93
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v2, v5}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 99
    .local v1, "shutterSoundID":I
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 116
    :goto_1
    invoke-direct {p0, v1, v5}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_clear_shot"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    goto :goto_1

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    :cond_4
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    goto :goto_1

    .line 113
    :cond_5
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto :goto_1
.end method

.method private checkSoundLoaded(IZ)Z
    .locals 4
    .param p1, "soundID"    # I
    .param p2, "isMusicStream"    # Z

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 78
    .local v2, "soundMaskID":I
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    .line 80
    .local v0, "loadMaskID":I
    :goto_0
    const/4 v3, 0x1

    shl-int v2, v3, p1

    .line 82
    and-int v3, v0, v2

    if-ne v3, v2, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 86
    :cond_0
    return v1

    .line 78
    .end local v0    # "loadMaskID":I
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    goto :goto_0
.end method

.method private getSoundIDPlayedBeforeLoaded()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    return v0
.end method

.method private loadingCamcorderSoundSource()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 310
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    .line 311
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 312
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-nez v0, :cond_0

    .line 313
    const-string v0, "CameraApp"

    const-string v1, "Shutter Sound Load Failed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/SoundController$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SoundController$4;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    .line 326
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 327
    return-void
.end method

.method private loadingCamcorderSoundSourceHWTunned()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 437
    const-string v2, "system/media/audio/camera/"

    .line 438
    .local v2, "SOUND_RESOURCE_PATH":Ljava/lang/String;
    const-string v0, "system/media/audio/camera/camstart.ogg"

    .line 439
    .local v0, "REC_START":Ljava/lang/String;
    const-string v1, "system/media/audio/camera/camstop.ogg"

    .line 441
    .local v1, "REC_STOP":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/camera/camstart.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    .line 442
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 443
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-nez v3, :cond_0

    .line 444
    const-string v3, "CameraApp"

    const-string v4, "Shutter Sound Load Failed"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/SoundController$6;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/SoundController$6;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/camera/camstop.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    .line 457
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 458
    return-void
.end method

.method private loadingCameraSoundSource()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 224
    new-array v4, v10, [I

    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 225
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 228
    .local v3, "shutterSoundResourceId":[I
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shutter_sound"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 229
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    const/4 v1, 0x0

    .line 231
    .local v1, "index":I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 232
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    :goto_0
    if-ltz v1, :cond_0

    const/4 v4, 0x3

    if-le v1, v4, :cond_1

    .line 241
    :cond_0
    const/4 v1, 0x0

    .line 243
    :cond_1
    aget v4, v3, v1

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundResID:I

    .line 244
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget v7, v3, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    aput v5, v4, v1

    .line 246
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v4, v4, v1

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 247
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_5

    .line 249
    if-eq v0, v1, :cond_2

    .line 250
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget v7, v3, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    aput v5, v4, v0

    .line 252
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 248
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 238
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "KEY_SHUTTER_SOUND is not found."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .restart local v0    # "i":I
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v4, :cond_6

    .line 257
    const-string v4, "CameraApp"

    const-string v5, "Shutter Sound Load Failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/SoundController$3;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/SoundController$3;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 270
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 271
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 279
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060006

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    .line 280
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 282
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    .line 283
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 285
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060011

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 287
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060014

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 289
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060016

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 291
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060012

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 293
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060013

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 295
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060015

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 298
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060010

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    .line 299
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06000e

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    .line 300
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportShotModeModel()Z

    move-result v4

    if-nez v4, :cond_9

    .line 301
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06000a

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 303
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 307
    :goto_3
    return-void

    .line 273
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 274
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f060000

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 275
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 276
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    goto/16 :goto_2

    .line 305
    :cond_9
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    goto :goto_3

    .line 225
    :array_0
    .array-data 4
        0x7f060002
        0x7f060003
        0x7f060004
        0x7f060005
    .end array-data
.end method

.method private loadingCameraSoundSourceHWTunned()V
    .locals 27

    .prologue
    .line 350
    const-string v11, "system/media/audio/camera/"

    .line 352
    .local v11, "SOUND_RESOURCE_PATH":Ljava/lang/String;
    const-string v7, "system/media/audio/camera/cam_snap_0.ogg"

    .line 353
    .local v7, "SHUTTER_SOUND0":Ljava/lang/String;
    const-string v8, "system/media/audio/camera/cam_snap_1.ogg"

    .line 354
    .local v8, "SHUTTER_SOUND1":Ljava/lang/String;
    const-string v9, "system/media/audio/camera/cam_snap_2.ogg"

    .line 355
    .local v9, "SHUTTER_SOUND2":Ljava/lang/String;
    const-string v10, "system/media/audio/camera/cam_snap_3.ogg"

    .line 357
    .local v10, "SHUTTER_SOUND3":Ljava/lang/String;
    const-string v12, "system/media/audio/camera/cameratimer.ogg"

    .line 358
    .local v12, "TIMER_COUNT":Ljava/lang/String;
    const-string v13, "system/media/audio/camera/cameratimerlast3.ogg"

    .line 359
    .local v13, "TIMER_LAST":Ljava/lang/String;
    const-string v3, "system/media/audio/camera/af_success.ogg"

    .line 360
    .local v3, "AF_SUCCESS":Ljava/lang/String;
    const-string v2, "system/media/audio/camera/af_failure.ogg"

    .line 362
    .local v2, "AF_FAILURE":Ljava/lang/String;
    const-string v6, "system/media/audio/camera/continuous_shot.ogg"

    .line 364
    .local v6, "CONTI_SOUND":Ljava/lang/String;
    const-string v14, "system/media/audio/camera/cam_snap_0.ogg"

    .line 365
    .local v14, "VOICE_CHEESE":Ljava/lang/String;
    const-string v17, "system/media/audio/camera/cam_snap_1.ogg"

    .line 366
    .local v17, "VOICE_SMILE":Ljava/lang/String;
    const-string v19, "system/media/audio/camera/cam_snap_2.ogg"

    .line 367
    .local v19, "VOICE_WHISKY":Ljava/lang/String;
    const-string v15, "system/media/audio/camera/cam_snap_3.ogg"

    .line 368
    .local v15, "VOICE_KIMCHI":Ljava/lang/String;
    const-string v16, "system/media/audio/camera/cam_snap_0.ogg"

    .line 369
    .local v16, "VOICE_LG":Ljava/lang/String;
    const-string v18, "system/media/audio/camera/cam_snap_0.ogg"

    .line 371
    .local v18, "VOICE_TORIMASU":Ljava/lang/String;
    const-string v4, "system/media/audio/camera/snd_loop.ogg"

    .line 372
    .local v4, "CLEAR_SHOT_LOOP":Ljava/lang/String;
    const-string v5, "system/media/audio/camera/shot_snap.ogg"

    .line 374
    .local v5, "CLEAR_SHOT_SNAP":Ljava/lang/String;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_1.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_2.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v24, v0

    const-string v25, "system/media/audio/camera/cam_snap_3.ogg"

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v24

    aput v24, v22, v23

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v22, v0

    const-string v23, "key_camera_shutter_sound"

    invoke-interface/range {v22 .. v23}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v21

    .line 383
    .local v21, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v21, :cond_2

    .line 384
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    const-string v23, "off"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 385
    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 386
    .local v20, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    aget v22, v22, v20

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 395
    .end local v20    # "index":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 397
    const-string v22, "CameraApp"

    const-string v23, "Shutter Sound Load Failed"

    invoke-static/range {v22 .. v23}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v22, v0

    new-instance v23, Lcom/lge/camera/controller/SoundController$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController$5;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-interface/range {v22 .. v23}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/continuous_shot.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/af_success.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/af_failure.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cameratimer.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cameratimerlast3.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_1.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_2.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_3.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/snd_loop.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move-object/from16 v22, v0

    const-string v23, "system/media/audio/camera/shot_snap.ogg"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    .line 434
    return-void

    .line 388
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 389
    .restart local v20    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    move-object/from16 v22, v0

    aget v22, v22, v20

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto/16 :goto_0

    .line 392
    .end local v20    # "index":I
    :cond_2
    const-string v22, "CameraApp"

    const-string v23, "KEY_SHUTTER_SOUND is not found."

    invoke-static/range {v22 .. v23}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private loadingCameraSoundSourceHWTunnedInCamcorder()V
    .locals 4

    .prologue
    .line 330
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 331
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getShutterSoundIndex(Landroid/content/Context;)I

    move-result v0

    .line 332
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 333
    if-ltz v0, :cond_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 337
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system/media/audio/camera/cam_snap_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "shutterSoundPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    .line 340
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 341
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 344
    .end local v1    # "shutterSoundPath":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v2, :cond_3

    .line 345
    const-string v2, "CameraApp"

    const-string v3, "Shutter Sound Load Failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_3
    return-void
.end method

.method private loadingCameraSoundSourceInCamcorder()V
    .locals 6

    .prologue
    .line 202
    const/4 v2, 0x4

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 204
    .local v1, "shutterSoundResourceId":[I
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getShutterSoundIndex(Landroid/content/Context;)I

    move-result v0

    .line 206
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 207
    if-ltz v0, :cond_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget v4, v1, v0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    .line 212
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    iput v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 213
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 218
    :goto_0
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v2, :cond_2

    .line 219
    const-string v2, "CameraApp"

    const-string v3, "Shutter Sound Load Failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    return-void

    .line 215
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "KEY_SHUTTER_SOUND is not found."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    nop

    :array_0
    .array-data 4
        0x7f060002
        0x7f060003
        0x7f060004
        0x7f060005
    .end array-data
.end method

.method private setLoadedMusicSoundMaskID(I)V
    .locals 2
    .param p1, "sampleID"    # I

    .prologue
    .line 141
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mMusicSoundSampleIDLoadedMaskID:I

    .line 142
    return-void
.end method

.method private setLoadedSoundMaskID(I)V
    .locals 2
    .param p1, "sampleID"    # I

    .prologue
    .line 137
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    .line 138
    return-void
.end method

.method private setRegisteredSoundMaskID(I)V
    .locals 3
    .param p1, "sampleID"    # I

    .prologue
    const/4 v2, 0x1

    .line 145
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    shl-int v0, v2, p1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    goto :goto_0
.end method

.method private setSoundSampleIDBeforeLoaded(I)V
    .locals 0
    .param p1, "sampleID"    # I

    .prologue
    .line 628
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    .line 629
    return-void
.end method

.method private unloadSoundPool(IZZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "shutterSound"    # Z
    .param p3, "isMusicStream"    # Z

    .prologue
    const/4 v3, 0x0

    .line 587
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool, start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz p2, :cond_1

    .line 589
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, p1

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool, mShutter[index] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 606
    :cond_0
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "unloadSoundPool, end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void

    .line 594
    :cond_1
    if-eqz p3, :cond_2

    .line 595
    if-lez p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool_music, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0

    .line 600
    :cond_2
    if-lez p1, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unloadSoundPool, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_0
.end method


# virtual methods
.method public changeShutterSound(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 932
    iget-boolean v0, p0, Lcom/lge/camera/controller/SoundController;->mInit:Z

    if-nez v0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveShutterSoundIndex(Landroid/content/Context;I)V

    .line 939
    if-ltz p1, :cond_0

    .line 942
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto :goto_0
.end method

.method public checkCameraShutterSoundLoaded()Z
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "result":Z
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0
.end method

.method public initController()V
    .locals 2

    .prologue
    .line 503
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/SoundController;->mInit:Z

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "SoundControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 544
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 546
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start, sound_pool release 1/2"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 548
    invoke-direct {p0, v2, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 549
    invoke-direct {p0, v3, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 550
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 551
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 552
    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 554
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->msound_capture:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 555
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 556
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 557
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 558
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 559
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 560
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 561
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 563
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 564
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 565
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 566
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 567
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 568
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 570
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 571
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    invoke-direct {p0, v0, v2, v2}, Lcom/lge/camera/controller/SoundController;->unloadSoundPool(IZZ)V

    .line 573
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 574
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 575
    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    .line 577
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    invoke-virtual {v0, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 579
    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    .line 581
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end, sound_pool release 2/2"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 584
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 534
    const-string v0, "CameraApp"

    const-string v1, "onPause-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 538
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 539
    const-string v0, "CameraApp"

    const-string v1, "onPause-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 517
    const-string v0, "CameraApp"

    const-string v1, "onResume-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-boolean v0, p0, Lcom/lge/camera/controller/SoundController;->mInit:Z

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 521
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 522
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 523
    const-string v0, "CameraApp"

    const-string v1, "retry buildSoundPoolSoundSource"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V

    .line 529
    :cond_1
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "onResume-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "SoundControllerLockKey"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public playAFSound(Z)V
    .locals 4
    .param p1, "seccess"    # Z

    .prologue
    const/4 v3, 0x0

    .line 833
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAFSound : seccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    if-eqz p1, :cond_1

    .line 835
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playBurstShotShutterSound(Z)V
    .locals 3
    .param p1, "repeat"    # Z

    .prologue
    .line 807
    const-string v0, "CameraApp"

    const-string v1, "playBurstShotShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    :goto_0
    return-void

    .line 814
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/controller/SoundController;->soundPlayBurstShot(IZ)V

    goto :goto_0

    .line 817
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playClearShotShutterSound(Z)V
    .locals 7
    .param p1, "isEnd"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 902
    const-string v0, "CameraApp"

    const-string v1, "playClearShotShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shutter_sound"

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 910
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 911
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    :cond_3
    if-eqz p1, :cond_4

    .line 915
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_delay:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    goto :goto_0

    .line 917
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 918
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_clearshot_snap:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public playClickSound()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 848
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 849
    return-void
.end method

.method public playContinuousShutterSound()V
    .locals 3

    .prologue
    .line 792
    const-string v0, "CameraApp"

    const-string v1, "playContinuousShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlaycontinuous(I)V

    goto :goto_0

    .line 802
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playFreePanoramaShutterSound()V
    .locals 3

    .prologue
    .line 822
    const-string v0, "CameraApp"

    const-string v1, "playFreePanoramaShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 829
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playRecordingSound(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    .line 666
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRecordingSound : start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_plane_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_free_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "off"

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shutter_sound"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    :goto_0
    return-void

    .line 680
    :cond_1
    if-eqz p1, :cond_2

    .line 681
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0

    .line 683
    :cond_2
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playShutterSound()V
    .locals 2

    .prologue
    .line 658
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shutter_sound"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 662
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playTimerSound(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 688
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTimerSound : time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 693
    :cond_0
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 694
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0

    .line 696
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playVoiceCommandSound(I)V
    .locals 7
    .param p1, "soundIndex"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 852
    const-string v0, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playVoiceCommandSound : soundIndex = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 855
    const/4 v1, 0x0

    .line 856
    .local v1, "soundSource":I
    packed-switch p1, :pswitch_data_0

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    .line 880
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voiceCommandStream.play :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    if-nez v0, :cond_0

    .line 883
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 887
    .end local v1    # "soundSource":I
    :cond_0
    return-void

    .line 858
    .restart local v1    # "soundSource":I
    :pswitch_0
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_cheese:I

    .line 859
    goto :goto_0

    .line 861
    :pswitch_1
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_smile:I

    .line 862
    goto :goto_0

    .line 864
    :pswitch_2
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_whisky:I

    .line 865
    goto :goto_0

    .line 867
    :pswitch_3
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_kimchi:I

    .line 868
    goto :goto_0

    .line 870
    :pswitch_4
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_LG:I

    .line 871
    goto :goto_0

    .line 873
    :pswitch_5
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_voiceShutter_torimasu:I

    .line 874
    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public soundPlay(I)V
    .locals 8
    .param p1, "soundSource"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 632
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 634
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 635
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    if-ne p1, v0, :cond_2

    .line 643
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 648
    .local v7, "result":I
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSound_pool.play :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    if-nez v7, :cond_2

    .line 650
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 655
    .end local v7    # "result":I
    :cond_2
    return-void
.end method

.method public soundPlayBurstShot(IZ)V
    .locals 7
    .param p1, "soundSource"    # I
    .param p2, "repeat"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 743
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 745
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 747
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-ne p1, v0, :cond_3

    .line 749
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    .line 751
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSound_pool.play soundSource : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-eqz v0, :cond_2

    .line 754
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->stopSoundBurstShot()V

    .line 757
    :cond_2
    if-nez p2, :cond_4

    .line 758
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 764
    :goto_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-nez v0, :cond_3

    .line 765
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 770
    :cond_3
    return-void

    .line 760
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const/16 v4, 0xa

    sget v5, Lcom/lge/camera/controller/SoundController;->MAX_BURST_SHOT_SOUND:I

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    goto :goto_0
.end method

.method public soundPlaycontinuous(I)V
    .locals 7
    .param p1, "soundSource"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 703
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 705
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 707
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-ne p1, v0, :cond_2

    .line 709
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 711
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSound_pool.play "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    sget v5, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 715
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-nez v0, :cond_2

    .line 716
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 721
    :cond_2
    return-void
.end method

.method public stopClearShotSound()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 925
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mClearSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 929
    :cond_0
    return-void
.end method

.method public stopSoundBurstShot()V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 775
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 776
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 778
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 779
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 780
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-eqz v0, :cond_2

    .line 781
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSound_pool.stop mContinuousSoundResultID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 788
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 789
    return-void
.end method

.method public stopSoundContinuous()V
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 726
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 728
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 732
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSound_pool.stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 739
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 740
    return-void
.end method

.method public stopVoiceCommandSound()V
    .locals 2

    .prologue
    .line 890
    const-string v0, "CameraApp"

    const-string v1, "stopVoiceCommandSound "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 893
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool_music:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->voiceCommandStream:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 897
    :cond_0
    return-void
.end method

.method public waitSoundBuildThreadDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    const-string v1, "CameraApp"

    const-string v2, "Wait for sound_pool load.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 614
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 615
    const-string v1, "CameraApp"

    const-string v2, "sound_pool loaded.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join sound_pool load thread!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
