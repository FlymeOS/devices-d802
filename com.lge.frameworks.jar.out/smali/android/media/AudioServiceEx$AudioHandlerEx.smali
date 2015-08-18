.class public Landroid/media/AudioServiceEx$AudioHandlerEx;
.super Landroid/media/AudioService$AudioHandler;
.source "AudioServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioHandlerEx"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioServiceEx;


# direct methods
.method protected constructor <init>(Landroid/media/AudioServiceEx;)V
    .locals 0

    .prologue
    .line 1167
    iput-object p1, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioHandler;-><init>(Landroid/media/AudioService;)V

    return-void
.end method

.method private handleForMediaServerDied()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1189
    const-string v2, "AudioServiceEx"

    const-string v5, "AudioServiceEx() handleMessage MEDIA_SERVER_DIED"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v2

    if-nez v2, :cond_0

    .line 1192
    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # invokes: Landroid/media/AudioServiceEx;->readPersistedMABL()V
    invoke-static {v2}, Landroid/media/AudioServiceEx;->access$600(Landroid/media/AudioServiceEx;)V

    .line 1196
    :cond_0
    const-string v2, "AudioServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioServiceEx() Reset AllSoundOff. allSoundEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z
    invoke-static {v6}, Landroid/media/AudioServiceEx;->access$900(Landroid/media/AudioServiceEx;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z
    invoke-static {v2}, Landroid/media/AudioServiceEx;->access$900(Landroid/media/AudioServiceEx;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TurnOffAllSound=1;CameraSoundForced="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    iget-object v2, v2, Landroid/media/AudioServiceEx;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1202
    :cond_1
    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    iget-object v2, v2, Landroid/media/AudioServiceEx;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "volume_master_mute"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v1, v3

    .line 1204
    .local v1, "masterMute":Z
    :goto_1
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1205
    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    invoke-virtual {v2, v1}, Landroid/media/AudioServiceEx;->broadcastMasterMuteStatus(Z)V

    .line 1208
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1209
    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mWatchingRotation:Z
    invoke-static {v2}, Landroid/media/AudioServiceEx;->access$1000(Landroid/media/AudioServiceEx;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v2}, Landroid/media/AudioServiceEx;->access$1100(Landroid/media/AudioServiceEx;)Landroid/view/IWindowManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1211
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v2}, Landroid/media/AudioServiceEx;->access$1100(Landroid/media/AudioServiceEx;)Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mRotationWatcher:Landroid/view/IRotationWatcher;
    invoke-static {v3}, Landroid/media/AudioServiceEx;->access$1200(Landroid/media/AudioServiceEx;)Landroid/view/IRotationWatcher;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 1212
    iget-object v2, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    const/4 v3, 0x0

    # setter for: Landroid/media/AudioServiceEx;->mWatchingRotation:Z
    invoke-static {v2, v3}, Landroid/media/AudioServiceEx;->access$1002(Landroid/media/AudioServiceEx;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :cond_2
    :goto_2
    return-void

    .end local v1    # "masterMute":Z
    :cond_3
    move v2, v4

    .line 1198
    goto :goto_0

    :cond_4
    move v1, v4

    .line 1202
    goto :goto_1

    .line 1213
    .restart local v1    # "masterMute":Z
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioServiceEx"

    const-string v3, "Remote exception when removing rotation watcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1169
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 1170
    const-string v0, "AudioServiceEx"

    const-string v1, "handlemesasge: MSG_PERSIST_VOLUME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioServiceEx$AudioHandlerEx;->persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    .line 1172
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v0, v0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v2, :cond_0

    .line 1173
    const-string v1, "persist.sys.system_volume"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v1, "AudioServiceEx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistVolume vol: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioService$VolumeStreamState;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    .line 1178
    const-string v0, "AudioServiceEx"

    const-string v1, "MSG_SHOW_VOLUME_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v0, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/AudioServiceEx;->onShowVolumeInfo(II)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioServiceEx;->access$800(Landroid/media/AudioServiceEx;II)V

    goto :goto_0

    .line 1180
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1181
    invoke-super {p0, p1}, Landroid/media/AudioService$AudioHandler;->handleMessage(Landroid/os/Message;)V

    .line 1182
    invoke-direct {p0}, Landroid/media/AudioServiceEx$AudioHandlerEx;->handleForMediaServerDied()V

    goto :goto_0

    .line 1184
    :cond_3
    invoke-super {p0, p1}, Landroid/media/AudioService$AudioHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected persistRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 1223
    invoke-super {p0, p1}, Landroid/media/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 1226
    const-string v0, "persist.sys.lg.sound_enable"

    iget-object v1, p0, Landroid/media/AudioServiceEx$AudioHandlerEx;->this$0:Landroid/media/AudioServiceEx;

    # getter for: Landroid/media/AudioServiceEx;->mIsAllSoundOff:Z
    invoke-static {v1}, Landroid/media/AudioServiceEx;->access$900(Landroid/media/AudioServiceEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .end local p1    # "ringerMode":I
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    return-void
.end method
