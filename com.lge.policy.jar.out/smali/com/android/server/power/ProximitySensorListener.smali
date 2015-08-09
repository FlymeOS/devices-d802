.class Lcom/android/server/power/ProximitySensorListener;
.super Ljava/lang/Object;
.source "ProximitySensorListener.java"

# interfaces
.implements Lcom/android/server/power/ILPWGSensorEventListener;


# static fields
.field private static final DBG:Z = true

.field private static final MSG_CHECKLIGHT_REMOVED:I = 0x7

.field private static final MSG_CHECKLIGHT_RUN:I = 0x4

.field private static final MSG_SLEEPER_REMOVED:I = 0x6

.field private static final MSG_SLEEPER_RUN:I = 0x3

.field private static final NOTUSER_DEBUG:Z

.field private static final PROXIMITY_FAR:I = 0x1

.field private static final PROXIMITY_NEAR:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCoverOpened:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsTouchKnockOn:Z

.field private mKnockCodeSetting:Z

.field private mKnockOnSetting:Z

.field private final mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

.field private final mNotifier:Lcom/android/server/power/DriverNotifier;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProximity:I

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mUsingLightSensor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/ProximitySensorListener;->TAG:Ljava/lang/String;

    .line 14
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/power/ProximitySensorListener;->NOTUSER_DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/power/ILPWGSensorEventListener;Lcom/android/server/power/DriverNotifier;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "powerManage"    # Landroid/os/PowerManager;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "proximitySensor"    # Landroid/hardware/Sensor;
    .param p6, "lightSensorListener"    # Lcom/android/server/power/ILPWGSensorEventListener;
    .param p7, "driverNotifier"    # Lcom/android/server/power/DriverNotifier;
    .param p8, "usingLightSensor"    # Z
    .param p9, "isTouchKnockOn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/android/server/power/ProximitySensorListener;->mUsingLightSensor:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/server/power/ProximitySensorListener;->mIsTouchKnockOn:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/ProximitySensorListener;->mProximity:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ProximitySensorListener;->mCoverOpened:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/power/ProximitySensorListener;->mKnockOnSetting:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/power/ProximitySensorListener;->mKnockCodeSetting:Z

    .line 51
    iput-object p1, p0, Lcom/android/server/power/ProximitySensorListener;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/android/server/power/ProximitySensorListener;->mPowerManager:Landroid/os/PowerManager;

    .line 53
    iput-object p4, p0, Lcom/android/server/power/ProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    iput-object p5, p0, Lcom/android/server/power/ProximitySensorListener;->mProximitySensor:Landroid/hardware/Sensor;

    .line 55
    iput-object p2, p0, Lcom/android/server/power/ProximitySensorListener;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p7, p0, Lcom/android/server/power/ProximitySensorListener;->mNotifier:Lcom/android/server/power/DriverNotifier;

    .line 57
    iput-boolean p8, p0, Lcom/android/server/power/ProximitySensorListener;->mUsingLightSensor:Z

    .line 58
    iput-object p6, p0, Lcom/android/server/power/ProximitySensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    .line 59
    iput-boolean p9, p0, Lcom/android/server/power/ProximitySensorListener;->mIsTouchKnockOn:Z

    .line 60
    return-void
.end method

.method private setLightSensorEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    if-eqz v0, :cond_0

    .line 144
    if-eqz p1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->enable()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mLightSensorListener:Lcom/android/server/power/ILPWGSensorEventListener;

    invoke-interface {v0}, Lcom/android/server/power/ILPWGSensorEventListener;->disable()V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/android/server/power/ProximitySensorListener;->TAG:Ljava/lang/String;

    const-string v1, "disable proximity sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/ProximitySensorListener;->mProximity:I

    .line 120
    iget-boolean v0, p0, Lcom/android/server/power/ProximitySensorListener;->mIsTouchKnockOn:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    .line 127
    return-void

    .line 122
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/ProximitySensorListener;->mUsingLightSensor:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 126
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
    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/server/power/ProximitySensorListener;->TAG:Ljava/lang/String;

    const-string v1, "enable proximity sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/server/power/ProximitySensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/ProximitySensorListener;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 110
    :cond_0
    monitor-exit p0

    .line 111
    return-void

    .line 110
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
    .line 131
    iget v0, p0, Lcom/android/server/power/ProximitySensorListener;->mProximity:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 65
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const v5, 0x1dcbd6f7

    if-ne v2, v5, :cond_4

    .line 70
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 71
    .local v0, "distance":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    move v1, v3

    .line 72
    .local v1, "isFar":Z
    :goto_0
    if-eqz v1, :cond_6

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/android/server/power/ProximitySensorListener;->mProximity:I

    .line 73
    sget-object v2, Lcom/android/server/power/ProximitySensorListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proximity onSensorChanged : proximity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/power/ProximitySensorListener;->mProximity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-boolean v2, p0, Lcom/android/server/power/ProximitySensorListener;->mIsTouchKnockOn:Z

    if-eqz v2, :cond_a

    .line 75
    iget-object v2, p0, Lcom/android/server/power/ProximitySensorListener;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/ProximitySensorListener;->mCoverOpened:Z

    if-eqz v2, :cond_9

    .line 76
    sget-boolean v2, Lcom/android/server/power/ProximitySensorListener;->NOTUSER_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/power/ProximitySensorListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proximity onSensorChanged : isFar = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/power/ProximitySensorListener;->mUsingLightSensor:Z

    if-eqz v2, :cond_8

    .line 78
    if-nez v1, :cond_7

    .line 79
    iget-boolean v2, p0, Lcom/android/server/power/ProximitySensorListener;->mKnockOnSetting:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/ProximitySensorListener;->mKnockCodeSetting:Z

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/power/ProximitySensorListener;->setLightSensorEnabled(Z)V

    .line 80
    iget-object v2, p0, Lcom/android/server/power/ProximitySensorListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    .end local v0    # "distance":F
    .end local v1    # "isFar":Z
    :cond_4
    :goto_2
    return-void

    .restart local v0    # "distance":F
    :cond_5
    move v1, v4

    .line 71
    goto :goto_0

    .restart local v1    # "isFar":Z
    :cond_6
    move v2, v4

    .line 72
    goto :goto_1

    .line 82
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/server/power/ProximitySensorListener;->setLightSensorEnabled(Z)V

    .line 83
    iget-object v2, p0, Lcom/android/server/power/ProximitySensorListener;->mNotifier:Lcom/android/server/power/DriverNotifier;

    if-eqz v2, :cond_4

    .line 84
    iget-object v2, p0, Lcom/android/server/power/ProximitySensorListener;->mNotifier:Lcom/android/server/power/DriverNotifier;

    invoke-virtual {v2, v1}, Lcom/android/server/power/DriverNotifier;->updateProximitySensorChangedLocked(Z)V

    goto :goto_2

    .line 88
    :cond_8
    iget-object v2, p0, Lcom/android/server/power/ProximitySensorListener;->mNotifier:Lcom/android/server/power/DriverNotifier;

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/server/power/ProximitySensorListener;->mNotifier:Lcom/android/server/power/DriverNotifier;

    invoke-virtual {v2, v1}, Lcom/android/server/power/DriverNotifier;->updateProximitySensorChangedLocked(Z)V

    goto :goto_2

    .line 92
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/power/ProximitySensorListener;->mCoverOpened:Z

    if-nez v2, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/android/server/power/ProximitySensorListener;->disable()V

    goto :goto_2

    .line 96
    :cond_a
    iget-object v2, p0, Lcom/android/server/power/ProximitySensorListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method

.method public updateState(Lcom/android/server/power/LPWGStateUpdatable;)V
    .locals 2
    .param p1, "knockStateUpdatable"    # Lcom/android/server/power/LPWGStateUpdatable;

    .prologue
    .line 136
    move-object v0, p1

    .line 137
    .local v0, "state":Lcom/android/server/power/LPWGStateUpdatable;
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getKnockOnSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/ProximitySensorListener;->mKnockOnSetting:Z

    .line 138
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getKnockCodeSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/ProximitySensorListener;->mKnockCodeSetting:Z

    .line 139
    invoke-interface {v0}, Lcom/android/server/power/LPWGStateUpdatable;->getCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/ProximitySensorListener;->mCoverOpened:Z

    .line 140
    return-void
.end method
