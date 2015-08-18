.class public Lcom/lge/media/SmartRingtone;
.super Ljava/lang/Object;
.source "SmartRingtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/SmartRingtone$NoiseEstimationThread;
    }
.end annotation


# static fields
.field private static final FILT_DEN:S = -0x60e4s

.field private static final FILT_NUM:[S

.field private static LGE_DEBUG:Z = false

.field private static final NUM_MAX_FRAMES:I = 0xf

.field private static final SAMPLE_RATE:I = 0xac44

.field private static TAG:Ljava/lang/String;

.field private static mNoiseAverage:I

.field private static smart_ringtone_level_1:I

.field private static smart_ringtone_level_2:I

.field private static smart_ringtone_level_3:I

.field private static smart_ringtone_level_4:I

.field private static smart_ringtone_level_vib_1:I

.field private static smart_ringtone_level_vib_2:I

.field private static smart_ringtone_level_vib_3:I

.field private static smart_ringtone_level_vib_4:I


# instance fields
.field arec:Landroid/media/AudioRecord;

.field buffer:[S

.field buffersize:I

.field private mAdjustVolume:I

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedVolumeUpHandler:Landroid/os/Handler;

.field private mExitThread:Z

.field private mInitializationLooper:Landroid/os/Looper;

.field private mIsFromPhoneApp:Z

.field private mMicTestDone:Z

.field private mPrevVolume:I

.field private mSmartRingtoneLevel:I

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v2, "SmartRingtone"

    sput-object v2, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    .line 25
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    .line 44
    sput v1, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/media/SmartRingtone;->FILT_NUM:[S

    return-void

    :cond_0
    move v0, v1

    .line 25
    goto :goto_0

    .line 49
    nop

    :array_0
    .array-data 2
        0x7071s
        -0x7071s
    .end array-data
.end method

.method public constructor <init>(Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Landroid/media/AudioManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    .line 32
    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 33
    iput v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    .line 61
    iput-object v1, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    .line 62
    iput-object v1, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    .line 65
    iput-object p1, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    .line 66
    iput-object p2, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    .line 68
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext.toString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LTECallApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoTelephony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z

    .line 76
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    .line 78
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_1:I

    .line 79
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_2:I

    .line 80
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_3:I

    .line 81
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_4:I

    .line 82
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    .line 83
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    .line 84
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    .line 85
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$integer;->config_smart_ringtone_level_vib_4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    .line 87
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_3

    .line 88
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vib_4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vib_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vib_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vib_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level_1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_3
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/media/SmartRingtone;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/media/SmartRingtone;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/media/SmartRingtone;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lge/media/SmartRingtone;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/media/SmartRingtone;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/media/SmartRingtone;->setSmartRingtoneLevel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/media/SmartRingtone;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/media/SmartRingtone;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 23
    sput p0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    return p0
.end method

.method static synthetic access$312(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 23
    sget v0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    add-int/2addr v0, p0

    sput v0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$336(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 23
    sget v0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    div-int/2addr v0, p0

    sput v0, Lcom/lge/media/SmartRingtone;->mNoiseAverage:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/media/SmartRingtone;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/media/SmartRingtone;->calculateSmartRingtoneLevel(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/media/SmartRingtone;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    return v0
.end method

.method static synthetic access$502(Lcom/lge/media/SmartRingtone;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    return p1
.end method

.method static synthetic access$600(Lcom/lge/media/SmartRingtone;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/media/SmartRingtone;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/SmartRingtone;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mExitThread:Z

    return v0
.end method

.method static synthetic access$800()[S
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/lge/media/SmartRingtone;->FILT_NUM:[S

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    return v0
.end method

.method private calculateSmartRingtoneLevel(I)V
    .locals 9
    .param p1, "noise"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIBRATE_WHEN_RINGING = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_4:I

    if-lt p1, v0, :cond_1

    .line 303
    iput v8, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_3:I

    if-lt p1, v0, :cond_2

    .line 305
    iput v7, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 306
    :cond_2
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_2:I

    if-lt p1, v0, :cond_3

    .line 307
    iput v6, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 308
    :cond_3
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_vib_1:I

    if-lt p1, v0, :cond_0

    .line 309
    iput v5, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 312
    :cond_4
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_4:I

    if-lt p1, v0, :cond_5

    .line 313
    iput v8, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 314
    :cond_5
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_3:I

    if-lt p1, v0, :cond_6

    .line 315
    iput v7, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 316
    :cond_6
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_2:I

    if-lt p1, v0, :cond_7

    .line 317
    iput v6, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0

    .line 318
    :cond_7
    sget v0, Lcom/lge/media/SmartRingtone;->smart_ringtone_level_1:I

    if-lt p1, v0, :cond_0

    .line 319
    iput v5, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    goto :goto_0
.end method

.method private getSmartRingtoneMode()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 364
    iget-object v5, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/lge/internal/R$bool;->config_use_smart_ringtone:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 365
    .local v0, "config_use_smart_ringtone":Z
    if-eqz v0, :cond_1

    .line 366
    iget-object v5, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_ringtone"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, "isSmartRingtoneEnabled":I
    :try_start_0
    iget-object v5, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_ringtone"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    if-ne v2, v3, :cond_0

    .line 374
    .end local v2    # "isSmartRingtoneEnabled":I
    :goto_1
    return v3

    .line 369
    .restart local v2    # "isSmartRingtoneEnabled":I
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v5, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v6, "[smart ringtone] AudioManager:getSmartRingtoneMode: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    move v3, v4

    .line 372
    goto :goto_1

    .end local v2    # "isSmartRingtoneEnabled":I
    :cond_1
    move v3, v4

    .line 374
    goto :goto_1
.end method

.method private setSmartRingtoneLevel()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x2

    .line 326
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    .line 332
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    iput v3, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_0

    .line 337
    :cond_1
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mAdjustVolume:I

    goto :goto_0
.end method


# virtual methods
.method public onExitRecordingLoop()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mExitThread:Z

    .line 344
    return-void
.end method

.method public onNoiseEstimation()V
    .locals 8

    .prologue
    const v3, 0xac44

    const/16 v7, 0x140

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 213
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    if-eq v0, v2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/lge/media/SmartRingtone;->getSmartRingtoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 225
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_2

    .line 226
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mInitializationLooper:Landroid/os/Looper;

    if-eqz v0, :cond_3

    .line 230
    new-instance v0, Lcom/lge/media/SmartRingtone$2;

    invoke-direct {v0, p0}, Lcom/lge/media/SmartRingtone$2;-><init>(Lcom/lge/media/SmartRingtone;)V

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;

    .line 257
    :cond_3
    iput-boolean v2, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mExitThread:Z

    .line 260
    invoke-static {v3, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    .line 264
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 265
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "Process doesn\'t have RECORD_AUDIO permission"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_4
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const v2, 0xac44

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_5

    .line 282
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "arec AudioRecord.STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    goto :goto_0

    .line 275
    :catch_0
    move-exception v6

    .line 276
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    const-string v1, "smart ringtone caught "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto :goto_0

    .line 288
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_5
    iget v0, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/lge/media/SmartRingtone;->buffer:[S

    .line 289
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 291
    iget v0, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    if-le v0, v7, :cond_6

    .line 292
    iput v7, p0, Lcom/lge/media/SmartRingtone;->buffersize:I

    .line 295
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;

    invoke-direct {v1, p0}, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;-><init>(Lcom/lge/media/SmartRingtone;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public declared-synchronized restoreVolumeAfterStop()V
    .locals 4

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mIsFromPhoneApp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    monitor-exit p0

    return-void

    .line 352
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 353
    sget-object v0, Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 356
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    iget v2, p0, Lcom/lge/media/SmartRingtone;->mPrevVolume:I

    const/16 v3, 0x1800

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 359
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/media/SmartRingtone;->mMicTestDone:Z

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    .line 106
    iget v0, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lge/media/SmartRingtone;->mAudio:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/lge/media/SmartRingtone$1;

    invoke-direct {v1, p0}, Lcom/lge/media/SmartRingtone$1;-><init>(Lcom/lge/media/SmartRingtone;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/lge/media/SmartRingtone;->mStreamType:I

    .line 101
    return-void
.end method
