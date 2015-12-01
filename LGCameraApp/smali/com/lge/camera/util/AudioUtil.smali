.class public Lcom/lge/camera/util/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field public static final ACTION_AUDIO_STOP_NOTIFICATION:Ljava/lang/String; = "com.lge.media.STOP_NOTIFICATION"

.field public static IS_MUTE_NOTIFICATION_STREAM:Z

.field public static IS_MUTE_SYSTEM_STREAM:Z

.field public static requestAudioFocusCount:I

.field private static sIsStreamMuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    .line 29
    sput-boolean v0, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    .line 61
    sput v0, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 237
    sput-boolean v0, Lcom/lge/camera/util/AudioUtil;->sIsStreamMuted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAudioFocus(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check requestAudioFocusCount : current count is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "CameraApp"

    const-string v2, "Check requestAudioFocusCount : doing abandonAudioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 110
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 111
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 113
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public static getHasMic(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 193
    .local v0, "am":Landroid/media/AudioManager;
    const-string v1, "isWiredMic"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 196
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAudioManagerCallStatus(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 218
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 219
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 221
    .local v1, "mode":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    .line 226
    .end local v1    # "mode":I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAudioRecording()Z
    .locals 2

    .prologue
    .line 230
    const-string v1, "audiorecording_state"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "isRecording":Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 234
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 201
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWiredHeadsetOn()Z
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pauseAudioPlayback(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.iloen.melon.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "m":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    .end local v1    # "m":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 50
    return-void
.end method

.method public static resumeAudioPlayback(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "togglepause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 59
    return-void
.end method

.method public static setAudioFocus(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestAudioFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 64
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 65
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_1

    .line 66
    const-string v1, "CameraApp"

    const-string v2, "++ Get audiofocus - not music pause"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 69
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "-- Loose audioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 74
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 75
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    if-gez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    goto :goto_0
.end method

.method public static setAudioFocus(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestAudioFocus"    # Z
    .param p2, "isTransient"    # Z

    .prologue
    const/4 v3, 0x0

    .line 82
    if-eqz p2, :cond_1

    .line 83
    invoke-static {p0, p1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 86
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 87
    if-eqz p1, :cond_2

    .line 88
    const-string v1, "CameraApp"

    const-string v2, "++ Get audiofocus-stopAudioPlayback by get audiofocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 91
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    goto :goto_0

    .line 93
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "-- Loose audioFocus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 95
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    .line 96
    sget v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    if-gez v1, :cond_0

    .line 97
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/util/AudioUtil;->requestAudioFocusCount:I

    goto :goto_0
.end method

.method public static setAudiodevice(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Orientation"    # I

    .prologue
    .line 164
    const-string v1, "90"

    .line 165
    .local v1, "direction":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 182
    :goto_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 184
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AUDIO_ZOOMING_MODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 187
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 167
    .end local v0    # "am":Landroid/media/AudioManager;
    :pswitch_0
    const-string v1, "0"

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    const-string v1, "90"

    .line 171
    goto :goto_0

    .line 173
    :pswitch_2
    const-string v1, "180"

    .line 174
    goto :goto_0

    .line 176
    :pswitch_3
    const-string v1, "270"

    .line 177
    goto :goto_0

    .line 179
    :pswitch_4
    const-string v1, "360"

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setMuteNotificationStream(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 124
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 125
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 126
    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : ON"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v3, v5}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 130
    sput-boolean v5, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-boolean v1, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : OFF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 136
    sput-boolean v4, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_NOTIFICATION_STREAM:Z

    goto :goto_0
.end method

.method public static setMuteSystemStream(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 144
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : ON"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v3, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 149
    sput-boolean v3, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    sget-boolean v1, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "CameraApp"

    const-string v2, "set mute to notification stream : OFF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 155
    sput-boolean v4, Lcom/lge/camera/util/AudioUtil;->IS_MUTE_SYSTEM_STREAM:Z

    goto :goto_0
.end method

.method public static setStopNotificationStream(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public static setStreamMute(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Z

    .prologue
    .line 257
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 263
    .local v0, "stream":[I
    invoke-static {p0, v0, p1}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;[IZ)V

    .line 264
    return-void

    .line 257
    :array_0
    .array-data 4
        0x1
        0x5
        0x2
    .end array-data
.end method

.method public static setStreamMute(Landroid/content/Context;[IZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # [I
    .param p2, "state"    # Z

    .prologue
    .line 240
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 241
    .local v0, "am":Landroid/media/AudioManager;
    const-string v2, "Audio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStreamMute = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-eqz v0, :cond_0

    .line 243
    if-eqz p2, :cond_1

    sget-boolean v2, Lcom/lge/camera/util/AudioUtil;->sIsStreamMuted:Z

    if-eqz v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-nez p2, :cond_2

    sget-boolean v2, Lcom/lge/camera/util/AudioUtil;->sIsStreamMuted:Z

    if-eqz v2, :cond_0

    .line 249
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 250
    aget v2, p1, v1

    invoke-virtual {v0, v2, p2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_3
    sput-boolean p2, Lcom/lge/camera/util/AudioUtil;->sIsStreamMuted:Z

    goto :goto_0
.end method

.method public static setVibrationMute(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Z

    .prologue
    .line 267
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    invoke-direct {v0, p0}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "mLGContext":Lcom/lge/systemservice/core/LGContext;
    const-string v2, "volumevibrator"

    invoke-virtual {v0, v2}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/systemservice/core/VolumeVibratorManager;

    .line 270
    .local v1, "mVibrationManager":Lcom/lge/systemservice/core/VolumeVibratorManager;
    invoke-virtual {v1, p1}, Lcom/lge/systemservice/core/VolumeVibratorManager;->setVibrateMute(Z)V

    .line 271
    return-void
.end method
