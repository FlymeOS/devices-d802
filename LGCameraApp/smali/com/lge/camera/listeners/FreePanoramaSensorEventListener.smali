.class public Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;
.super Ljava/lang/Object;
.source "FreePanoramaSensorEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;
    }
.end annotation


# static fields
.field private static final MATRIX_SIZE:I = 0x10

.field private static final NS2MS:F = 1.0E-6f


# instance fields
.field private accelerometerTimeStamp:J

.field private accelerometerValues:[F

.field private inRM:[F

.field isSetOffset:Z

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mCameraOrientation:I

.field private mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

.field private mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeCorrectValue:[F

.field private mGyroscopeValue:[F

.field private mGyroscopeValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation
.end field

.field private mMagneticField:Landroid/hardware/Sensor;

.field private mPartOfAccelerometerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfGyroscopeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfMagneticFieldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfOrientationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mPartOfRotationVectorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationVector:Landroid/hardware/Sensor;

.field private mSensorLockObj:Ljava/lang/Object;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWaitTime:I

.field private magneticTimeStamp:J

.field private magneticValues:[F

.field private orientationValues:[F

.field private prev_timestamp:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;)V
    .locals 3
    .param p1, "function"    # Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    .line 72
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 79
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    .line 85
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    .line 103
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValue:[F

    .line 109
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeCorrectValue:[F

    .line 121
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->orientationValues:[F

    .line 122
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    .line 123
    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    .line 132
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->inRM:[F

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorLockObj:Ljava/lang/Object;

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isSetOffset:Z

    .line 52
    iput-object p1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    .line 53
    return-void
.end method

.method private checkSensors()V
    .locals 6

    .prologue
    .line 196
    const-string v3, "CameraApp"

    const-string v4, "checkSensors Start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_0

    .line 199
    const-string v3, "CameraApp"

    const-string v4, "print all sensors"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 202
    .local v1, "sensor":Landroid/hardware/Sensor;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sensor Type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "mSensorManager is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mGyroscope ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mAccelerometer ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mMagneticField ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can I use mRotationVector ? ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "CameraApp"

    const-string v4, "checkSensors End"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private clearArrayList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "sd_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 386
    :cond_0
    return-void
.end method

.method private doGyroscopeChanged(Landroid/hardware/SensorEvent;Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;
    .param p2, "sd"    # Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    .prologue
    const/16 v9, 0xbb8

    const/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 274
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getPanoramaState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-ge v1, v9, :cond_1

    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-ltz v1, :cond_1

    .line 277
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    .line 278
    .local v0, "pre_time":I
    iget-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 279
    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    int-to-float v1, v1

    iget-wide v2, p2, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    iget-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x358637bd    # 1.0E-6f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    .line 281
    :cond_0
    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-lt v1, v9, :cond_2

    .line 282
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 284
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setVisibleSensorCorrectionGuide(Z)V

    .line 285
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setPanoramaEngineState(I)V

    .line 286
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setVisibleTakingGuide(Z)V

    .line 297
    .end local v0    # "pre_time":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->prev_timestamp:J

    .line 299
    return-void

    .line 287
    .restart local v0    # "pre_time":I
    :cond_2
    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    if-le v1, v8, :cond_1

    .line 288
    if-gt v0, v8, :cond_3

    .line 289
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    iget v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-interface {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->setSensorCorrectionGuideCounter(I)V

    .line 292
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValueList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValue:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "sd_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 407
    :cond_1
    return-object v0

    .line 392
    :cond_2
    const/4 v1, 0x0

    .line 393
    .local v1, "i":I
    const/4 v2, 0x0

    .line 394
    .local v2, "input_num":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 395
    .local v3, "size":I
    const/16 v4, 0x200

    if-lt v3, v4, :cond_3

    .line 396
    const/16 v2, 0x200

    .line 400
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 401
    .local v0, "dst":[Ljava/lang/Object;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 402
    new-instance v5, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-wide v6, v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-object v4, v4, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mValues:[D

    invoke-direct {v5, v6, v7, v4}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[D)V

    aput-object v5, v0, v1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 398
    .end local v0    # "dst":[Ljava/lang/Object;
    :cond_3
    move v2, v3

    goto :goto_0

    .line 404
    .restart local v0    # "dst":[Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_1

    .line 405
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setInputSensorData([Ljava/lang/Object;I)V
    .locals 1
    .param p1, "sd_array"    # [Ljava/lang/Object;
    .param p2, "sensor_type"    # I

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setSensorData([Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method private updateOrientation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 302
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->inRM:[F

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    invoke-static {v1, v8, v4, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 304
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->inRM:[F

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->orientationValues:[F

    invoke-static {v1, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 306
    iget-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerTimeStamp:J

    iget-wide v6, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticTimeStamp:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    iget-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerTimeStamp:J

    .line 308
    .local v2, "ts":J
    :goto_0
    new-instance v0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->orientationValues:[F

    invoke-direct {v0, v2, v3, v1}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    .line 309
    .local v0, "osd":Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfOrientationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iput-object v8, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    .line 312
    iput-object v8, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    .line 314
    .end local v0    # "osd":Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    .end local v2    # "ts":J
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticTimeStamp:J

    goto :goto_0
.end method


# virtual methods
.method public getAccelerometer()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getCameraOrientation()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mCameraOrientation:I

    return v0
.end method

.method public getGyroscope()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getGyroscopeValue()[F
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValue:[F

    return-object v0
.end method

.method public getGyroscopeValueList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMagneticField()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getRotationVector()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getSensorLockObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getSensorMatrix([D[D[D)V
    .locals 9
    .param p1, "gyro_mat"    # [D
    .param p2, "rv_mat"    # [D
    .param p3, "ac_mat"    # [D

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 332
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, "data":[Ljava/lang/Object;
    invoke-direct {p0, v0, v6}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 335
    .end local v0    # "data":[Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 336
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 337
    .restart local v0    # "data":[Ljava/lang/Object;
    invoke-direct {p0, v0, v7}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 339
    .end local v0    # "data":[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 340
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 341
    .restart local v0    # "data":[Ljava/lang/Object;
    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 343
    .end local v0    # "data":[Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 344
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorDataArray(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v0

    .line 345
    .restart local v0    # "data":[Ljava/lang/Object;
    invoke-direct {p0, v0, v8}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setInputSensorData([Ljava/lang/Object;I)V

    .line 347
    .end local v0    # "data":[Ljava/lang/Object;
    :cond_4
    iget-boolean v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isSetOffset:Z

    if-nez v3, :cond_5

    .line 348
    iput-boolean v7, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isSetOffset:Z

    .line 349
    new-instance v2, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeCorrectValue:[F

    invoke-direct {v2, v4, v5, v3}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    .line 350
    .local v2, "sd":Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Lcom/lge/morpho/core/MorphoSensorFusion;->setOffset(Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;I)I

    .line 353
    .end local v2    # "sd":Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/morpho/core/MorphoSensorFusion;->calc()I

    .line 354
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3, v6, p1}, Lcom/lge/morpho/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    .line 356
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3, v8, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    .line 358
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v3

    invoke-virtual {v3, v7, p3}, Lcom/lge/morpho/core/MorphoSensorFusion;->outputRotationMatrix3x3(I[D)I

    .line 361
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 364
    const/4 v1, 0x0

    .line 368
    .local v1, "next":Z
    :goto_0
    if-nez v1, :cond_0

    .line 369
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 370
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 371
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 372
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfOrientationList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 373
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->clearArrayList(Ljava/util/ArrayList;)V

    .line 376
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGet:Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;

    invoke-interface {v3}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;->getSensorFusionMode()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_6

    .line 378
    array-length v3, p1

    invoke-static {p2, v6, p1, v6, v3}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 380
    :cond_6
    return-void

    .line 366
    .end local v1    # "next":Z
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "next":Z
    goto :goto_0
.end method

.method public getWaitTime()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    return v0
.end method

.method public initSensorManager(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 141
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_0

    .line 170
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 145
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 147
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 148
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscopeValueList:Ljava/util/ArrayList;

    .line 151
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 152
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 157
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 158
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    .line 160
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, v8, :cond_1

    .line 161
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    goto :goto_1

    .line 165
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfGyroscopeList:Ljava/util/ArrayList;

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfOrientationList:Ljava/util/ArrayList;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public isUseSensor()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 319
    :cond_1
    const/4 v0, 0x1

    .line 321
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_0

    .line 226
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged Accelerometer accuracy->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-ne p1, v0, :cond_1

    .line 229
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged MagneticField accuracy->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 235
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    :try_start_0
    new-instance v0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {v0, v4, v5, v1}, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;-><init>(J[F)V

    .line 245
    .local v0, "sd":Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_0

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->doGyroscopeChanged(Landroid/hardware/SensorEvent;Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;)V

    .line 248
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_1

    .line 249
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerValues:[F

    .line 250
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->accelerometerTimeStamp:J

    .line 251
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfAccelerometerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_2

    .line 259
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticValues:[F

    .line 260
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->magneticTimeStamp:J

    .line 261
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfMagneticFieldList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    if-ne v1, v3, :cond_3

    .line 264
    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mPartOfRotationVectorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->updateOrientation()V

    .line 269
    monitor-exit v2

    .line 270
    return-void

    .line 269
    .end local v0    # "sd":Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registSensorManager()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mMagneticField:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mRotationVector:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 192
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->checkSensors()V

    .line 193
    return-void
.end method

.method public setCameraOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mCameraOrientation:I

    .line 63
    return-void
.end method

.method public setWaitTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mWaitTime:I

    .line 114
    return-void
.end method

.method public unRegistSensorManager()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 221
    :cond_0
    return-void
.end method
