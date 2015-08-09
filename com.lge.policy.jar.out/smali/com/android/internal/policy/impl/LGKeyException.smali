.class Lcom/android/internal/policy/impl/LGKeyException;
.super Ljava/lang/Object;
.source "LGKeyException.java"


# static fields
.field private static final DEBUG_KEY_EXCEPTION:Z = false

.field private static final TAG:Ljava/lang/String; = "LGKeyException"

.field static sIsUpdatedKeyExceptionWinState:Z

.field static sKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;


# instance fields
.field private SPC_ERR_FREEZE:Z

.field private mContext:Landroid/content/Context;

.field mForceGoToSleep:Ljava/lang/Runnable;

.field private mForceGoToSleepException:Z

.field private mHandler:Landroid/os/Handler;

.field private mHomeKeyExceptionInECMMode:Z

.field private mIsMLTKeyLoggingSupport:Z

.field private mIsUseSpc:Z

.field protected mPowerLongGlobalActionOnScreenOff:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRearSideKeyEnable:Z

.field private mScreenOffKey:Z

.field private mScreenOffKeyIntent:Landroid/content/Intent;

.field private mVolumeDownToScreenOn:Z

.field spcErrReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LGKeyException;->sIsUpdatedKeyExceptionWinState:Z

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/LGKeyException;->sKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mScreenOffKey:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGKeyException;->mVolumeDownToScreenOn:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGKeyException;->mHomeKeyExceptionInECMMode:Z

    .line 46
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGKeyException;->SPC_ERR_FREEZE:Z

    .line 47
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGKeyException;->mIsUseSpc:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGKeyException;->mRearSideKeyEnable:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGKeyException;->mForceGoToSleepException:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mIsMLTKeyLoggingSupport:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mPowerLongGlobalActionOnScreenOff:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mPowerManager:Landroid/os/PowerManager;

    .line 160
    new-instance v0, Lcom/android/internal/policy/impl/LGKeyException$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGKeyException$1;-><init>(Lcom/android/internal/policy/impl/LGKeyException;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->spcErrReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    new-instance v0, Lcom/android/internal/policy/impl/LGKeyException$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGKeyException$2;-><init>(Lcom/android/internal/policy/impl/LGKeyException;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mForceGoToSleep:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_home_key_exception_in_ecm_mode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mHomeKeyExceptionInECMMode:Z

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_volume_down_turn_on_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mVolumeDownToScreenOn:Z

    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_rearside_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mRearSideKeyEnable:Z

    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_spc_check:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mIsUseSpc:Z

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_off_power_long_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mPowerLongGlobalActionOnScreenOff:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LGKeyException;->mForceGoToSleepException:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mHandler:Landroid/os/Handler;

    .line 78
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LGKeyException;->initScreenOffKeyIntent()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LGKeyException;->registerSPCErrReceiver(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LGKeyException;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGKeyException;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGKeyException;->SPC_ERR_FREEZE:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LGKeyException;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/LGKeyException;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private initScreenOffKeyIntent()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mScreenOffKey:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.SCREEN_OFF_KEY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mScreenOffKeyIntent:Landroid/content/Intent;

    .line 186
    :cond_0
    return-void
.end method

.method private isPossibleWindowLayout(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 98
    if-lt p1, v0, :cond_2

    const/16 v1, 0x63

    if-gt p1, v1, :cond_2

    .line 101
    .local v0, "applyWindow":Z
    :goto_0
    const/16 v1, 0x7e7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7df

    if-eq p1, v1, :cond_0

    const/16 v1, 0x7d9

    if-ne p1, v1, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x1

    .line 105
    :cond_1
    return v0

    .line 98
    .end local v0    # "applyWindow":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isThereKeyExceptionBit(I)I
    .locals 5
    .param p0, "keyExceptionBit"    # I

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "result":I
    sget-object v2, Lcom/android/internal/policy/impl/LGKeyException;->sKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/policy/impl/LGKeyException;->sKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 89
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-eqz v0, :cond_0

    .line 90
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v1, v2, p0

    .line 91
    const-string v2, "LGKeyException"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyException privateFlags: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Current Input bit: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return v1

    .line 88
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVolumeKey(I)Z
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 222
    sparse-switch p1, :sswitch_data_0

    .line 228
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 226
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAudioStopNotificationIntent(ZI)V
    .locals 3
    .param p1, "down"    # Z
    .param p2, "keyCode"    # I

    .prologue
    .line 235
    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/LGKeyException;->isVolumeKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1a

    if-ne p2, v1, :cond_2

    .line 236
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "LGKeyException"

    const-string v2, "interceptKeyBeforeQueueing: Stop notification sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.media.STOP_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 242
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private sendMLTKeycodeIntent(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.MLT_KEY_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "mltIntent":Landroid/content/Intent;
    const-string v1, "com.lge.intent.extra.MLT_KEY_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.lge.permission.MLT"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private sendScreenOffKeyIntent(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mScreenOffKeyIntent:Landroid/content/Intent;

    const-string v1, "com.lge.intent.extra.SCREEN_OFF_KEY_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mScreenOffKeyIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 191
    return-void
.end method


# virtual methods
.method bypassKeyExceptionStatus(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 130
    invoke-static {p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->isNavigationBarKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, -0x80000000

    invoke-static {v1}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    if-ne p1, v2, :cond_2

    const/high16 v1, 0x200000

    invoke-static {v1}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    :cond_2
    const/16 v1, 0x53

    if-ne p1, v1, :cond_3

    const/high16 v1, 0x1000000

    invoke-static {v1}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :cond_3
    const/16 v1, 0xa5

    if-eq p1, v1, :cond_4

    const/16 v1, 0xab

    if-ne p1, v1, :cond_5

    :cond_4
    const/high16 v1, 0x20000000

    invoke-static {v1}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :cond_5
    const/16 v1, 0xbb

    if-ne p1, v1, :cond_6

    const/high16 v1, 0x800000

    invoke-static {v1}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :cond_6
    const/16 v1, 0xa6

    if-ne p1, v1, :cond_7

    const/high16 v1, 0x4000000

    invoke-static {v1}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mHomeKeyExceptionInECMMode:Z

    if-eqz v1, :cond_8

    .line 151
    if-ne p1, v2, :cond_8

    const-string v1, "true"

    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 153
    const-string v1, "LGKeyException"

    const-string v2, "Emergency callback mode, HOME KEY is passed to app"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bypassKeySPCErrFreeze()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 167
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mIsUseSpc:Z

    if-ne v1, v0, :cond_0

    .line 168
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->SPC_ERR_FREEZE:Z

    if-ne v1, v0, :cond_0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canBypassHomeKey()Z
    .locals 2

    .prologue
    .line 201
    const/high16 v0, -0x7fe00000

    invoke-static {v0}, Lcom/android/internal/policy/impl/LGKeyException;->isThereKeyExceptionBit(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "LGKeyException"

    const-string v1, "Home key is passed to app."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dumpLGKeyException(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 279
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    const-string v0, " mHomeKeyExceptionInECMMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mHomeKeyExceptionInECMMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 282
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    const-string v0, " mVolumeDownToScreenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mVolumeDownToScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string v0, " mRearSideKeyEnable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mRearSideKeyEnable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 288
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    const-string v0, " mScreenOffKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mScreenOffKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 291
    return-void
.end method

.method forceGoToSleep()V
    .locals 4

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/policy/impl/SensorUtil;->setSensorEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mForceGoToSleep:Ljava/lang/Runnable;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    return-void
.end method

.method interceptKeyPreprocessingBeforeQueueing(ZIZ)V
    .locals 1
    .param p1, "down"    # Z
    .param p2, "keyCode"    # I
    .param p3, "interactive"    # Z

    .prologue
    .line 210
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 211
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/LGKeyException;->sendScreenOffKeyIntent(I)V

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mIsMLTKeyLoggingSupport:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 215
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/LGKeyException;->sendMLTKeycodeIntent(I)V

    .line 218
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LGKeyException;->sendAudioStopNotificationIntent(ZI)V

    .line 219
    return-void
.end method

.method isForceGoToSleepAvaliable(Z)Z
    .locals 2
    .param p1, "interactive"    # Z

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mRearSideKeyEnable:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/impl/SmartCoverUtil;->mViewCoverClosed:Z

    if-nez v1, :cond_0

    const-string v1, "sys.allautotest.run"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mForceGoToSleepException:Z

    if-nez v1, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :cond_0
    return v0
.end method

.method isVolumeDownToScreenOnAvailable()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGKeyException;->mVolumeDownToScreenOn:Z

    return v0
.end method

.method registerSPCErrReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mIsUseSpc:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.android.intent.action.EXCESS_SPC_FAIL_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LGKeyException;->spcErrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method setForceGoToSleepAvaliableException(Z)V
    .locals 0
    .param p1, "forceGoToSleepException"    # Z

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LGKeyException;->mForceGoToSleepException:Z

    .line 246
    return-void
.end method

.method setKeyExceptionWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 116
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LGKeyException;->isPossibleWindowLayout(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/LGKeyException;->sIsUpdatedKeyExceptionWinState:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "PointerLocation"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sput-object p1, Lcom/android/internal/policy/impl/LGKeyException;->sKeyExceptionWinState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/LGKeyException;->sIsUpdatedKeyExceptionWinState:Z

    .line 127
    :cond_0
    return-void
.end method
