.class Lcom/android/internal/policy/impl/SensorUtil;
.super Ljava/lang/Object;
.source "SensorUtil.java"


# static fields
.field static final DEBUG_NOTUSER:Z

.field static final DEBUG_SENSOR:Z = false

.field static final TAG:Ljava/lang/String; = "SensorUtil"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field static mLightCovered:Z

.field static mLightSensor:Landroid/hardware/Sensor;

.field static final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field static mProximityNear:Z

.field static mProximitySensor:Landroid/hardware/Sensor;

.field static final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field static mSensorManager:Landroid/hardware/SensorManager;

.field private static mUseProxLightForVolLongKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/SensorUtil;->DEBUG_NOTUSER:Z

    .line 26
    sput-object v4, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    .line 27
    sput-boolean v2, Lcom/android/internal/policy/impl/SensorUtil;->mProximityNear:Z

    .line 28
    sput-object v4, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensor:Landroid/hardware/Sensor;

    .line 29
    sput-boolean v2, Lcom/android/internal/policy/impl/SensorUtil;->mLightCovered:Z

    .line 35
    sput-boolean v1, Lcom/android/internal/policy/impl/SensorUtil;->mUseProxLightForVolLongKey:Z

    .line 78
    new-instance v0, Lcom/android/internal/policy/impl/SensorUtil$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/SensorUtil$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 100
    new-instance v0, Lcom/android/internal/policy/impl/SensorUtil$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/SensorUtil$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    return-void

    :cond_0
    move v0, v2

    .line 22
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sput-object p1, Lcom/android/internal/policy/impl/SensorUtil;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static setSensorEnabled(Z)V
    .locals 6
    .param p0, "enable"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 44
    sget-boolean v0, Lcom/android/internal/policy/impl/SensorUtil;->mUseProxLightForVolLongKey:Z

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 46
    if-eqz p0, :cond_2

    .line 50
    sput-boolean v4, Lcom/android/internal/policy/impl/SensorUtil;->mProximityNear:Z

    .line 51
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 52
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    sget-object v3, Lcom/android/internal/policy/impl/SensorUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 60
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 61
    if-eqz p0, :cond_3

    .line 65
    sput-boolean v4, Lcom/android/internal/policy/impl/SensorUtil;->mLightCovered:Z

    .line 66
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 67
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensor:Landroid/hardware/Sensor;

    sget-object v3, Lcom/android/internal/policy/impl/SensorUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 57
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1
.end method


# virtual methods
.method dumpSensorUtil(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 146
    return-void
.end method

.method systemReadySensorUtil()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/hardware/SystemSensorManager;

    sget-object v1, Lcom/android/internal/policy/impl/SensorUtil;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/policy/impl/SensorUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    .line 124
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    .line 125
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1dcbd6f7

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    .line 126
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "SensorUtil"

    const-string v1, "HW_SENSOR : Failed to get Knock_on_code_proximity sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    .line 130
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 131
    const-string v0, "SensorUtil"

    const-string v1, "HW_SENSOR : Failed to get Proximity Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensor:Landroid/hardware/Sensor;

    .line 134
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 135
    const-string v0, "SensorUtil"

    const-string v1, "HW_SENSOR : Failed to get Light Sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/policy/impl/SensorUtil;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    .line 138
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/SensorUtil;->mUseProxLightForVolLongKey:Z

    .line 141
    :cond_4
    return-void
.end method
