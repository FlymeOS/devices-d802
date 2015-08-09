.class Lcom/android/internal/policy/impl/TouchControlArea;
.super Ljava/lang/Object;
.source "TouchControlArea.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchControlArea"

.field private static final TOUCH_CONTROL_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TOUCH_CONTROL_PACKAGE:Ljava/lang/String; = "com.lge.touchcontrol"

.field private static mContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private final CAPP_TOUCHCONTROL:Z

.field private mHomeDownKeyTimeByTouchControl:J

.field private mHomePressedByTouchControl:Z

.field private mLockToAppEnabled:Z

.field mToastTouchControlKeyBlock:Ljava/lang/Runnable;

.field private mTouchControlEnabled:Z

.field private mTouchControlReady:Z

.field private mTouchControlServiceIntent:Landroid/content/Intent;

.field private mTouchControlServiceRunning:Z

.field private mVolumeDownKeyTimeByTouchControl:J

.field private mVolumeDownTriggeredByTouchControl:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlEnabled:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlReady:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mLockToAppEnabled:Z

    .line 34
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCHCONTROL:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->CAPP_TOUCHCONTROL:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    .line 63
    new-instance v0, Lcom/android/internal/policy/impl/TouchControlArea$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchControlArea$1;-><init>(Lcom/android/internal/policy/impl/TouchControlArea;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mToastTouchControlKeyBlock:Ljava/lang/Runnable;

    .line 42
    sput-object p1, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_touch_control_areas_service_enable"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    .line 44
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_touch_control_areas_service_enable"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 47
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleHomeKeyWhileTouchControl(Landroid/view/KeyEvent;ZI)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 209
    if-nez p2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_2

    .line 210
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    .line 211
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlReady:Z

    if-eqz v2, :cond_2

    .line 212
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    if-nez v2, :cond_1

    .line 213
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlReady:Z

    .line 225
    :cond_1
    :goto_0
    return v0

    .line 218
    :cond_2
    if-eqz p2, :cond_3

    .line 219
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-nez v2, :cond_3

    .line 220
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    .line 221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomeDownKeyTimeByTouchControl:J

    :cond_3
    move v0, v1

    .line 225
    goto :goto_0
.end method

.method private handleTouchControlByHomeKey(IZ)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 164
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    .line 166
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_0

    .line 175
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchControlArea;->interceptTouchControlEntry()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0
.end method

.method private handleTouchControlbyVolumeKey(IZ)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 181
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 182
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    .line 183
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_0

    .line 194
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 188
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-eqz v2, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchControlArea;->interceptTouchControlEntry()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 194
    goto :goto_0
.end method

.method private handleVolumeDownKeyWhileTouchControl(Landroid/view/KeyEvent;ZIZ)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "keyCode"    # I
    .param p4, "interactive"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    const/16 v2, 0x19

    if-ne p3, v2, :cond_3

    .line 231
    if-eqz p2, :cond_1

    .line 232
    if-eqz p4, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_3

    .line 233
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    .line 234
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownKeyTimeByTouchControl:J

    .line 235
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-eqz v2, :cond_3

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_3

    .line 241
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownTriggeredByTouchControl:Z

    .line 242
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-nez v2, :cond_0

    .line 245
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlReady:Z

    if-eqz v0, :cond_3

    .line 246
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomePressedByTouchControl:Z

    if-nez v0, :cond_3

    .line 247
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlReady:Z

    :cond_3
    move v0, v1

    .line 253
    goto :goto_0
.end method

.method private interceptTouchControlEntry()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 127
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlReady:Z

    if-nez v6, :cond_0

    .line 128
    const-string v6, "TouchControlArea"

    const-string v7, "interceptScreenControlEctry called"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, "now":J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mVolumeDownKeyTimeByTouchControl:J

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    move v0, v4

    .line 131
    .local v0, "mHomeValid":Z
    :goto_0
    iget-wide v6, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mHomeDownKeyTimeByTouchControl:J

    add-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    move v1, v4

    .line 132
    .local v1, "mVolumeValid":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 133
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlReady:Z

    .line 135
    const-string v4, "TouchControlArea"

    const-string v5, "will launchScreenControl()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchControlArea;->launchTouchControl()V

    .line 139
    .end local v0    # "mHomeValid":Z
    .end local v1    # "mVolumeValid":Z
    .end local v2    # "now":J
    :cond_0
    return-void

    .restart local v2    # "now":J
    :cond_1
    move v0, v5

    .line 130
    goto :goto_0

    .restart local v0    # "mHomeValid":Z
    :cond_2
    move v1, v5

    .line 131
    goto :goto_1
.end method

.method private isTouchControlKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 78
    sparse-switch p1, :sswitch_data_0

    .line 95
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method private launchTouchControl()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_to_app_enabled"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mLockToAppEnabled:Z

    .line 101
    const-string v0, "TouchControlArea"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchTouchControl:mLockToAppEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mLockToAppEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mLockToAppEnabled:Z

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.android.intent.action.TOUCH_CONTROL_AREAS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    const-string v1, "com.lge.touchcontrol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v0, "TouchControlArea"

    const-string v1, "launchScreenControl() - !mTouchControlServiceRunning"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 115
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 100
    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mToastTouchControlKeyBlock:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 111
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 113
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_touch_control_areas_service_enable"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1
.end method


# virtual methods
.method public getTouchControlServiceRunning()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    return v0
.end method

.method public getTouchControlServiceRunning(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v2, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_touch_control_areas_service_enable"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 55
    .local v0, "nRes":I
    const-string v2, "TouchControlArea"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getTouchControlServiceRunning] nRes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method handleTouchControlLauncherDispatching(Landroid/view/KeyEvent;IZ)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I
    .param p3, "down"    # Z

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->CAPP_TOUCHCONTROL:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlEnabled:Z

    if-eqz v1, :cond_2

    .line 144
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/TouchControlArea;->handleTouchControlbyVolumeKey(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/TouchControlArea;->handleTouchControlByHomeKey(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-eqz v1, :cond_3

    .line 152
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/TouchControlArea;->isTouchControlKey(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    sget-object v1, Lcom/android/internal/policy/impl/TouchControlArea;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mToastTouchControlKeyBlock:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    sget-object v1, Lcom/android/internal/policy/impl/TouchControlArea;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mToastTouchControlKeyBlock:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 158
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHandledKeyWhileTouchControl(II)Z
    .locals 4
    .param p1, "result"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->CAPP_TOUCHCONTROL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlEnabled:Z

    if-eqz v0, :cond_0

    .line 272
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/TouchControlArea;->isTouchControlKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    and-int/lit8 p1, p1, -0x2

    .line 275
    const-string v0, "TouchControlArea"

    const-string v1, "Touch control areas is on, InterceptKeyBeforeQueuing pending hardkey action"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mToastTouchControlKeyBlock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mToastTouchControlKeyBlock:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIgnoredKeyWhileTouchControl(Landroid/view/KeyEvent;ZIZ)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z
    .param p3, "keyCode"    # I
    .param p4, "interactive"    # Z

    .prologue
    const/4 v0, 0x1

    .line 258
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->CAPP_TOUCHCONTROL:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlEnabled:Z

    if-eqz v1, :cond_2

    .line 259
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/TouchControlArea;->handleVolumeDownKeyWhileTouchControl(Landroid/view/KeyEvent;ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/TouchControlArea;->handleHomeKeyWhileTouchControl(Landroid/view/KeyEvent;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 60
    sput-object p1, Lcom/android/internal/policy/impl/TouchControlArea;->sHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method stopTouchControlAsUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 118
    const-string v0, "TouchControlArea"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopTouchControlAsUser] mTouchControlServiceIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/TouchControlArea;->getTouchControlServiceRunning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 123
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/TouchControlArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_touch_control_areas_service_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 124
    return-void
.end method

.method updateTouchControlSetting(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 199
    const-string v0, "accessibility_touch_control_areas_enable"

    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlEnabled:Z

    .line 200
    const-string v0, "accessibility_touch_control_areas_service_enable"

    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    .line 201
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchControlArea;->mTouchControlServiceRunning:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchControlArea;->launchTouchControl()V

    .line 204
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 199
    goto :goto_0

    :cond_2
    move v1, v2

    .line 200
    goto :goto_1
.end method
