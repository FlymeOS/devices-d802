.class public Lcom/android/server/notification/DowntimeConditionProvider;
.super Landroid/service/notification/ConditionProviderService;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/DowntimeConditionProvider$Callback;
    }
.end annotation


# static fields
.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final ENTER_ACTION:Ljava/lang/String; = "DowntimeConditions.enter"

.field private static final ENTER_CODE:I = 0x64

.field private static final EXIT_ACTION:Ljava/lang/String; = "DowntimeConditions.exit"

.field private static final EXIT_CODE:I = 0x65

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final TAG:Ljava/lang/String; = "DowntimeConditions"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInDowntime:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "DowntimeConditions"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    .line 63
    iput-object p0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    .line 279
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DowntimeConditionProvider$1;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    const-string v1, "new DowntimeConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/DowntimeConditionProvider;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    return-void
.end method

.method private addDays(JI)J
    .locals 3
    .param p1, "time"    # J
    .param p3, "days"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 249
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 250
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private fireDowntimeChanged()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-interface {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider$Callback;->onDowntimeChanged(Z)V

    .line 225
    :cond_0
    return-void
.end method

.method private getDayOfWeek(J)I
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 235
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getTime(JII)J
    .locals 3
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 240
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 241
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 242
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 243
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 244
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateDays()V

    .line 178
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->reevaluateDowntime()V

    .line 179
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarms()V

    .line 180
    return-void
.end method

.method private isInDowntime(IJJJ)Z
    .locals 4
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .prologue
    .line 204
    const/4 v1, 0x7

    .line 205
    .local v1, "n":I
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/DowntimeConditionProvider;->getDayOfWeek(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v2, 0x1

    .line 206
    .local v0, "day":I
    invoke-direct {p0, p4, p5, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide p4

    .line 207
    invoke-direct {p0, p6, p7, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide p6

    .line 208
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    cmp-long v2, p2, p4

    if-ltz v2, :cond_0

    cmp-long v2, p2, p6

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInDowntime(J)Z
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v8

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v4

    .line 195
    .local v4, "start":J
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v6

    .line 196
    .local v6, "end":J
    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 197
    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    .line 198
    invoke-direct {p0, v6, v7, v9}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide v6

    .line 200
    :cond_2
    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(IJJJ)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    move v1, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v9

    :goto_1
    move v8, v0

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_1
.end method

.method private reevaluateDowntime()V
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime(J)Z

    move-result v0

    .line 213
    .local v0, "inDowntime":Z
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DowntimeConditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inDowntime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-ne v0, v1, :cond_1

    .line 219
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    const-string v1, "Entering"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " downtime"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    .line 217
    iget-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->getDayOfWeek(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceDowntime(ZILandroid/util/ArraySet;)V

    .line 218
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->fireDowntimeChanged()V

    goto :goto_0

    .line 215
    :cond_2
    const-string v1, "Exiting"

    goto :goto_1
.end method

.method private static ts(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAlarm(Ljava/lang/String;III)V
    .locals 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .prologue
    .line 254
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 255
    .local v2, "alarms":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 256
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 257
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    move/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 258
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    move/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 259
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 260
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 261
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 262
    .local v6, "time":J
    cmp-long v8, v6, v4

    if-gtz v8, :cond_0

    .line 263
    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/notification/DowntimeConditionProvider;->addDays(JI)J

    move-result-wide v6

    .line 265
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "time"

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x8000000

    move/from16 v0, p2

    invoke-static {v8, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 267
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 268
    iget-object v8, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 269
    sget-boolean v8, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "DowntimeConditions"

    const-string v9, "Scheduling %s for %s, %s in the future, now=%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 273
    :cond_2
    return-void
.end method

.method private updateAlarms()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "DowntimeConditions.enter"

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    .line 230
    const-string v0, "DowntimeConditions.exit"

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v3, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->updateAlarm(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method private updateDays()V
    .locals 4

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 184
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    .line 186
    .local v0, "days":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mDays:Landroid/util/ArraySet;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "days":[I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;
    .locals 20
    .param p1, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .param p2, "state"    # I

    .prologue
    .line 153
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 169
    :goto_0
    return-object v2

    .line 155
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v15, "sb":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v3

    .line 157
    .local v3, "id":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v16, "Hm"

    .line 158
    .local v16, "skeleton":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 159
    .local v11, "locale":Ljava/util/Locale;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 160
    .local v14, "pattern":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    iget v2, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v2, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v18

    .line 161
    .local v18, "start_time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    iget v2, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v2, v5}, Lcom/android/server/notification/DowntimeConditionProvider;->getTime(JII)J

    move-result-wide v12

    .line 162
    .local v12, "end_time":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v14, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v18

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 163
    .local v17, "start_formatted":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v14, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, "end_formatted":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v2, " ~ "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "summary":Ljava/lang/String;
    new-instance v2, Landroid/service/notification/Condition;

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v9, 0x1

    move/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_0

    .line 157
    .end local v4    # "summary":Ljava/lang/String;
    .end local v10    # "end_formatted":Ljava/lang/String;
    .end local v11    # "locale":Ljava/util/Locale;
    .end local v12    # "end_time":J
    .end local v14    # "pattern":Ljava/lang/String;
    .end local v16    # "skeleton":Ljava/lang/String;
    .end local v17    # "start_formatted":Ljava/lang/String;
    .end local v18    # "start_time":J
    :cond_1
    const-string v16, "hma"

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 76
    const-string v0, "    DowntimeConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 78
    const-string v0, "      mInDowntime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 79
    return-void
.end method

.method public isDowntimeCondition(Landroid/service/notification/Condition;)Z
    .locals 1
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInDowntime()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    return v0
.end method

.method public onConnected()V
    .locals 3

    .prologue
    .line 95
    sget-boolean v1, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DowntimeConditions"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "DowntimeConditions.enter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "DowntimeConditions.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    .line 110
    return-void
.end method

.method public onRequestConditions(I)V
    .locals 3
    .param p1, "relevance"    # I

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 120
    :cond_1
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 5
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 124
    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscribe conditionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    .line 126
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mInDowntime:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 129
    .local v1, "state":I
    :goto_0
    sget-boolean v2, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify condition state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/DowntimeConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 132
    .end local v1    # "state":I
    :cond_2
    return-void

    .line 127
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnsubscribe conditionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/DowntimeConditionProvider$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    .line 91
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    sget-boolean v0, Lcom/android/server/notification/DowntimeConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DowntimeConditions"

    const-string v1, "setConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    iput-object p1, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/notification/DowntimeConditionProvider;->mConnected:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/server/notification/DowntimeConditionProvider;->init()V

    goto :goto_0
.end method
