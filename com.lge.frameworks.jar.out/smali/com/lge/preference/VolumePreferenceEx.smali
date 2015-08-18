.class public Lcom/lge/preference/VolumePreferenceEx;
.super Landroid/preference/VolumePreference;
.source "VolumePreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/preference/VolumePreferenceEx$1;,
        Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumePreferenceEx"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mOriginalRingerMode:I

.field protected mOriginalZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-string v0, "VolumePreferenceEx"

    const-string v1, "CTOR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;

    .line 40
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 45
    const v0, 0x102035f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 46
    .local v3, "seekBar":Landroid/widget/SeekBar;
    new-instance v0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/lge/preference/VolumePreferenceEx;->mStreamType:I

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;-><init>(Lcom/lge/preference/VolumePreferenceEx;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    .line 47
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    .line 48
    invoke-virtual {p0}, Lcom/lge/preference/VolumePreferenceEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/preference/VolumePreferenceEx;->mOriginalZenMode:I

    .line 49
    return-void
.end method
