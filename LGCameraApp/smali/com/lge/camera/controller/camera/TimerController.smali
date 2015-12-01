.class public Lcom/lge/camera/controller/camera/TimerController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "TimerController.java"


# instance fields
.field private final MSG_INIT_COUNTER:I

.field private final MSG_START_COUNTER:I

.field private final MSG_STOP_COUNTER:I

.field private final TIMER_10SEC:I

.field private final TIMER_3SEC:I

.field private final TIMER_5SEC:I

.field private mCounterView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mInGestureShotActivated:Z

.field private mInTimerShotCountdown:Z

.field private mLEDManager:Lcom/lge/systemservice/core/LEDManager;

.field private mRecord:Lcom/lge/systemservice/core/LGLedRecord;

.field private mTimerBGRotation:Landroid/view/animation/Animation;

.field private mTimerCaptureDelay:I

.field private mTimerCaptureMode:I

.field private mTimerCountDown:Ljava/util/Timer;

.field private mTimerLedEnabled:I

.field private timerDrawable:[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 5
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 41
    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_INIT_COUNTER:I

    .line 42
    iput v2, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_START_COUNTER:I

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->MSG_STOP_COUNTER:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->TIMER_3SEC:I

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->TIMER_5SEC:I

    .line 46
    iput v4, p0, Lcom/lge/camera/controller/camera/TimerController;->TIMER_10SEC:I

    .line 48
    new-instance v0, Lcom/lge/camera/controller/camera/TimerController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/TimerController$1;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Landroid/os/Handler;

    .line 70
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 71
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    .line 72
    iput-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 75
    iput-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 76
    iput-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 80
    iput v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    .line 345
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->timerDrawable:[I

    .line 84
    iput-boolean v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mInit:Z

    .line 85
    return-void

    .line 345
    :array_0
    .array-data 4
        0x7f0204aa
        0x7f0204ac
        0x7f0204ad
        0x7f0204ae
        0x7f0204af
        0x7f0204b0
        0x7f0204b1
        0x7f0204b2
        0x7f0204b3
        0x7f0204ab
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/camera/TimerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return p1
.end method

.method static synthetic access$210(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/TimerController;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/camera/controller/camera/TimerController;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/TimerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->stopLEDForTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/TimerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/TimerController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/TimerController;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private initEmotionalLEDForTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "CameraApp"

    const-string v1, "Initialize Emotional LED"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emotional_led_back_camera_timer_noti"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    .line 122
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    if-eq v0, v2, :cond_1

    .line 123
    const-string v0, "CameraApp"

    const-string v1, "Timer LED Setting is disabled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Lcom/lge/systemservice/core/LGContext;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v1, "emotionled"

    invoke-virtual {v0, v1}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/systemservice/core/LEDManager;

    check-cast v0, Lcom/lge/systemservice/core/LEDManager;

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    .line 129
    new-instance v0, Lcom/lge/systemservice/core/LGLedRecord;

    invoke-direct {v0}, Lcom/lge/systemservice/core/LGLedRecord;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    .line 130
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->priority:I

    .line 131
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    iput v2, v0, Lcom/lge/systemservice/core/LGLedRecord;->flags:I

    .line 132
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const/4 v1, 0x2

    iput v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->whichLedPlay:I

    .line 133
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const-string v1, "CameraTimer3s.txt"

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_2
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 138
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const-string v1, "CameraTimer3s.txt"

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    goto :goto_0

    .line 141
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const-string v1, "CameraTimer5s.txt"

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    goto :goto_0

    .line 144
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    const-string v1, "CameraTimer10s.txt"

    iput-object v1, v0, Lcom/lge/systemservice/core/LGLedRecord;->patternFilePath:Ljava/lang/String;

    goto :goto_0

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method

.method private startLEDForTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    if-ne v0, v2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is started"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/LEDManager;->stopPattern(Ljava/lang/String;I)I

    .line 161
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mRecord:Lcom/lge/systemservice/core/LGLedRecord;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/systemservice/core/LEDManager;->startPattern(Ljava/lang/String;ILcom/lge/systemservice/core/LGLedRecord;)I

    .line 165
    :cond_0
    return-void
.end method

.method private stopLEDForTimer()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportEmotionalLED()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerLedEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "CameraApp"

    const-string v1, "Emotioinal LED is stopped"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mLEDManager:Lcom/lge/systemservice/core/LEDManager;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/systemservice/core/LEDManager;->stopPattern(Ljava/lang/String;I)I

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public addMsgArg(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg"    # I

    .prologue
    .line 500
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 501
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 502
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 503
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 504
    return-void
.end method

.method public displayInitCounter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 302
    const/4 v3, 0x0

    .line 304
    .local v3, "resId":I
    const-string v4, "CameraApp"

    const-string v5, "init counter"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 307
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d00df

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 308
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 309
    const-string v4, "CameraApp"

    const-string v5, " mCounterView is null."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "animation"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.Rotate"

    invoke-interface {v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 321
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_2
    const/4 v3, 0x0

    .line 325
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 326
    const v3, 0x7f0204af

    .line 333
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    if-eqz v4, :cond_4

    .line 334
    const v3, 0x7f0204ad

    .line 337
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d0231

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    .line 338
    .local v2, "iv_timer_num":Lcom/lge/camera/components/RotateImageView;
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 339
    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 342
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    goto :goto_0

    .line 315
    .end local v2    # "iv_timer_num":Lcom/lge/camera/components/RotateImageView;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 328
    const v3, 0x7f0204ad

    goto :goto_2

    .line 329
    :cond_7
    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 330
    const v3, 0x7f0204ab

    goto :goto_2
.end method

.method public displayStartCounter(I)V
    .locals 6
    .param p1, "timerCapturedDelay"    # I

    .prologue
    const/4 v5, 0x0

    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "resId":I
    const-string v3, "CameraApp"

    const-string v4, "start counter"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 365
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timer task (count down) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 372
    if-lez p1, :cond_0

    .line 373
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->timerDrawable:[I

    add-int/lit8 v4, p1, -0x1

    aget v2, v3, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 385
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0231

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 386
    .local v1, "iv_timer_num":Lcom/lge/camera/components/RotateImageView;
    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 389
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 391
    .end local v1    # "iv_timer_num":Lcom/lge/camera/components/RotateImageView;
    :cond_1
    :goto_1
    return-void

    .line 369
    :pswitch_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "CameraApp"

    const-string v4, "ArrayIndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "CameraApp"

    const-string v4, "IndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public displayStopCounter()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 394
    const-string v3, "CameraApp"

    const-string v4, "stop counter"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    if-eqz v3, :cond_1

    .line 401
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 403
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    .line 404
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    .line 405
    .local v1, "focusState":I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "go take a picture:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "flashMode":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportGuideFlash()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "manual"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eq v1, v8, :cond_3

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    if-eq v1, v6, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    .line 416
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "auto"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 418
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 419
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 420
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v3, "1"

    const-string v4, "is-lowlight"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 421
    const-string v3, "CameraApp"

    const-string v4, "doFocus : Flash auto and is-lowlight = 1"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 423
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    .line 424
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 441
    .end local v0    # "flashMode":Ljava/lang/String;
    .end local v1    # "focusState":I
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_0
    return-void

    .line 429
    .restart local v0    # "flashMode":Ljava/lang/String;
    .restart local v1    # "focusState":I
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "doFocus : Flash on or auto"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 431
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    .line 432
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_3
    if-eq v1, v6, :cond_4

    if-ne v1, v8, :cond_5

    .line 436
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 438
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.TakePicture"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 439
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    goto :goto_0
.end method

.method public getTimerCaptureDelay()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    return v0
.end method

.method public isGestureShotActivated()Z
    .locals 3

    .prologue
    .line 469
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGestureShotActivated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    return v0
.end method

.method public isTimerShotCountdown()Z
    .locals 3

    .prologue
    .line 459
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTimerShotCountdown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 456
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInit:Z

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->stopTimerShot()Z

    .line 448
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onPause()V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 451
    return-void
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    .line 90
    return-void
.end method

.method public setGestureShotActivated(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 474
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGestureShotActivated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    .line 476
    return-void
.end method

.method public setTimerSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 100
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->initEmotionalLEDForTimer()V

    .line 102
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/TimerController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/TimerController$2;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public setTimerShotCountdown(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 464
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimerShotCountdown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 466
    return-void
.end method

.method public startTimerShot()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    const-string v0, "CameraApp"

    const-string v4, "startTimerShot()"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v4, 0x7f040000

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 187
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "face_tracking"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "manual"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 197
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 199
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    if-eqz v0, :cond_2

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 201
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->initEmotionalLEDForTimer()V

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget v4, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->playTimerSound(I)V

    .line 204
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->startLEDForTimer()V

    .line 205
    iput-boolean v7, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 206
    new-instance v0, Ljava/util/Timer;

    const-string v4, "timer_countdown"

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 207
    new-instance v1, Lcom/lge/camera/controller/camera/TimerController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/TimerController$3;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    .line 231
    .local v1, "taskCountDown":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 234
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 238
    :cond_3
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    invoke-virtual {p0, v6, v0}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    .line 239
    iget v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 240
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v4, 0x8

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 242
    return-void
.end method

.method public stopTimerShot()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    const-string v1, "CameraApp"

    const-string v2, "stopTimerShot()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Z
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/TimerController;->timerAnimation(Z)V

    .line 252
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    if-eqz v1, :cond_6

    .line 254
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mCounterView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 259
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 261
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCountDown:Ljava/util/Timer;

    .line 263
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/TimerController;->stopLEDForTimer()V

    .line 265
    :cond_1
    iget v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureMode:I

    iput v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerCaptureDelay:I

    .line 267
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInTimerShotCountdown:Z

    .line 269
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 273
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 277
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/lge/camera/controller/camera/TimerController;->addMsgArg(II)V

    .line 278
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 281
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 282
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 284
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 285
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 287
    :cond_5
    const/4 v0, 0x1

    .line 290
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/camera/TimerController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camera/TimerController$4;-><init>(Lcom/lge/camera/controller/camera/TimerController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/TimerController;->mInGestureShotActivated:Z

    .line 297
    return v0
.end method

.method public timerAnimation(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/TimerController;->checkMediator()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0232

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 483
    .local v0, "iv":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 484
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    .line 488
    :cond_2
    if-eqz p1, :cond_3

    .line 489
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageView;->clearAnimation()V

    .line 490
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/lge/camera/controller/camera/TimerController;->mTimerBGRotation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageView;->clearAnimation()V

    goto :goto_0
.end method
