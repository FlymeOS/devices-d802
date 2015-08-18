.class Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;
.super Ljava/lang/Object;
.source "VolumePreferenceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->revertVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;


# direct methods
.method constructor <init>(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 78
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$100(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$200(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v1, v1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    iget v1, v1, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v0, v0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    iget v0, v0, Lcom/lge/preference/VolumePreferenceEx;->mOriginalZenMode:I

    if-ne v0, v2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$300(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v2, v2, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    iget v2, v2, Lcom/lge/preference/VolumePreferenceEx;->mOriginalZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$700(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mStreamType:I
    invoke-static {v1}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$500(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mOriginalStreamVolume:I
    invoke-static {v2}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$600(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)I

    move-result v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 89
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    # getter for: Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->access$400(Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx$1;->this$1:Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;

    iget-object v1, v1, Lcom/lge/preference/VolumePreferenceEx$SeekBarVolumizerEx;->this$0:Lcom/lge/preference/VolumePreferenceEx;

    iget v1, v1, Lcom/lge/preference/VolumePreferenceEx;->mOriginalRingerMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    goto :goto_0
.end method
