.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ATTRIBUTE_LGE_NAME_SPACE:Ljava/lang/String; = "http://schemas.lge.com/apk/res/android"

.field private static final ATTRIBUTE_SKIP_TIME_TICK:Ljava/lang/String; = "skipTimeTick"

.field private static final ATTRIBUTE_SKIP_TIME_TICK_MARGIN:Ljava/lang/String; = "skipTimeTickMargin"

.field private static final INTERVAL:J = 0xea60L

.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L

.field private static mSkipTimeTickMargin:I


# instance fields
.field private mAttachedToWindow:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field private mSkipTimeTick:Z

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private final mTimeTickHandler:Landroid/os/Handler;

.field private final mTimeTickRunnable:Ljava/lang/Runnable;

.field private mUpdateTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x21

    sput v0, Landroid/widget/DateTimeView;->mSkipTimeTickMargin:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTimeTickHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTimeTickRunnable:Ljava/lang/Runnable;

    .line 266
    new-instance v0, Landroid/widget/DateTimeView$2;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Landroid/widget/DateTimeView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$3;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/DateTimeView;->mLastDisplay:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTimeTickHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Landroid/widget/DateTimeView$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$1;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTimeTickRunnable:Ljava/lang/Runnable;

    .line 266
    new-instance v0, Landroid/widget/DateTimeView$2;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$2;-><init>(Landroid/widget/DateTimeView;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Landroid/widget/DateTimeView$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$3;-><init>(Landroid/widget/DateTimeView;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    .line 96
    if-eqz p2, :cond_0

    .line 97
    const-string v0, "http://schemas.lge.com/apk/res/android"

    const-string/jumbo v1, "skipTimeTick"

    iget-boolean v2, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    .line 98
    const-string v0, "http://schemas.lge.com/apk/res/android"

    const-string/jumbo v1, "skipTimeTickMargin"

    sget v2, Landroid/widget/DateTimeView;->mSkipTimeTickMargin:I

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/widget/DateTimeView;->mSkipTimeTickMargin:I

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DateTimeView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimeView;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/DateTimeView;->setNextTimeTick()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DateTimeView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimeView;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/DateTimeView;->updateClock()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/DateTimeView;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/DateTimeView;

    .prologue
    .line 50
    iget-wide v0, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getDateFormat()Ljava/text/DateFormat;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 228
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "format":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    :cond_0
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 237
    :goto_0
    return-object v2

    .line 234
    :cond_1
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private registerReceivers()V
    .locals 6

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-boolean v3, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    if-nez v3, :cond_0

    .line 248
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    :cond_0
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    const-string v3, "date_format"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 257
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    return-void
.end method

.method private setNextTimeTick()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    .line 295
    iget-boolean v2, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    if-eqz v2, :cond_0

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    rem-long/2addr v2, v4

    sub-long v2, v4, v2

    sget v4, Landroid/widget/DateTimeView;->mSkipTimeTickMargin:I

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 298
    .local v0, "nextTick":J
    iget-object v2, p0, Landroid/widget/DateTimeView;->mTimeTickHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/widget/DateTimeView;->mTimeTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    iget-object v2, p0, Landroid/widget/DateTimeView;->mTimeTickHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/widget/DateTimeView;->mTimeTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    .end local v0    # "nextTick":J
    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/DateTimeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DateTimeView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 264
    return-void
.end method

.method private updateClock()V
    .locals 4

    .prologue
    .line 305
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 314
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 106
    invoke-direct {p0}, Landroid/widget/DateTimeView;->registerReceivers()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 109
    invoke-direct {p0}, Landroid/widget/DateTimeView;->setNextTimeTick()V

    .line 110
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 115
    invoke-direct {p0}, Landroid/widget/DateTimeView;->unregisterReceivers()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimeView;->mAttachedToWindow:Z

    .line 119
    iget-boolean v0, p0, Landroid/widget/DateTimeView;->mSkipTimeTick:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/widget/DateTimeView;->mTimeTickHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/DateTimeView;->mTimeTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

.method public setTime(J)V
    .locals 9
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 127
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 128
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 129
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 130
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DateTimeView;->mTimeMillis:J

    .line 131
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    .line 132
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->update()V

    .line 133
    return-void
.end method

.method update()V
    .locals 26

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 221
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 143
    .local v14, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v18, v0

    .line 145
    .local v18, "time":Ljava/util/Date;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 146
    .local v16, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 147
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 149
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 150
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    .line 151
    .local v22, "twelveHoursBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 152
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 153
    .local v20, "twelveHoursAfter":J
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 154
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 155
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 156
    .local v10, "midnightBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 157
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 159
    .local v8, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 160
    .local v12, "nowMillis":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 161
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 162
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 166
    cmp-long v19, v12, v10

    if-ltz v19, :cond_1

    cmp-long v19, v12, v8

    if-ltz v19, :cond_2

    :cond_1
    cmp-long v19, v12, v22

    if-ltz v19, :cond_3

    cmp-long v19, v12, v20

    if-gez v19, :cond_3

    .line 168
    :cond_2
    const/4 v4, 0x0

    .line 178
    .local v4, "display":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DateTimeView;->mLastDisplay:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 180
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 196
    .local v5, "format":Ljava/text/DateFormat;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimeView;->mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 197
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    if-nez v4, :cond_6

    .line 202
    cmp-long v19, v20, v8

    if-lez v19, :cond_5

    .end local v20    # "twelveHoursAfter":J
    :goto_3
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    .line 220
    .end local v22    # "twelveHoursBefore":J
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 221
    .local v6, "finish":J
    goto/16 :goto_0

    .line 172
    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v6    # "finish":J
    .end local v17    # "text":Ljava/lang/String;
    .restart local v20    # "twelveHoursAfter":J
    .restart local v22    # "twelveHoursBefore":J
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "display":I
    goto :goto_1

    .line 182
    :cond_4
    packed-switch v4, :pswitch_data_0

    .line 190
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "unknown display value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 184
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getTimeFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 192
    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_5
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    goto :goto_2

    .line 187
    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimeView;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 188
    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_5

    .restart local v17    # "text":Ljava/lang/String;
    :cond_5
    move-wide/from16 v20, v8

    .line 202
    goto :goto_3

    .line 205
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/DateTimeView;->mTimeMillis:J

    move-wide/from16 v24, v0

    cmp-long v19, v24, v12

    if-gez v19, :cond_7

    .line 207
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .line 211
    :cond_7
    cmp-long v19, v22, v10

    if-gez v19, :cond_8

    .end local v22    # "twelveHoursBefore":J
    :goto_6
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/DateTimeView;->mUpdateTimeMillis:J

    goto :goto_4

    .restart local v22    # "twelveHoursBefore":J
    :cond_8
    move-wide/from16 v22, v10

    goto :goto_6

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
