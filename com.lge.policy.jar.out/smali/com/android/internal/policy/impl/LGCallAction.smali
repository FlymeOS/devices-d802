.class Lcom/android/internal/policy/impl/LGCallAction;
.super Ljava/lang/Object;
.source "LGCallAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGCallAction"

.field static final VT_DIALING_STATE:I = 0x64

.field static final VT_INCALL_STATE:I = 0x66

.field static final VT_INCOMING_STATE:I = 0x65

.field private static mIsBluetoothHeadsetPlugged:Z

.field private static mIsHeadsetPlugged:Z

.field protected static sPowerKeyHoldingCallByPowerKey:Z

.field private static sPowerKeyScreenOnInCalling:Z


# instance fields
.field mAnsweredCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyScreenOnInCalling:Z

    .line 24
    sput-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyHoldingCallByPowerKey:Z

    .line 26
    sput-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->mIsHeadsetPlugged:Z

    .line 27
    sput-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->mIsBluetoothHeadsetPlugged:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGCallAction;->mAnsweredCall:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_power_key_screen_on_in_calling:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyScreenOnInCalling:Z

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_hold_call_by_powerkey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyHoldingCallByPowerKey:Z

    .line 43
    new-instance v0, Lcom/android/internal/policy/impl/LGCallAction$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGCallAction$1;-><init>(Lcom/android/internal/policy/impl/LGCallAction;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/LGCallAction$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGCallAction$2;-><init>(Lcom/android/internal/policy/impl/LGCallAction;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcom/android/internal/policy/impl/LGCallAction;->mIsHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcom/android/internal/policy/impl/LGCallAction;->mIsBluetoothHeadsetPlugged:Z

    return p0
.end method

.method static isBTSpeakerPhoneHeadsetMode()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->mIsBluetoothHeadsetPlugged:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->mIsHeadsetPlugged:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/LGCallAction;->isSpeakerPhoneOn()Z

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

.method static isPowerKeyScreenOnInCalling()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyScreenOnInCalling:Z

    return v0
.end method

.method private static isSpeakerPhoneOn()Z
    .locals 5

    .prologue
    .line 131
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 132
    .local v0, "audioService":Landroid/media/IAudioService;
    const/4 v2, 0x0

    .line 133
    .local v2, "isSpeakerPhoneOn":Z
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 140
    :cond_0
    :goto_0
    return v2

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "LGCallAction"

    const-string v4, "IAudioService threw RemoteException"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method answerRingingCallByHomeOrHotKey(IIZ)Z
    .locals 8
    .param p1, "policyFlags"    # I
    .param p2, "keyCode"    # I
    .param p3, "down"    # Z

    .prologue
    const/16 v7, 0xa5

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 66
    if-ne p2, v6, :cond_0

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_1

    :cond_0
    if-ne p2, v7, :cond_7

    .line 68
    :cond_1
    const-string v5, "persist.radio.keyBlockByCall"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "keyBlockByCall":Ljava/lang/String;
    if-ne p2, v6, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    if-ne p2, v7, :cond_3

    const-string v5, "2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const-string v5, "3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 72
    :cond_4
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 73
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_5

    .line 75
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 76
    if-eqz p3, :cond_5

    .line 77
    const-string v5, "LGCallAction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "answerRingingCall : Call popup result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LGCallAction;->mAnsweredCall:Z

    .line 79
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "keyBlockByCall":Ljava/lang/String;
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v3

    .line 83
    .restart local v1    # "keyBlockByCall":Ljava/lang/String;
    .restart local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v5, "LGCallAction"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LGCallAction;->mAnsweredCall:Z

    if-eqz v5, :cond_7

    .line 89
    if-nez p3, :cond_6

    .line 90
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LGCallAction;->mAnsweredCall:Z

    .line 92
    :cond_6
    const-string v4, "LGCallAction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " return:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "down="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAnsweredCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/LGCallAction;->mAnsweredCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "keyBlockByCall":Ljava/lang/String;
    :cond_7
    move v3, v4

    .line 96
    goto :goto_0
.end method

.method dumpLGCallAction(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 116
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    const-string v0, " sPowerKeyScreenOnInCalling="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    sget-boolean v0, Lcom/android/internal/policy/impl/LGCallAction;->sPowerKeyScreenOnInCalling:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 119
    return-void
.end method

.method ignoreHomeKeyWhileVTRingingOrDialing(I)J
    .locals 2
    .param p1, "policyFlags"    # I

    .prologue
    .line 122
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 123
    const-string v0, "LGCallAction"

    const-string v1, "bypass HOME to phone apk: current VT incoming or dialing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-wide/16 v0, 0x0

    .line 127
    :goto_0
    return-wide v0

    .line 126
    :cond_0
    const-string v0, "LGCallAction"

    const-string v1, "Ignoring HOME; current VT incoming or dialing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method ignoreVolumeLongKeyAtCallScene(IZZI)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "isScreenOn"    # Z
    .param p4, "repeatCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 102
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-ne p1, v1, :cond_2

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :goto_0
    return v0

    .line 107
    :cond_1
    if-eqz p2, :cond_2

    if-lez p4, :cond_2

    if-nez p3, :cond_2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    const-string v1, "LGCallAction"

    const-string v2, " We do not send the volume key on the screen off state!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
