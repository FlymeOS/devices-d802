.class public Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;
.super Ljava/lang/Object;
.source "MorphoSensorFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/core/MorphoSensorFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorData"
.end annotation


# instance fields
.field public mTimeStamp:J

.field public mValues:[D


# direct methods
.method public constructor <init>(J[D)V
    .locals 1
    .param p1, "time_stamp"    # J
    .param p3, "values"    # [D

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    .line 56
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mValues:[D

    .line 57
    return-void
.end method

.method public constructor <init>(J[F)V
    .locals 5
    .param p1, "time_stamp"    # J
    .param p3, "values"    # [F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mTimeStamp:J

    .line 48
    array-length v1, p3

    new-array v1, v1, [D

    iput-object v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mValues:[D

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/lge/morpho/core/MorphoSensorFusion$SensorData;->mValues:[D

    aget v2, p3, v0

    float-to-double v2, v2

    aput-wide v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
