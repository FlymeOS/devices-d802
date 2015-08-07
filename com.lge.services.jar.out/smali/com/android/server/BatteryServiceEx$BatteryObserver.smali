.class public Lcom/android/server/BatteryServiceEx$BatteryObserver;
.super Landroid/os/UEventObserver;
.source "BatteryServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryServiceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;,
        Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    }
.end annotation


# static fields
.field private static final ORIENTATION_LANDSCAPE_DEGREE_FROM:I = 0xfa

.field private static final ORIENTATION_LANDSCAPE_DEGREE_TO:I = 0x122

.field private static final ORIENTATION_LANDSCAPE_OPPOSITE_DEGREE_FROM:I = 0x46

.field private static final ORIENTATION_LANDSCAPE_OPPOSITE_DEGREE_TO:I = 0x6e

.field private static final ORIENTATION_PORTRAIT_DEGREE_FROM:I = 0x154

.field private static final ORIENTATION_PORTRAIT_DEGREE_TO:I = 0x14

.field private static final ORIENTATION_PORTRAIT_OPPOSITE_DEGREE_FROM:I = 0xa0

.field private static final ORIENTATION_PORTRAIT_OPPOSITE_DEGREE_TO:I = 0xc8


# instance fields
.field private mBatteryCondition:I

.field private mBatteryCurrent:I

.field private final mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfo_init:Z

.field private mBatteryLevel:I

.field private mBatteryStatus:I

.field private mChargingCurrent:I

.field private final mContext:Landroid/content/Context;

.field private final mDisabled:I

.field private mExtPwr:I

.field private mFastCharging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHvdcpType:I

.field private mIntentToForward:Landroid/content/Intent;

.field private mLastPluggedType:I

.field private final mLock:Ljava/lang/Object;

.field private mOrientation:I

.field private mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

.field private mOverheatCheckTime:J

.field private mPluggedType:I

.field mSendIntentForWireless:Ljava/lang/Runnable;

.field private mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValidBatteryID:I

.field private mWirelessAlignment:I

.field final synthetic this$0:Lcom/android/server/BatteryServiceEx;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryServiceEx;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const v0, -0xf4240

    .line 191
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->this$0:Lcom/android/server/BatteryServiceEx;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 158
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mDisabled:I

    .line 159
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I

    .line 160
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I

    .line 161
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I

    .line 162
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I

    .line 163
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I

    .line 164
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    .line 165
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    .line 166
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I

    .line 167
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I

    .line 168
    iput-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z

    .line 169
    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I

    .line 171
    iput-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLock:Ljava/lang/Object;

    .line 188
    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I

    .line 472
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$3;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 584
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$4;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mSendIntentForWireless:Ljava/lang/Runnable;

    .line 192
    iput-object p2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    .line 194
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;

    .line 198
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$1;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Lcom/android/server/BatteryServiceEx;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    const-string v0, "SUBSYSTEM=power_supply"

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->startObserving(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->updateLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mPluggedType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientationListener:Lcom/android/server/BatteryServiceEx$BatteryObserver$MyOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/BatteryServiceEx$BatteryObserver;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mIntentToForward:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/BatteryServiceEx$BatteryObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mFastCharging:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryServiceEx$BatteryObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLastPluggedType:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->checkBatteryOverheat(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/BatteryServiceEx$BatteryObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOrientation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryServiceEx$BatteryObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryServiceEx$BatteryObserver;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I

    return v0
.end method

.method private checkBatteryOverheat(I)V
    .locals 10
    .param p1, "temperature"    # I

    .prologue
    const-wide/32 v8, 0x1d4c0

    const-wide/16 v6, 0x0

    .line 451
    const/16 v1, 0x1c2

    if-le p1, v1, :cond_2

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 453
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 454
    iput-wide v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    .line 470
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 455
    .restart local v2    # "now":J
    :cond_1
    iget-wide v4, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v8

    if-ltz v1, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    const-string v1, "com.lge.android.intent.action.DQSL_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string v1, "com.lge.intent.extra.DQSL_EVENT_CODE"

    const-string v4, "Q020"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "com.lge.intent.extra.DQSL_EVENT_VALUE"

    div-int/lit8 v4, p1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    rem-long v4, v2, v8

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    .line 463
    # getter for: Lcom/android/server/BatteryServiceEx;->DEBUG:Z
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "BatteryServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send Q020 BatteryOverheat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "now":J
    :cond_2
    iput-wide v6, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mOverheatCheckTime:J

    goto :goto_0
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v7, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v6, v1, :cond_1

    .line 234
    new-instance v0, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_DEV_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$400()[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v6

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v1

    aget-object v3, v1, v6

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v6

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_VALUE_SET:[I
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$600()[I

    move-result-object v1

    aget v5, v1, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    .local v0, "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    invoke-virtual {v0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 238
    :cond_0
    const v1, -0xf4240

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    .line 239
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "BatteryServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This kernel does not have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " support ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v0    # "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    :cond_1
    return-object v7
.end method

.method private readFastChargingState()V
    .locals 8

    .prologue
    .line 495
    const-string v4, "/sys/class/power_supply/usb/hvdcp_type"

    .line 496
    .local v4, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 499
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/power_supply/usb/hvdcp_type"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 502
    .local v3, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 503
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I

    .line 504
    const-string v5, "BatteryServiceEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reading HVDCP state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 506
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 507
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v5, "BatteryServiceEx"

    const-string v6, "Error at reading HVDCP state"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    if-eqz v0, :cond_0

    .line 511
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 517
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 509
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    .line 511
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 514
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 512
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 513
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "BatteryServiceEx"

    const-string v6, "Exception when closing BufferedReader instance"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 514
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 512
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 513
    const-string v5, "BatteryServiceEx"

    const-string v6, "Exception when closing BufferedReader instance"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 509
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_2

    .line 511
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 514
    :cond_2
    :goto_4
    throw v5

    .line 512
    :catch_3
    move-exception v2

    .line 513
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "BatteryServiceEx"

    const-string v7, "Exception when closing BufferedReader instance"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 509
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 506
    .end local v3    # "line":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private sendIntentLocked()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver$2;-><init>(Lcom/android/server/BatteryServiceEx$BatteryObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method private updateLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, -0xf4240

    .line 307
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 308
    iget-object v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;

    .line 309
    .local v1, "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_VALID_BATT_ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/BatteryServiceEx;->BATT_ID_DEV:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mValidBatteryID:I

    .line 307
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_CURRENT_NOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCurrent:I

    goto :goto_1

    .line 313
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_BATTERY_CONDITION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryCondition:I

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_VZW_CHG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mChargingCurrent:I

    goto :goto_1

    .line 317
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_EXT_PWR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mExtPwr:I

    goto :goto_1

    .line 319
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_CAPACITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 320
    iget-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    if-eqz v2, :cond_6

    sget v2, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-nez v2, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    if-eq v2, v4, :cond_7

    .line 321
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    goto/16 :goto_1

    .line 323
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryLevel:I

    goto/16 :goto_1

    .line 325
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 326
    iget-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    if-eqz v2, :cond_9

    sget v2, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-nez v2, :cond_a

    :cond_9
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    if-eq v2, v4, :cond_a

    .line 327
    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    goto/16 :goto_1

    .line 329
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryStatus:I

    goto/16 :goto_1

    .line 331
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_ALIGNMENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 332
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mWirelessAlignment:I

    goto/16 :goto_1

    .line 333
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POWER_SUPPLY_HVDCP_TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v1}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I

    goto/16 :goto_1

    .line 338
    .end local v1    # "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    :cond_d
    iget-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mHvdcpType:I

    if-eq v2, v4, :cond_e

    .line 339
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->readFastChargingState()V

    .line 343
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    if-nez v2, :cond_f

    sget v2, Lcom/android/server/BatteryServiceEx;->sBootcomplete:I

    if-ne v2, v5, :cond_f

    .line 344
    iput-boolean v5, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mBatteryInfo_init:Z

    .line 348
    :cond_f
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->sendIntentLocked()V

    .line 349
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 253
    :try_start_0
    const-string v8, "DEVPATH"

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "devPath":Ljava/lang/String;
    const-string v8, "POWER_SUPPLY_NAME"

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 256
    const-string v8, "BatteryServiceEx"

    const-string v9, "devPath can\'t be null!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 258
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 259
    const-string v8, "BatteryServiceEx"

    const-string v9, "name can\'t be null!!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "BatteryServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse switch value from event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "devPath":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "battery"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "wireless"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "usb"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    :cond_3
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "eventString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_b

    .line 267
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_DEV_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$400()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 268
    const/4 v7, 0x0

    .line 269
    .local v7, "value":I
    const/4 v5, 0x0

    .line 270
    .local v5, "status":Ljava/lang/String;
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_NODE_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$300()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    const-string v9, "status"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 271
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 290
    :goto_2
    iget-object v8, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;

    .line 291
    .local v6, "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    invoke-virtual {v6}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getKeyName()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_VALUE_SET:[I
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$600()[I

    move-result-object v8

    aget v8, v8, v3

    const v9, -0xf4240

    if-eq v8, v9, :cond_4

    .line 292
    invoke-virtual {v6, v7}, Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;->setValue(I)V

    .line 266
    .end local v5    # "status":Ljava/lang/String;
    .end local v6    # "uei":Lcom/android/server/BatteryServiceEx$BatteryObserver$UEventInfo;
    .end local v7    # "value":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    .restart local v5    # "status":Ljava/lang/String;
    .restart local v7    # "value":I
    :cond_5
    # getter for: Lcom/android/server/BatteryServiceEx;->BATTERY_KEY_SET:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryServiceEx;->access$500()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {p1, v8}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 275
    const-string v8, "Unknown"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 276
    const/4 v7, 0x1

    goto :goto_2

    .line 277
    :cond_6
    const-string v8, "Charging"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 278
    const/4 v7, 0x2

    goto :goto_2

    .line 279
    :cond_7
    const-string v8, "Discharging"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 280
    const/4 v7, 0x3

    goto :goto_2

    .line 281
    :cond_8
    const-string v8, "Not charging"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 282
    const/4 v7, 0x4

    goto :goto_2

    .line 283
    :cond_9
    const-string v8, "Full"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 284
    const/4 v7, 0x5

    goto :goto_2

    .line 286
    :cond_a
    const-string v8, "BatteryServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It can\'t be happened!! : status = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 296
    .end local v5    # "status":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_b
    iget-object v9, p0, Lcom/android/server/BatteryServiceEx$BatteryObserver;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/BatteryServiceEx$BatteryObserver;->updateLocked()V

    .line 298
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
.end method
