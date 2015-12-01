.class public Lcom/lge/morpho/core/MorphoSensorFusion;
.super Ljava/lang/Object;
.source "MorphoSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    }
.end annotation


# static fields
.field public static final MAXIMUM_DATA_SIZE:I = 0x200

.field public static final MODE_USE_ACCELEROMETER_AND_MAGNETIC_FIELD:I = 0x3

.field public static final MODE_USE_ALL_SENSORS:I = 0x0

.field public static final MODE_USE_GYROSCOPE:I = 0x1

.field public static final MODE_USE_GYROSCOPE_AND_ROTATION_VECTOR:I = 0x4

.field public static final MODE_USE_GYROSCOPE_WITH_ACCELEROMETER:I = 0x2

.field public static final OFFSET_MODE_DYNAMIC:I = 0x1

.field public static final OFFSET_MODE_STATIC:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SENSOR_TYPE_ACCELEROMETER:I = 0x1

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x3

.field public static final STATE_CALC_OFFSET:I = 0x0

.field public static final STATE_PROCESS:I = 0x1


# instance fields
.field private mIsInitialized:Z

.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    :try_start_0
    const-string v1, "morpho_sensor_fusion_4"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 9
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 10
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    .line 40
    iput-boolean v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mIsInitialized:Z

    .line 65
    invoke-direct {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->createNativeObject()I

    move-result v0

    .line 66
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 67
    iput v0, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iput v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    .line 70
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method private final native calc(I)I
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method private final native finish(I)I
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/lge/morpho/core/MorphoSensorFusion;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final native initialize(I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native outputRotationAngle(I[D)I
.end method

.method private final native outputRotationMatrix3x3(II[D)I
.end method

.method private final native setAppState(II)I
.end method

.method private final native setMode(II)I
.end method

.method private final native setOffset(ILcom/lge/morpho/core/MorphoSensorFusion$SensorData;I)I
.end method

.method private final native setOffsetMode(II)I
.end method

.method private final native setRotation(II)I
.end method

.method private final native setSensorData(I[Ljava/lang/Object;I)I
.end method

.method private final native setSensorReliability(III)I
.end method


# virtual methods
.method public calc()I
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->calc(I)I

    move-result v0

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->finish(I)I

    move-result v0

    .line 102
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->deleteNativeObject(I)V

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize()I
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "ret":I
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    if-eqz v1, :cond_1

    .line 77
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->initialize(I)I

    move-result v0

    .line 82
    :goto_0
    if-nez v0, :cond_0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mIsInitialized:Z

    .line 86
    :cond_0
    return v0

    .line 79
    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outputRotationAngle([D)I
    .locals 2
    .param p1, "angle"    # [D

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoSensorFusion;->outputRotationAngle(I[D)I

    move-result v0

    .line 207
    :goto_0
    return v0

    .line 205
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public outputRotationMatrix3x3(I[D)I
    .locals 2
    .param p1, "sensor_type"    # I
    .param p2, "dst_mat"    # [D

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->outputRotationMatrix3x3(II[D)I

    move-result v0

    .line 197
    :goto_0
    return v0

    .line 195
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setAppState(I)I
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(II)I

    move-result v0

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoSensorFusion;->setMode(II)I

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 115
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setOffset(Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;I)I
    .locals 2
    .param p1, "data"    # Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
    .param p2, "sensor_type"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setOffset(ILcom/lge/morpho/core/MorphoSensorFusion$SensorData;I)I

    move-result v0

    .line 167
    :goto_0
    return v0

    .line 165
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setOffsetMode(I)I
    .locals 2
    .param p1, "offset_mode"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoSensorFusion;->setOffsetMode(II)I

    move-result v0

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setRotation(I)I
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/core/MorphoSensorFusion;->setRotation(II)I

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 135
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setSensorData([Ljava/lang/Object;I)I
    .locals 2
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "sensor_type"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setSensorData(I[Ljava/lang/Object;I)I

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 175
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setSensorReliability(II)I
    .locals 2
    .param p1, "rel"    # I
    .param p2, "sensor_type"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/lge/morpho/core/MorphoSensorFusion;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/core/MorphoSensorFusion;->setSensorReliability(III)I

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
