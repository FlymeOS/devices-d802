.class public Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
.super Landroid/preference/SeekBarVolumizer;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/preference/VolumePreferenceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizerEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizerEx"


# instance fields
.field private final mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

.field final synthetic this$0:Lcom/lge/preference/VolumePreferenceEx;


# direct methods
.method public constructor <init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "defaultUri"    # Landroid/net/Uri;
    .param p6, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    .line 63
    invoke-direct {p0, p2, p4, p5, p6}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    .line 55
    new-instance v0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;-><init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;Lcom/lge/preference/VolumePreferenceEx$1;)V

    iput-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    .line 65
    const-string v0, "SeekBarVolumizerEx"

    const-string v1, "SeekBarVolumizerEx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->setListening(Z)V

    .line 67
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    .line 68
    invoke-virtual {p0, p3}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/preference/SeekBarVolumizer$Callback;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .prologue
    .line 58
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;-><init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return p1
.end method

.method static synthetic access$200(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    iget v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 106
    :cond_0
    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->startSample()V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mLastProgress:I

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    goto :goto_0
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;

    invoke-direct {v1, p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;-><init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method public startSample()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    invoke-virtual {v0, p0}, Lcom/lge/preference/VolumePreferenceEx;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 117
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->stopSample()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->postStartSample()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 97
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mReceiver:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$LGVolumePreferenceReceiver;->setListening(Z)V

    .line 98
    return-void
.end method
