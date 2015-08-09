.class final Lcom/android/internal/policy/impl/SensorUtil$2;
.super Ljava/lang/Object;
.source "SensorUtil.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SensorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v3

    .line 104
    .local v0, "lux":F
    const/high16 v4, 0x40800000    # 4.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    move v1, v2

    .line 106
    .local v1, "notCovered":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 107
    sput-boolean v3, Lcom/android/internal/policy/impl/SensorUtil;->mLightCovered:Z

    .line 111
    :cond_0
    :goto_1
    sget-boolean v2, Lcom/android/internal/policy/impl/SensorUtil;->DEBUG_NOTUSER:Z

    if-eqz v2, :cond_1

    .line 112
    const-string v2, "SensorUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW_SENSOR : LightSensor = mLightSensor lux : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLightCovered = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/SensorUtil;->mLightCovered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    return-void

    .end local v1    # "notCovered":Z
    :cond_2
    move v1, v3

    .line 104
    goto :goto_0

    .line 108
    .restart local v1    # "notCovered":Z
    :cond_3
    const-string v4, "sys.allautotest.run"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    sput-boolean v2, Lcom/android/internal/policy/impl/SensorUtil;->mLightCovered:Z

    goto :goto_1
.end method
