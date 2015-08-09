.class Lcom/android/server/power/OrientatioinListener;
.super Ljava/lang/Object;
.source "OrientatioinListener.java"

# interfaces
.implements Lcom/android/server/power/ILPWGSensorEventListener;


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x1e

.field private static final DBG:Z = true

.field private static final MSG_KNOCKCODEWAKER_RUN:I = 0x5

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TILT_TOLERANCE:[[I

.field private mCurrentRotation:I

.field private final mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mOrienation:I

.field private final mOrientationSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/server/power/LPWGController;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/OrientatioinListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;Landroid/hardware/Sensor;Ljava/lang/Object;)V
    .locals 5
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "orientationSensor"    # Landroid/hardware/Sensor;
    .param p4, "mLock"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v4, p0, Lcom/android/server/power/OrientatioinListener;->mOrienation:I

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/power/OrientatioinListener;->TILT_TOLERANCE:[[I

    .line 30
    iput v4, p0, Lcom/android/server/power/OrientatioinListener;->mCurrentRotation:I

    .line 40
    iput-object p1, p0, Lcom/android/server/power/OrientatioinListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 41
    iput-object p2, p0, Lcom/android/server/power/OrientatioinListener;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p3, p0, Lcom/android/server/power/OrientatioinListener;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 43
    iput-object p4, p0, Lcom/android/server/power/OrientatioinListener;->mLock:Ljava/lang/Object;

    .line 44
    return-void

    .line 21
    :array_0
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_1
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_2
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_3
    .array-data 4
        -0x19
        0x3c
    .end array-data
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .locals 5
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .prologue
    const/4 v3, 0x0

    .line 138
    iget v0, p0, Lcom/android/server/power/OrientatioinListener;->mCurrentRotation:I

    .line 139
    .local v0, "currentRotation":I
    if-ltz v0, :cond_5

    .line 144
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 146
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0xf

    .line 148
    .local v1, "lowerBound":I
    if-nez p1, :cond_2

    .line 149
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .line 178
    .end local v1    # "lowerBound":I
    :cond_1
    :goto_0
    return v3

    .line 153
    .restart local v1    # "lowerBound":I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 163
    .end local v1    # "lowerBound":I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 165
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0xf

    .line 167
    .local v2, "upperBound":I
    if-nez p1, :cond_6

    .line 168
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .line 178
    .end local v2    # "upperBound":I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 172
    .restart local v2    # "upperBound":I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .locals 3
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/android/server/power/OrientatioinListener;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/OrientatioinListener;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private runKnockCodeWaker()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/power/OrientatioinListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/OrientatioinListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/server/power/OrientatioinListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 116
    :cond_0
    monitor-exit p0

    .line 117
    return-void

    .line 116
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
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/OrientatioinListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/OrientatioinListener;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/power/OrientatioinListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/OrientatioinListener;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 107
    :cond_0
    monitor-exit p0

    .line 108
    return-void

    .line 107
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
    .line 121
    iget v0, p0, Lcom/android/server/power/OrientatioinListener;->mOrienation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 48
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 51
    iget-object v8, p0, Lcom/android/server/power/OrientatioinListener;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 52
    :try_start_0
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x0

    aget v4, v7, v9

    .line 53
    .local v4, "x":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v5, v7, v9

    .line 54
    .local v5, "y":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v6, v7, v9

    .line 55
    .local v6, "z":F
    mul-float v7, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v7, v9

    mul-float v9, v6, v6

    add-float/2addr v7, v9

    invoke-static {v7}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 58
    .local v0, "magnitude":F
    sget-object v7, Lcom/android/server/power/OrientatioinListener;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/high16 v7, 0x41100000    # 9.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_0

    .line 63
    sget-object v7, Lcom/android/server/power/OrientatioinListener;->TAG:Ljava/lang/String;

    const-string v9, "abnormal sensor data!"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v8

    .line 98
    :goto_0
    return-void

    .line 66
    :cond_0
    div-float v7, v6, v0

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    const-wide v12, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v3, v10

    .line 71
    .local v3, "tiltAngle":I
    neg-float v7, v4

    float-to-double v10, v7

    float-to-double v12, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    neg-double v10, v10

    const-wide v12, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v2, v10

    .line 72
    .local v2, "orientationAngle":I
    if-gez v2, :cond_1

    .line 74
    add-int/lit16 v2, v2, 0x168

    .line 78
    :cond_1
    add-int/lit8 v7, v2, 0x2d

    div-int/lit8 v1, v7, 0x5a

    .line 79
    .local v1, "nearestRotation":I
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    .line 80
    const/4 v1, 0x0

    .line 83
    :cond_2
    sget-object v7, Lcom/android/server/power/OrientatioinListener;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Result: orientationAngle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tiltAngle="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", nearestRotation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, v1, v3}, Lcom/android/server/power/OrientatioinListener;->isTiltAngleAcceptableLocked(II)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/OrientatioinListener;->isOrientationAngleAcceptableLocked(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 91
    iput v1, p0, Lcom/android/server/power/OrientatioinListener;->mOrienation:I

    .line 96
    :goto_1
    invoke-direct {p0}, Lcom/android/server/power/OrientatioinListener;->runKnockCodeWaker()V

    .line 97
    monitor-exit v8

    goto :goto_0

    .end local v0    # "magnitude":F
    .end local v1    # "nearestRotation":I
    .end local v2    # "orientationAngle":I
    .end local v3    # "tiltAngle":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "z":F
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 93
    .restart local v0    # "magnitude":F
    .restart local v1    # "nearestRotation":I
    .restart local v2    # "orientationAngle":I
    .restart local v3    # "tiltAngle":I
    .restart local v4    # "x":F
    .restart local v5    # "y":F
    .restart local v6    # "z":F
    :cond_3
    const/4 v7, -0x1

    :try_start_1
    iput v7, p0, Lcom/android/server/power/OrientatioinListener;->mOrienation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateState(Lcom/android/server/power/LPWGStateUpdatable;)V
    .locals 0
    .param p1, "knockStateUpdatable"    # Lcom/android/server/power/LPWGStateUpdatable;

    .prologue
    .line 126
    return-void
.end method
