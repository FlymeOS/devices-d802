.class public Lcom/lge/camera/util/GpsLocation;
.super Ljava/lang/Object;
.source "GpsLocation.java"


# instance fields
.field private mGpsAvailable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "gpsAvailable"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 21
    iput-boolean p1, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 22
    return-void
.end method


# virtual methods
.method public getGpsAvailable()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    return v0
.end method

.method public setGPSlocation(Landroid/hardware/Camera$Parameters;ZLandroid/location/Location;)Z
    .locals 18
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "recordLocation"    # Z
    .param p3, "currentLocation"    # Landroid/location/Location;

    .prologue
    .line 34
    const/4 v6, 0x0

    .line 37
    .local v6, "bChangeParameter":Z
    if-eqz p2, :cond_4

    move-object/from16 v9, p3

    .line 38
    .local v9, "loc":Landroid/location/Location;
    :goto_0
    if-eqz v9, :cond_8

    .line 39
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 40
    .local v8, "latitude":Ljava/lang/Double;
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 41
    .local v10, "longitude":Ljava/lang/Double;
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 43
    .local v11, "pivot":Ljava/lang/Double;
    invoke-virtual {v8, v11}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v10, v11}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v14

    if-eqz v14, :cond_5

    :cond_0
    const/4 v7, 0x1

    .line 46
    .local v7, "hasLatLon":Z
    :goto_1
    if-eqz v7, :cond_7

    .line 56
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 58
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 59
    invoke-virtual {v9}, Landroid/location/Location;->hasAltitude()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 60
    invoke-virtual {v9}, Landroid/location/Location;->getAltitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 61
    .local v2, "altitude":Ljava/lang/Double;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 62
    .local v3, "altitudeX1000":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    .line 63
    .local v4, "altitudeDividend":J
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-gez v14, :cond_1

    .line 64
    const-wide/16 v14, -0x1

    mul-long/2addr v4, v14

    .line 70
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 79
    .end local v2    # "altitude":Ljava/lang/Double;
    .end local v3    # "altitudeX1000":Ljava/lang/Double;
    .end local v4    # "altitudeDividend":J
    :goto_2
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 82
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    .line 83
    .local v12, "utcTimeSeconds":J
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 86
    .end local v12    # "utcTimeSeconds":J
    :cond_2
    const/4 v6, 0x1

    .line 87
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 104
    .end local v7    # "hasLatLon":Z
    .end local v8    # "latitude":Ljava/lang/Double;
    .end local v10    # "longitude":Ljava/lang/Double;
    .end local v11    # "pivot":Ljava/lang/Double;
    :cond_3
    :goto_3
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loc = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return v6

    .line 37
    .end local v9    # "loc":Landroid/location/Location;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 43
    .restart local v8    # "latitude":Ljava/lang/Double;
    .restart local v9    # "loc":Landroid/location/Location;
    .restart local v10    # "longitude":Ljava/lang/Double;
    .restart local v11    # "pivot":Ljava/lang/Double;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 75
    .restart local v7    # "hasLatLon":Z
    :cond_6
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_2

    .line 89
    :cond_7
    const/4 v9, 0x0

    .line 90
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    if-eqz v14, :cond_3

    .line 91
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 92
    const/4 v6, 0x1

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto :goto_3

    .line 97
    .end local v7    # "hasLatLon":Z
    .end local v8    # "latitude":Ljava/lang/Double;
    .end local v10    # "longitude":Ljava/lang/Double;
    .end local v11    # "pivot":Ljava/lang/Double;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    if-eqz v14, :cond_3

    .line 98
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 99
    const/4 v6, 0x1

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    goto :goto_3
.end method

.method public setGpsAvailable(Z)V
    .locals 0
    .param p1, "gpsAvailable"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lge/camera/util/GpsLocation;->mGpsAvailable:Z

    .line 30
    return-void
.end method
