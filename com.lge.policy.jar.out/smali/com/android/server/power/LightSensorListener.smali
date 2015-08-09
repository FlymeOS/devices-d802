.class Lcom/android/server/power/LightSensorListener;
.super Ljava/lang/Object;
.source "LightSensorListener.java"

# interfaces
.implements Lcom/android/server/power/ILPWGSensorEventListener;


# static fields
.field private static final DBG:Z = true

.field private static final ILLUMINANCE_DARK:I = 0x0

.field private static final ILLUMINANCE_LIGHT:I = 0x1

.field private static final MSG_CHECKLIGHT_REMOVED:I = 0x7

.field private static final MSG_SLEEPER_REMOVED:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static mIsTouchKnockOn:Z


# instance fields
.field private mCoverOpened:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLight:I

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mPreLight:I

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/LightSensorListener;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/LightSensorListener;->mIsTouchKnockOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Landroid/hardware/Sensor;Z)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lightSensor"    # Landroid/hardware/Sensor;
    .param p4, "isTouchKnockOn"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/LightSensorListener;->mPreLight:I

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/LightSensorListener;->mLight:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/LightSensorListener;->mCoverOpened:Z

    .line 33
    iput-object p1, p0, Lcom/android/server/power/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    iput-object p3, p0, Lcom/android/server/power/LightSensorListener;->mLightSensor:Landroid/hardware/Sensor;

    .line 35
    iput-object p2, p0, Lcom/android/server/power/LightSensorListener;->mHandler:Landroid/os/Handler;

    .line 36
    sput-boolean p4, Lcom/android/server/power/LightSensorListener;->mIsTouchKnockOn:Z

    .line 37
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/server/power/LightSensorListener;->TAG:Ljava/lang/String;

    const-string v1, "disable light sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/server/power/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/LightSensorListener;->mLight:I

    .line 84
    sget-boolean v0, Lcom/android/server/power/LightSensorListener;->mIsTouchKnockOn:Z

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/server/power/LightSensorListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 90
    :cond_0
    :goto_0
    monitor-exit p0

    .line 91
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/LightSensorListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/LightSensorListener;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/android/server/power/LightSensorListener;->TAG:Ljava/lang/String;

    const-string v1, "enable light sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/server/power/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/LightSensorListener;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    :cond_0
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getData()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/power/LightSensorListener;->mLight:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 42
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 47
    .local v0, "lux":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    move v1, v2

    .line 48
    .local v1, "notCovered":Z
    :goto_0
    iget v4, p0, Lcom/android/server/power/LightSensorListener;->mLight:I

    iput v4, p0, Lcom/android/server/power/LightSensorListener;->mPreLight:I

    .line 49
    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    iput v3, p0, Lcom/android/server/power/LightSensorListener;->mLight:I

    .line 50
    iget v3, p0, Lcom/android/server/power/LightSensorListener;->mPreLight:I

    iget v4, p0, Lcom/android/server/power/LightSensorListener;->mLight:I

    xor-int/2addr v3, v4

    if-ne v3, v2, :cond_1

    .line 52
    sget-object v2, Lcom/android/server/power/LightSensorListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Light onSensorChanged : mLight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/LightSensorListener;->mLight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(0:DARK, 1:LIGHT)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    sget-boolean v2, Lcom/android/server/power/LightSensorListener;->mIsTouchKnockOn:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/LightSensorListener;->mCoverOpened:Z

    if-nez v2, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/power/LightSensorListener;->disable()V

    .line 58
    :cond_2
    return-void

    .end local v1    # "notCovered":Z
    :cond_3
    move v1, v3

    .line 47
    goto :goto_0
.end method

.method public updateState(Lcom/android/server/power/LPWGStateUpdatable;)V
    .locals 2
    .param p1, "LPWGController"    # Lcom/android/server/power/LPWGStateUpdatable;

    .prologue
    .line 95
    move-object v0, p1

    .line 96
    .local v0, "state":Lcom/android/server/power/LPWGStateUpdatable;
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LightSensorListener;->mCoverOpened:Z

    .line 97
    return-void
.end method
