.class public Lcom/android/internal/telephony/soi/AlarmTimerManager;
.super Ljava/lang/Object;
.source "AlarmTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_TIMER:Ljava/lang/String; = "com.lge.sms.soi.action.ALARM_TIMER"

.field private static final EXTRA_PARAM_TIMERID:Ljava/lang/String; = "timerId"

.field private static final MAX_TIMER_ID:I = 0x7fffffff

.field private static final MIN_TIMER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmTimerManager"

.field private static sAlarmTimerManager:Lcom/android/internal/telephony/soi/AlarmTimerManager;


# instance fields
.field private mAlarmTimerReceiver:Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;

.field private mContext:Landroid/content/Context;

.field private mTimerExpiredListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field

.field private mTimerIdForUniqueness:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mAlarmTimerReceiver:Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;

    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerIdForUniqueness:I

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/soi/AlarmTimerManager;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/soi/AlarmTimerManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;

    return-object v0
.end method

.method private getAlarmMngr()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/soi/AlarmTimerManager;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/android/internal/telephony/soi/AlarmTimerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->sAlarmTimerManager:Lcom/android/internal/telephony/soi/AlarmTimerManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/internal/telephony/soi/AlarmTimerManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/AlarmTimerManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->sAlarmTimerManager:Lcom/android/internal/telephony/soi/AlarmTimerManager;

    .line 53
    sget-object v0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->sAlarmTimerManager:Lcom/android/internal/telephony/soi/AlarmTimerManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->init()V

    .line 56
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->sAlarmTimerManager:Lcom/android/internal/telephony/soi/AlarmTimerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getTimerId()I
    .locals 6

    .prologue
    const v5, 0x7fffffff

    .line 61
    const-string v3, "AlarmTimerManager"

    const-string v4, "getTimerId"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, -0x1

    .line 63
    .local v0, "allocatedTimerId":I
    iget v2, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerIdForUniqueness:I

    .line 64
    .local v2, "timerId":I
    const/4 v1, 0x0

    .line 67
    .local v1, "registrant":Landroid/os/Registrant;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "registrant":Landroid/os/Registrant;
    check-cast v1, Landroid/os/Registrant;

    .line 69
    .restart local v1    # "registrant":Landroid/os/Registrant;
    if-nez v1, :cond_2

    .line 70
    move v0, v2

    .line 85
    :goto_1
    if-lez v0, :cond_1

    .line 86
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerIdForUniqueness:I

    .line 87
    iget v3, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerIdForUniqueness:I

    if-ne v3, v5, :cond_1

    .line 88
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerIdForUniqueness:I

    .line 92
    :cond_1
    return v0

    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 76
    if-ne v2, v5, :cond_3

    .line 77
    const/4 v2, 0x1

    goto :goto_0

    .line 78
    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerIdForUniqueness:I

    if-ne v2, v3, :cond_0

    .line 80
    const-string v3, "AlarmTimerManager"

    const-string v4, "There is no available timer id"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public init()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "AlarmTimerManager"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiContext;->getInstance()Lcom/android/internal/telephony/soi/SoiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/SoiContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 151
    const-string v0, "AlarmTimerManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;-><init>(Lcom/android/internal/telephony/soi/AlarmTimerManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mAlarmTimerReceiver:Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mAlarmTimerReceiver:Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mAlarmTimerReceiver:Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/AlarmTimerManager$AlarmTimerReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public registerForTimerExpired(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "timerId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 96
    const-string v0, "AlarmTimerManager"

    const-string v1, "registerForTimerExpired"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/os/Registrant;

    invoke-direct {v3, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startTimer(IJ)Z
    .locals 8
    .param p1, "timerId"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v4, "AlarmTimerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTimer() :: timerId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->getAlarmMngr()Landroid/app/AlarmManager;

    move-result-object v0

    .line 113
    .local v0, "am":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 114
    const-string v4, "AlarmTimerManager"

    const-string v5, "AlarmManager is null"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return v3

    .line 118
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.sms.soi.action.ALARM_TIMER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "timerId"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    iget-object v4, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 124
    .local v2, "sender":Landroid/app/PendingIntent;
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 125
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public stopTimer(I)V
    .locals 6
    .param p1, "timerId"    # I

    .prologue
    .line 129
    const-string v3, "AlarmTimerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopTimer() :: timerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/AlarmTimerManager;->getAlarmMngr()Landroid/app/AlarmManager;

    move-result-object v0

    .line 133
    .local v0, "am":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 134
    const-string v3, "AlarmTimerManager"

    const-string v4, "AlarmManager is null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lge.sms.soi.action.ALARM_TIMER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "timerId"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 143
    .local v2, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public unregisterForTimerExpired(ILandroid/os/Handler;)V
    .locals 3
    .param p1, "timerId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 103
    const-string v0, "AlarmTimerManager"

    const-string v1, "unregisterForTimerExpired"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/soi/AlarmTimerManager;->mTimerExpiredListeners:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
