.class public Lcom/android/server/power/DriverNotifier;
.super Ljava/lang/Object;
.source "DriverNotifier.java"


# static fields
.field private static final DBG:Z = true

.field public static final LPWG_DISABLED_BY_SENSOR:I = 0x0

.field public static final LPWG_ENABLED_BY_SENSOR:I = 0x1

.field private static final LPWG_NOTIFY_LEGACY_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/touch_gesture"

.field private static final LPWG_NOTIFY_PATH:Ljava/lang/String; = "/sys/devices/virtual/input/lge_touch/lpwg_notify"

.field private static final NOTUSER_DEBUG:Z

.field private static final SET_1ST_2ND_DUP:I = 0x8

.field private static final SET_ACTIVE_TOUCH_AREA:I = 0x3

.field private static final SET_LCD_SIZE:I = 0x2

.field private static final SET_LENGTH_BETWEEN_TAP:I = 0x5

.field private static final SET_LWPG_MODE:I = 0x1

.field private static final SET_LWPG_MODE2:I = 0x9

.field private static final SET_SENSOR_STATUS:I = 0x7

.field private static final SET_TAP_COUNT:I = 0x4

.field private static final SET_WAKEUP_SUSPEND:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveTouch1:Landroid/graphics/Point;

.field private mActiveTouch2:Landroid/graphics/Point;

.field private final mContext:Landroid/content/Context;

.field private mCoverOpened:Z

.field private mCoverView1:Landroid/graphics/Point;

.field private mCoverView2:Landroid/graphics/Point;

.field private mKnockCodeSetting:Z

.field private mKnockOnSetting:Z

.field private mLCDsize:Landroid/graphics/Point;

.field private mMode:I

.field private mPasswordLength:I

.field private mScreenOn:Z

.field private mSensorStatus:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/DriverNotifier;->NOTUSER_DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockOnSetting:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockCodeSetting:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/DriverNotifier;->mCoverOpened:Z

    .line 85
    iput-object p1, p0, Lcom/android/server/power/DriverNotifier;->mContext:Landroid/content/Context;

    .line 86
    iput v1, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/DriverNotifier;->mPasswordLength:I

    .line 88
    return-void
.end method

.method private setActiveTouchArea()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 198
    const-string v0, ""

    .line 199
    .local v0, "value":Ljava/lang/String;
    iput v6, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 200
    iget-object v1, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d %d %d %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    return-void
.end method

.method private setLCDSize()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 192
    iput v6, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 193
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "value":Ljava/lang/String;
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    return-void
.end method

.method private setLPWGmode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 159
    iput v5, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 160
    iget v1, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 161
    :cond_0
    iput v6, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    .line 163
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 166
    iget v1, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    if-gez v1, :cond_2

    .line 167
    iput v6, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    .line 169
    :cond_2
    iget v1, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    if-le v1, v5, :cond_3

    .line 170
    iput v5, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    .line 172
    :cond_3
    const/4 v0, 0x0

    .line 173
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "/sys/devices/virtual/input/lge_touch/touch_gesture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    :cond_4
    return-void
.end method

.method private setLPWGmode2()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 185
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d %d %d %d %d"

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget v1, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v7, 0x2

    iget-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mScreenOn:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x3

    iget v7, p0, Lcom/android/server/power/DriverNotifier;->mSensorStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x4

    iget-boolean v7, p0, Lcom/android/server/power/DriverNotifier;->mCoverOpened:Z

    if-eqz v7, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setLPWGmode2] current mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    return-void

    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 185
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method

.method private setLengthBetweenTouch(I)V
    .locals 6
    .param p1, "len"    # I

    .prologue
    .line 214
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 215
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "value":Ljava/lang/String;
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    return-void
.end method

.method private setScreenState()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 230
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-boolean v6, p0, Lcom/android/server/power/DriverNotifier;->mScreenOn:Z

    if-eqz v6, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "value":Ljava/lang/String;
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    return-void
.end method

.method private setSensorStatus()V
    .locals 6

    .prologue
    .line 223
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 224
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/power/DriverNotifier;->mSensorStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "value":Ljava/lang/String;
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    return-void
.end method

.method private setTapCount()V
    .locals 6

    .prologue
    .line 208
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 209
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/power/DriverNotifier;->mPasswordLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "value":Ljava/lang/String;
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    return-void
.end method


# virtual methods
.method init(Landroid/graphics/Point;)V
    .locals 9
    .param p1, "mDeviceLCDsize"    # Landroid/graphics/Point;

    .prologue
    const/4 v8, 0x1

    .line 91
    sget-object v6, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    const-string v7, "set driver init ..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p1, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    .line 95
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLCDSize()V

    .line 97
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 99
    .local v3, "w":I
    const/4 v1, 0x0

    .line 100
    .local v1, "h":I
    const/4 v4, 0x0

    .line 101
    .local v4, "x":I
    const/4 v5, 0x0

    .line 102
    .local v5, "y":I
    iput-boolean v8, p0, Lcom/android/server/power/DriverNotifier;->mScreenOn:Z

    .line 103
    iput v8, p0, Lcom/android/server/power/DriverNotifier;->mSensorStatus:I

    .line 105
    :try_start_0
    sget v6, Lcom/lge/internal/R$bool;->config_using_circle_cover:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    sget v6, Lcom/lge/internal/R$dimen;->config_circle_window_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 107
    sget v6, Lcom/lge/internal/R$dimen;->config_circle_window_height:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 108
    sget v6, Lcom/lge/internal/R$dimen;->config_circle_window_x_pos:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 109
    if-gez v4, :cond_0

    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 112
    :cond_0
    sget v6, Lcom/lge/internal/R$dimen;->config_circle_window_y_pos:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 113
    if-gez v5, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_1

    .line 114
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    div-int/lit8 v5, v6, 0x2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/server/power/DriverNotifier;->NOTUSER_DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cover info : w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", h="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/android/server/power/DriverNotifier;->mCoverView1:Landroid/graphics/Point;

    .line 146
    new-instance v6, Landroid/graphics/Point;

    add-int v7, v4, v3

    add-int v8, v5, v1

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v6, p0, Lcom/android/server/power/DriverNotifier;->mCoverView2:Landroid/graphics/Point;

    .line 149
    invoke-virtual {p0}, Lcom/android/server/power/DriverNotifier;->updateCoverStateChangedLocked()V

    .line 153
    return-void

    .line 116
    :cond_3
    :try_start_1
    sget v6, Lcom/lge/internal/R$bool;->config_using_disney_cover:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 117
    sget v6, Lcom/lge/internal/R$dimen;->config_disney_total_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 118
    sget v6, Lcom/lge/internal/R$dimen;->config_disney_total_height:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 119
    sget v6, Lcom/lge/internal/R$dimen;->config_disney_left_ear_x_pos:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 120
    if-gez v4, :cond_4

    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_4

    .line 121
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 123
    :cond_4
    sget v6, Lcom/lge/internal/R$dimen;->config_disney_left_ear_y_pos:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 124
    if-gez v5, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_1

    .line 125
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    div-int/lit8 v5, v6, 0x2

    goto/16 :goto_0

    .line 128
    :cond_5
    sget v6, Lcom/lge/internal/R$dimen;->config_cover_window_width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 129
    sget v6, Lcom/lge/internal/R$dimen;->config_cover_window_height:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 130
    sget v6, Lcom/lge/internal/R$dimen;->config_cover_window_x_pos:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 131
    if-gez v4, :cond_6

    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_6

    .line 132
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 134
    :cond_6
    sget v6, Lcom/lge/internal/R$dimen;->config_cover_window_y_pos:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 135
    if-gez v5, :cond_1

    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    if-eqz v6, :cond_1

    .line 136
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    div-int/lit8 v5, v6, 0x2
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v6, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find resource"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 142
    iget-object v6, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method public update1st2ndTap(Z)V
    .locals 7
    .param p1, "same"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 344
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    .line 345
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/power/DriverNotifier;->mType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "value":Ljava/lang/String;
    const-string v1, "/sys/devices/virtual/input/lge_touch/lpwg_notify"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/DriverNotifier;->writeValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    return-void
.end method

.method public updateCoverStateChangedLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-boolean v0, p0, Lcom/android/server/power/DriverNotifier;->mCoverOpened:Z

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    .line 282
    iget-object v0, p0, Lcom/android/server/power/DriverNotifier;->mLCDsize:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    .line 287
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setActiveTouchArea()V

    .line 288
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DriverNotifier;->mCoverView1:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch1:Landroid/graphics/Point;

    .line 285
    iget-object v0, p0, Lcom/android/server/power/DriverNotifier;->mCoverView2:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/server/power/DriverNotifier;->mActiveTouch2:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public updateCoverStateChangedLocked(ZI)V
    .locals 2
    .param p1, "state"    # Z
    .param p2, "type"    # I

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "mode":I
    iget-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockOnSetting:Z

    if-eqz v1, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 264
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockCodeSetting:Z

    if-eqz v1, :cond_1

    .line 265
    const/4 v0, 0x2

    .line 267
    :cond_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 268
    :cond_2
    const/4 v0, 0x0

    .line 270
    :cond_3
    iput v0, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    .line 271
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLPWGmode()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLPWGmode2()V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/power/DriverNotifier;->updateCoverStateChangedLocked()V

    .line 274
    return-void
.end method

.method public updatePasswordLength(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 323
    iput p1, p0, Lcom/android/server/power/DriverNotifier;->mPasswordLength:I

    .line 324
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setTapCount()V

    .line 325
    return-void
.end method

.method public updateProximitySensorChangedLocked(Z)V
    .locals 2
    .param p1, "positive"    # Z

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "mode":I
    if-eqz p1, :cond_1

    .line 301
    iget-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockOnSetting:Z

    if-eqz v1, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockCodeSetting:Z

    if-eqz v1, :cond_1

    .line 305
    const/4 v0, 0x2

    .line 308
    :cond_1
    iput v0, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    .line 309
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLPWGmode()V

    .line 311
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/android/server/power/DriverNotifier;->mSensorStatus:I

    .line 312
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setSensorStatus()V

    .line 314
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLPWGmode2()V

    .line 315
    return-void

    .line 311
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateScreenState(Z)V
    .locals 0
    .param p1, "screenon"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/server/power/DriverNotifier;->mScreenOn:Z

    .line 334
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setScreenState()V

    .line 336
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLPWGmode2()V

    .line 337
    return-void
.end method

.method public updateSettingsLocked()V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "mode":I
    iget-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockOnSetting:Z

    if-eqz v1, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 244
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockCodeSetting:Z

    if-eqz v1, :cond_1

    .line 245
    const/4 v0, 0x2

    .line 247
    :cond_1
    iput v0, p0, Lcom/android/server/power/DriverNotifier;->mMode:I

    .line 248
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLPWGmode()V

    .line 249
    invoke-direct {p0}, Lcom/android/server/power/DriverNotifier;->setLPWGmode2()V

    .line 250
    return-void
.end method

.method updateState(Lcom/android/server/power/LPWGStateUpdatable;)V
    .locals 2
    .param p1, "knockStateUpdatable"    # Lcom/android/server/power/LPWGStateUpdatable;

    .prologue
    .line 382
    move-object v0, p1

    .line 383
    .local v0, "state":Lcom/android/server/power/LPWGStateUpdatable;
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getKnockOnSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockOnSetting:Z

    .line 384
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getKnockCodeSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mKnockCodeSetting:Z

    .line 385
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/DriverNotifier;->mCoverOpened:Z

    .line 386
    return-void
.end method

.method writeValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 353
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 355
    .local v4, "valueInBytes":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 356
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    const/4 v3, 0x1

    .line 368
    if-eqz v2, :cond_0

    .line 369
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 371
    :cond_0
    const/4 v1, 0x0

    .line 378
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "valueInBytes":[B
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 372
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "valueInBytes":[B
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 374
    sget-object v5, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    const-string v6, "I/O exception on close after exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 377
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "valueInBytes":[B
    :catch_1
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    .line 360
    :try_start_3
    sget-object v5, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    if-eqz v1, :cond_1

    .line 369
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 371
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 372
    :catch_2
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 374
    sget-object v5, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    const-string v6, "I/O exception on close after exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 361
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v5, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 368
    if-eqz v1, :cond_2

    .line 369
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 371
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 372
    :catch_4
    move-exception v0

    .line 373
    const/4 v3, 0x0

    .line 374
    sget-object v5, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    const-string v6, "I/O exception on close after exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const/4 v3, 0x0

    .line 365
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 368
    if-eqz v1, :cond_3

    .line 369
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 371
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 372
    :catch_6
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 374
    sget-object v5, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    const-string v6, "I/O exception on close after exception"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 368
    :goto_4
    if-eqz v1, :cond_4

    .line 369
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 371
    :cond_4
    const/4 v1, 0x0

    .line 376
    :goto_5
    throw v5

    .line 372
    :catch_7
    move-exception v0

    .line 373
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 374
    sget-object v6, Lcom/android/server/power/DriverNotifier;->TAG:Ljava/lang/String;

    const-string v7, "I/O exception on close after exception"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 363
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 361
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 358
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method
