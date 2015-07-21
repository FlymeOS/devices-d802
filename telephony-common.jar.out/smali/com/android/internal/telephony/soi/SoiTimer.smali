.class public Lcom/android/internal/telephony/soi/SoiTimer;
.super Ljava/lang/Object;
.source "SoiTimer.java"


# static fields
.field private static final MSG_INVOKE_MO_ACK_TIMER_DURATION:I = 0x3e8

.field private static final MSG_INVOKE_MT_TIMER_DURATION:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SoiTimer"

.field private static sInstance:Lcom/android/internal/telephony/soi/SoiTimer;


# instance fields
.field private mInvokeMOAckTimerId:I

.field private mInvokeMTTimerId:I

.field private mInvokeSMMAAckTimerId:I

.field private mMoIntervalTimerId:I

.field private mMoSMMATimerId:I

.field private mMoTimerId:I

.field private mMtTimerId:I

.field private mTR1MSMMATimerId:I

.field private mTR1MTimerId:I

.field private mTR2MTimerId:I

.field private mTRAMTimerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/soi/SoiTimer;->sInstance:Lcom/android/internal/telephony/soi/SoiTimer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoTimerId:I

    .line 29
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoIntervalTimerId:I

    .line 30
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoSMMATimerId:I

    .line 31
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMtTimerId:I

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR1MTimerId:I

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR1MSMMATimerId:I

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR2MTimerId:I

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTRAMTimerId:I

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeMTTimerId:I

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeMOAckTimerId:I

    .line 42
    iput v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeSMMAAckTimerId:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/soi/SoiTimer;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/android/internal/telephony/soi/SoiTimer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/soi/SoiTimer;->sInstance:Lcom/android/internal/telephony/soi/SoiTimer;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/internal/telephony/soi/SoiTimer;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/SoiTimer;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/SoiTimer;->sInstance:Lcom/android/internal/telephony/soi/SoiTimer;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/soi/SoiTimer;->sInstance:Lcom/android/internal/telephony/soi/SoiTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSpec()Lcom/android/internal/telephony/soi/Spec;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/SoiManager;->getSpec()Lcom/android/internal/telephony/soi/Spec;

    move-result-object v0

    return-object v0
.end method

.method private getTimeoutByType(I)I
    .locals 5
    .param p1, "timerType"    # I

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/SoiTimer;->getSpec()Lcom/android/internal/telephony/soi/Spec;

    move-result-object v1

    .line 218
    .local v1, "spec":Lcom/android/internal/telephony/soi/Spec;
    const/4 v0, 0x0

    .line 220
    .local v0, "nTimeOut":I
    sparse-switch p1, :sswitch_data_0

    .line 250
    sget v0, Lcom/android/internal/telephony/soi/IRelay;->TR2M_TIMEOUT_VALUE:I

    .line 251
    const-string v2, "SoiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimeoutByType() Invalid timerType, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/SoiTimer;->timerToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return v0

    .line 222
    :sswitch_0
    const v0, 0xea60

    .line 223
    goto :goto_0

    .line 225
    :sswitch_1
    const/16 v0, 0x4e20

    .line 226
    goto :goto_0

    .line 228
    :sswitch_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/Spec;->getRetryIntervalTime()I

    move-result v0

    .line 229
    goto :goto_0

    .line 231
    :sswitch_3
    sget v0, Lcom/android/internal/telephony/soi/IRelay;->TR1M_TIMEOUT_VALUE:I

    .line 232
    goto :goto_0

    .line 234
    :sswitch_4
    const/16 v0, 0x7530

    .line 235
    goto :goto_0

    .line 237
    :sswitch_5
    sget v0, Lcom/android/internal/telephony/soi/IRelay;->TR2M_TIMEOUT_VALUE:I

    .line 238
    goto :goto_0

    .line 242
    :sswitch_6
    const/16 v0, 0xfa0

    .line 243
    goto :goto_0

    .line 247
    :sswitch_7
    const/16 v0, 0x3e8

    .line 248
    goto :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_5
        0xcb -> :sswitch_4
        0x3e9 -> :sswitch_6
        0x44c -> :sswitch_7
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_6
        0x834 -> :sswitch_7
        0x835 -> :sswitch_7
    .end sparse-switch
.end method

.method private getTimerId(IZ)I
    .locals 4
    .param p1, "timerType"    # I
    .param p2, "isSMMA"    # Z

    .prologue
    const/4 v1, 0x1

    .line 167
    const/4 v0, -0x1

    .line 168
    .local v0, "nTimerId":I
    sparse-switch p1, :sswitch_data_0

    .line 210
    const-string v1, "SoiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimerId() Invalid timerType, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/SoiTimer;->timerToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return v0

    .line 170
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 171
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoSMMATimerId:I

    goto :goto_0

    .line 173
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoTimerId:I

    .line 175
    goto :goto_0

    .line 177
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMtTimerId:I

    .line 178
    goto :goto_0

    .line 180
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoIntervalTimerId:I

    .line 181
    goto :goto_0

    .line 183
    :sswitch_3
    if-ne p2, v1, :cond_1

    .line 184
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR1MSMMATimerId:I

    goto :goto_0

    .line 186
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR1MTimerId:I

    .line 188
    goto :goto_0

    .line 190
    :sswitch_4
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTRAMTimerId:I

    .line 191
    goto :goto_0

    .line 193
    :sswitch_5
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR2MTimerId:I

    .line 194
    goto :goto_0

    .line 199
    :sswitch_6
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeMTTimerId:I

    .line 200
    goto :goto_0

    .line 203
    :sswitch_7
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeMOAckTimerId:I

    .line 204
    goto :goto_0

    .line 206
    :sswitch_8
    iget v0, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeSMMAAckTimerId:I

    .line 207
    goto :goto_0

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_5
        0xcb -> :sswitch_4
        0x3e9 -> :sswitch_6
        0x44c -> :sswitch_7
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_6
        0x834 -> :sswitch_7
        0x835 -> :sswitch_8
    .end sparse-switch
.end method

.method private initTimerId(IZ)V
    .locals 1
    .param p1, "timerType"    # I
    .param p2, "isSMMA"    # Z

    .prologue
    .line 114
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/soi/SoiTimer;->setTimerId(IIZ)V

    .line 115
    return-void
.end method

.method private setTimerId(IIZ)V
    .locals 3
    .param p1, "timerType"    # I
    .param p2, "nTimerId"    # I
    .param p3, "isSMMA"    # Z

    .prologue
    const/4 v0, 0x1

    .line 118
    sparse-switch p1, :sswitch_data_0

    .line 160
    const-string v0, "SoiTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimerId() Invalid timerType, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/SoiTimer;->timerToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 120
    :sswitch_0
    if-ne p3, v0, :cond_0

    .line 121
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoSMMATimerId:I

    goto :goto_0

    .line 123
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoTimerId:I

    goto :goto_0

    .line 127
    :sswitch_1
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMtTimerId:I

    goto :goto_0

    .line 130
    :sswitch_2
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mMoIntervalTimerId:I

    goto :goto_0

    .line 133
    :sswitch_3
    if-ne p3, v0, :cond_1

    .line 134
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR1MSMMATimerId:I

    goto :goto_0

    .line 136
    :cond_1
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR1MTimerId:I

    goto :goto_0

    .line 140
    :sswitch_4
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTRAMTimerId:I

    goto :goto_0

    .line 143
    :sswitch_5
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mTR2MTimerId:I

    goto :goto_0

    .line 149
    :sswitch_6
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeMTTimerId:I

    goto :goto_0

    .line 153
    :sswitch_7
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeMOAckTimerId:I

    goto :goto_0

    .line 156
    :sswitch_8
    iput p2, p0, Lcom/android/internal/telephony/soi/SoiTimer;->mInvokeSMMAAckTimerId:I

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_5
        0xcb -> :sswitch_4
        0x3e9 -> :sswitch_6
        0x44c -> :sswitch_7
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_6
        0x834 -> :sswitch_7
        0x835 -> :sswitch_8
    .end sparse-switch
.end method

.method private timerToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "timerID"    # I

    .prologue
    .line 257
    sparse-switch p1, :sswitch_data_0

    .line 281
    const-string v0, "SoiTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid timerID, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "invalid"

    :goto_0
    return-object v0

    .line 259
    :sswitch_0
    const-string v0, "MSG_MO_TIMER"

    goto :goto_0

    .line 261
    :sswitch_1
    const-string v0, "MSG_WAIT_FOR_MT_ACK_TIMER"

    goto :goto_0

    .line 263
    :sswitch_2
    const-string v0, "MSG_MO_RETRY_INTERVAL_TIMER"

    goto :goto_0

    .line 265
    :sswitch_3
    const-string v0, "TR1M_TIMER"

    goto :goto_0

    .line 267
    :sswitch_4
    const-string v0, "TR2M_TIMER"

    goto :goto_0

    .line 269
    :sswitch_5
    const-string v0, "TRAM_TIMER"

    goto :goto_0

    .line 272
    :sswitch_6
    const-string v0, "MSG_INVOKE_MT"

    goto :goto_0

    .line 274
    :sswitch_7
    const-string v0, "MSG_INVOKE_MT_CONCAT"

    goto :goto_0

    .line 277
    :sswitch_8
    const-string v0, "MSG_INVOKE_MT"

    goto :goto_0

    .line 279
    :sswitch_9
    const-string v0, "MSG_INVOKE_SMMA_ACK"

    goto :goto_0

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
        0x3e9 -> :sswitch_6
        0x44c -> :sswitch_8
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_7
        0x834 -> :sswitch_8
        0x835 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "timerType"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "isSMMA"    # Z

    .prologue
    .line 64
    invoke-static {}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->getInstance()Lcom/android/internal/telephony/soi/AlarmTimerManager;

    move-result-object v0

    .line 65
    .local v0, "atm":Lcom/android/internal/telephony/soi/AlarmTimerManager;
    const-string v2, "SoiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAlarmTimer timerType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/soi/SoiTimer;->timerToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    isSMMA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v1, -0x1

    .line 67
    .local v1, "timerId":I
    if-nez v0, :cond_0

    .line 68
    const-string v2, "SoiTimer"

    const-string v3, "AlamTimerManager is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->getInstance()Lcom/android/internal/telephony/soi/AlarmTimerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->getTimerId()I

    move-result v1

    .line 73
    invoke-direct {p0, p2, v1, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->setTimerId(IIZ)V

    .line 75
    if-gtz v1, :cond_1

    .line 76
    const-string v2, "SoiTimer"

    const-string v3, "startTimer timer id is invalid"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->registerForTimerExpired(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/soi/SoiTimer;->getTimeoutByType(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->startTimer(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 84
    const-string v2, "SoiTimer"

    const-string v3, "Starting a recovery timer failed"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v2, "SoiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timer:: setAlarmTimer() :: timer type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/soi/SoiTimer;->timerToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->getTimerId(IZ)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/soi/SoiTimer;->getTimeoutByType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAlarmTimer(Landroid/os/Handler;ZIZ)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "stopRequired"    # Z
    .param p3, "timerType"    # I
    .param p4, "isSMMA"    # Z

    .prologue
    .line 91
    const-string v2, "SoiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopAlarmTimer timerType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/soi/SoiTimer;->timerToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    isSMMA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->getTimerId(IZ)I

    move-result v1

    .line 93
    .local v1, "timerId":I
    if-gtz v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v2, "SoiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timer:: stopAlarmTimer :: timerType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/soi/SoiTimer;->timerToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    isSMMA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->getInstance()Lcom/android/internal/telephony/soi/AlarmTimerManager;

    move-result-object v0

    .line 98
    .local v0, "atm":Lcom/android/internal/telephony/soi/AlarmTimerManager;
    if-nez v0, :cond_1

    .line 99
    const-string v2, "SoiTimer"

    const-string v3, "AlamTimerManager is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    if-eqz p2, :cond_2

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->stopTimer(I)V

    .line 105
    :cond_2
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->unregisterForTimerExpired(ILandroid/os/Handler;)V

    .line 106
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->initTimerId(IZ)V

    goto :goto_0
.end method
