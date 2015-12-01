.class public Lcom/lge/camera/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/LocationInfo$LocationInfoFunction;
    }
.end annotation


# instance fields
.field private mGet:Lcom/lge/camera/LocationInfo$LocationInfoFunction;

.field private mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationOn:Z

.field private mRecordLocation:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/LocationInfo$LocationInfoFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/LocationInfo$LocationInfoFunction;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    .line 23
    iput-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    .line 27
    iput-object v0, p0, Lcom/lge/camera/LocationInfo;->mGet:Lcom/lge/camera/LocationInfo$LocationInfoFunction;

    .line 41
    iput-object p1, p0, Lcom/lge/camera/LocationInfo;->mGet:Lcom/lge/camera/LocationInfo$LocationInfoFunction;

    .line 42
    return-void
.end method


# virtual methods
.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v3, p0, Lcom/lge/camera/LocationInfo;->mGet:Lcom/lge/camera/LocationInfo$LocationInfoFunction;

    const-string v4, "key_camera_tag_location"

    invoke-interface {v3, v4}, Lcom/lge/camera/LocationInfo$LocationInfoFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 133
    :goto_0
    return-object v1

    .line 125
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lge/camera/listeners/LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 127
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 128
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentLocation return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "location":Landroid/location/Location;
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "getCurrentLocation return = null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 133
    goto :goto_0
.end method

.method public getLocationListener()[Lcom/lge/camera/listeners/LocationListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public getLocationOn()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lge/camera/LocationInfo;->mLocationOn:Z

    return v0
.end method

.method public getRecordLocation()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lge/camera/LocationInfo;->mRecordLocation:Z

    return v0
.end method

.method public setLocationListener([Lcom/lge/camera/listeners/LocationListener;)V
    .locals 0
    .param p1, "listener"    # [Lcom/lge/camera/listeners/LocationListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    .line 46
    return-void
.end method

.method public setLocationManager(Landroid/location/LocationManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/location/LocationManager;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    .line 54
    return-void
.end method

.method public setLocationOn(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/lge/camera/LocationInfo;->mLocationOn:Z

    .line 74
    return-void
.end method

.method public setRecordLocation(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/lge/camera/LocationInfo;->mRecordLocation:Z

    .line 66
    return-void
.end method

.method public startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 77
    const-string v0, "CameraApp"

    const-string v1, "startReceivingLocationUpdates()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/lge/camera/LocationInfo;->mGet:Lcom/lge/camera/LocationInfo$LocationInfoFunction;

    const-string v1, "key_camera_tag_location"

    invoke-interface {v0, v1}, Lcom/lge/camera/LocationInfo$LocationInfoFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 101
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/LocationInfo;->mGet:Lcom/lge/camera/LocationInfo$LocationInfoFunction;

    invoke-interface {v0}, Lcom/lge/camera/LocationInfo$LocationInfoFunction;->updateGpsIndicator()V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "ex":Ljava/lang/SecurityException;
    const-string v0, "CameraApp"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 89
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 90
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 97
    .local v6, "ex":Ljava/lang/SecurityException;
    const-string v0, "CameraApp"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 98
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 99
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 106
    const-string v2, "CameraApp"

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 115
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/LocationInfo;->mGet:Lcom/lge/camera/LocationInfo$LocationInfoFunction;

    invoke-interface {v2}, Lcom/lge/camera/LocationInfo$LocationInfoFunction;->updateGpsIndicator()V

    .line 117
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    .line 37
    iput-object v0, p0, Lcom/lge/camera/LocationInfo;->mLocationManager:Landroid/location/LocationManager;

    .line 38
    return-void
.end method
