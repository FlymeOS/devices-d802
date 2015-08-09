.class Lcom/android/internal/policy/impl/TouchCrackModeControl;
.super Ljava/lang/Object;
.source "TouchCrackModeControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchCrackModeControl"

.field static mEccMode:Z

.field private static mTouchCrackMode:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHWKeyControlMode:Z

.field private mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mTouchCrackModeObserver:Landroid/os/UEventObserver;

.field mTouchCrackModeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeDownTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pwmEx"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 137
    new-instance v0, Lcom/android/internal/policy/impl/TouchCrackModeControl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchCrackModeControl$1;-><init>(Lcom/android/internal/policy/impl/TouchCrackModeControl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackModeReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/internal/policy/impl/TouchCrackModeControl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchCrackModeControl$2;-><init>(Lcom/android/internal/policy/impl/TouchCrackModeControl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackModeObserver:Landroid/os/UEventObserver;

    .line 35
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->setTouchCrackMode()V

    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.lge.android.intent.action.TOUCHCRACK_MODE_EVENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackModeObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/system/lge_touch/lge_touch0"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 23
    sput p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/TouchCrackModeControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchCrackModeControl;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TouchCrackModeControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchCrackModeControl;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doTelephonyState(ZIZZZ)Z
    .locals 4
    .param p1, "down"    # Z
    .param p2, "keyCode"    # I
    .param p3, "mVolumeDownKeyTriggeredByEx"    # Z
    .param p4, "mVolumeUpKeyTriggeredByEx"    # Z
    .param p5, "result"    # Z

    .prologue
    .line 80
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManagerUtil;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 81
    .local v1, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 83
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    .line 85
    const/16 v2, 0x19

    if-eq p2, v2, :cond_0

    const/16 v2, 0x18

    if-ne p2, v2, :cond_2

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 88
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V

    .line 93
    :cond_1
    :goto_0
    const/4 p5, 0x1

    .line 109
    :cond_2
    :goto_1
    return p5

    .line 90
    :cond_3
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 p5, 0x0

    .line 106
    const-string v2, "TouchCrackModeControl"

    const-string v3, "ITelephony threw RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    .line 97
    const/16 v2, 0x1a

    if-ne p2, v2, :cond_2

    .line 98
    if-eqz p1, :cond_5

    .line 99
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_5
    const/4 p5, 0x1

    goto :goto_1
.end method

.method private sendEccModeIntentOrNot(Z)V
    .locals 2
    .param p1, "keyguardOn"    # Z

    .prologue
    .line 113
    sget-boolean v1, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    if-eqz v1, :cond_1

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.action.LCD_CRASHED_EMERGENCYCALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mPWMEx:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardLw()V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method controlHWKeyAtTouchCrackMode(ZIZZZZ)Z
    .locals 7
    .param p1, "down"    # Z
    .param p2, "keyCode"    # I
    .param p3, "mVolumeDownKeyTriggeredByEx"    # Z
    .param p4, "mVolumeUpKeyTriggeredByEx"    # Z
    .param p5, "isScreenOn"    # Z
    .param p6, "keyguardOn"    # Z

    .prologue
    .line 44
    const/4 v5, 0x0

    .line 45
    .local v5, "result":Z
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z

    if-nez v0, :cond_0

    move v6, v5

    .line 74
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 49
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    if-nez v0, :cond_1

    .line 50
    const/16 v0, 0x19

    if-ne p2, v0, :cond_4

    .line 51
    if-eqz p1, :cond_1

    .line 52
    if-nez p4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mVolumeDownTime:J

    .line 61
    :cond_1
    :goto_1
    if-nez p4, :cond_2

    if-nez p3, :cond_2

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    .line 65
    :cond_2
    sget-boolean v0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    if-nez v0, :cond_3

    if-eqz p5, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mVolumeDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1ea

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mVolumeDownTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mEccMode:Z

    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->doTelephonyState(ZIZZZ)Z

    move-result v5

    .line 73
    invoke-direct {p0, p6}, Lcom/android/internal/policy/impl/TouchCrackModeControl;->sendEccModeIntentOrNot(Z)V

    move v6, v5

    .line 74
    .restart local v6    # "result":I
    goto :goto_0

    .line 54
    .end local v6    # "result":I
    :cond_4
    const/16 v0, 0x18

    if-ne p2, v0, :cond_1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    if-nez p3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mVolumeDownTime:J

    goto :goto_1
.end method

.method dumpTouchCrackMode(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 175
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    const-string v0, " mHWKeyControlMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 178
    return-void
.end method

.method setTouchCrackMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    const-string v0, "ro.boot.lge.lcdbreak_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mHWKeyControlMode:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "sys.lge.touchcrack_mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "sys.lge.touchcrack_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sput v2, Lcom/android/internal/policy/impl/TouchCrackModeControl;->mTouchCrackMode:I

    goto :goto_0
.end method
