.class public Lcom/lge/camera/controller/camera/CameraStorageController;
.super Lcom/lge/camera/controller/StorageController;
.source "CameraStorageController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/StorageController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraStorageController;

    .prologue
    .line 23
    iget v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    return v0
.end method

.method private calculateAvailablePictureCountInTargetStorage(I)J
    .locals 14
    .param p1, "storageType"    # I

    .prologue
    .line 141
    const-string v9, "CameraApp"

    const-string v10, "calculate Available PictureCount In TargetStorage(%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-wide/16 v0, -0x1

    .line 144
    .local v0, "freeSpace":J
    const/4 v2, 0x0

    .line 145
    .local v2, "isHaveEnoughFreeSpace":Z
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "state":Ljava/lang/String;
    const-string v9, "CameraApp"

    const-string v10, "storage(%d) state: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 150
    const-wide/16 v0, -0x1

    .line 166
    :goto_0
    const-wide/16 v4, -0x1

    .line 167
    .local v4, "pictureRemaining":J
    if-eqz v2, :cond_8

    .line 168
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "sizeString":Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_continuous"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_panorama"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 174
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 175
    .local v3, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    .line 186
    .end local v3    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    .local v6, "size":[I
    :goto_1
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {p0, v9, v10, v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateRemainPictureCount(IIJ)J

    move-result-wide v4

    .line 187
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gez v9, :cond_1

    .line 188
    const-wide/16 v4, 0x0

    .line 196
    .end local v6    # "size":[I
    .end local v7    # "sizeString":Ljava/lang/String;
    :cond_1
    :goto_2
    return-wide v4

    .line 152
    .end local v4    # "pictureRemaining":J
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkFsWritable(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 153
    const-wide/16 v0, -0x1

    .line 162
    :cond_3
    :goto_3
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freeSpace="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHaveEnoughFreeSpace="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace(I)J

    move-result-wide v0

    .line 157
    const-wide/32 v10, 0x100000

    cmp-long v9, v0, v10

    if-lez v9, :cond_3

    .line 158
    const/4 v2, 0x1

    goto :goto_3

    .line 176
    .restart local v4    # "pictureRemaining":J
    .restart local v7    # "sizeString":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_free_panorama"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 178
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaResultSize()[I

    move-result-object v6

    .restart local v6    # "size":[I
    goto :goto_1

    .line 179
    .end local v6    # "size":[I
    :cond_6
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_plane_panorama"

    invoke-interface {v9, v10, v11}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 181
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaResultSize()[I

    move-result-object v6

    .restart local v6    # "size":[I
    goto :goto_1

    .line 183
    .end local v6    # "size":[I
    :cond_7
    invoke-static {v7}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    .restart local v6    # "size":[I
    goto :goto_1

    .line 190
    .end local v6    # "size":[I
    .end local v7    # "sizeString":Ljava/lang/String;
    :cond_8
    const-wide/16 v10, -0x1

    cmp-long v9, v0, v10

    if-nez v9, :cond_9

    .line 191
    const-wide/16 v4, -0x1

    goto :goto_2

    .line 193
    :cond_9
    const-wide/16 v4, 0x0

    goto :goto_2
.end method

.method private getAverageSpace(II)D
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 201
    mul-int v2, p1, p2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double v0, v2, v4

    .line 202
    .local v0, "averageSpace":D
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/lge/camera/util/Util;->getPictureSizeScale(ILjava/lang/String;ILjava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 211
    return-wide v0
.end method

.method private setStorageState(ZJLjava/lang/String;)V
    .locals 14
    .param p1, "mIsHaveEnoughFreeSpace"    # Z
    .param p2, "mExternalFreeSpace"    # J
    .param p4, "state"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 85
    const-wide/16 v2, 0x0

    .line 86
    .local v2, "pictureRemaining":J
    if-eqz p1, :cond_9

    .line 87
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_picturesize"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "sizeString":Ljava/lang/String;
    const/4 v5, 0x0

    .line 91
    .local v5, "size":[I
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_continuous"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_panorama"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 94
    .local v4, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 110
    .end local v4    # "shotModePref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 111
    aget v7, v5, v11

    aget v8, v5, v10

    move-wide/from16 v0, p2

    invoke-virtual {p0, v7, v8, v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateRemainPictureCount(IIJ)J

    move-result-wide v2

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->isMediaScanning()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 115
    const/4 v7, 0x3

    iput v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    .line 136
    .end local v5    # "size":[I
    .end local v6    # "sizeString":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v2, v3}, Lcom/lge/camera/ControllerFunction;->setPicturesRemaining(J)V

    .line 137
    return-void

    .line 95
    .restart local v5    # "size":[I
    .restart local v6    # "sizeString":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_plane_panorama"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 97
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaResultSize()[I

    move-result-object v5

    goto :goto_0

    .line 98
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_free_panorama"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 100
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaResultSize()[I

    move-result-object v5

    goto :goto_0

    .line 101
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_camera_shot_mode"

    const-string v9, "shotmode_dual_camera"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 103
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getDualCameraPictureSize()[I

    move-result-object v7

    if-eqz v7, :cond_1

    .line 104
    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getDualCameraPictureSize()[I

    move-result-object v5

    goto :goto_0

    .line 107
    :cond_6
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    goto :goto_0

    .line 117
    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_8

    .line 118
    iput v11, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    goto :goto_1

    .line 120
    :cond_8
    const-wide/16 v2, 0x0

    .line 121
    iput v12, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    goto :goto_1

    .line 124
    .end local v5    # "size":[I
    .end local v6    # "sizeString":Ljava/lang/String;
    :cond_9
    const-wide/16 v8, -0x1

    cmp-long v7, p2, v8

    if-nez v7, :cond_b

    .line 125
    const-wide/16 v2, -0x1

    .line 126
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 127
    iput v10, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    goto :goto_1

    .line 130
    :cond_a
    iput v10, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    goto :goto_1

    .line 133
    :cond_b
    const-wide/16 v2, 0x0

    .line 134
    iput v12, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    goto :goto_1
.end method


# virtual methods
.method public calculateRemainPictureCount(IIJ)J
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "freeSpace"    # J

    .prologue
    .line 235
    const-wide/16 v2, 0x0

    .line 236
    .local v2, "remain":J
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAverageSpace(II)D

    move-result-wide v0

    .line 238
    .local v0, "average":D
    const-wide/32 v4, 0x100000

    sub-long v4, p3, v4

    long-to-double v4, v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v2, v4

    .line 239
    const-string v4, "CameraApp"

    const-string v5, "picture count remained : %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-wide v2
.end method

.method public checkStorage(Z)V
    .locals 10
    .param p1, "showToast"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const-string v0, "CameraApp"

    const-string v1, "checkstorage(%b)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v8, 0x0

    .line 40
    .local v8, "mIsHaveEnoughFreeSpace":Z
    const-wide/16 v6, -0x1

    .line 41
    .local v6, "mExternalFreeSpace":J
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v9

    .line 43
    .local v9, "state":Ljava/lang/String;
    const-string v0, "CameraApp"

    const-string v1, "external storage state: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v9, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v9}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace()J

    move-result-wide v6

    .line 47
    const-wide/32 v0, 0x100000

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    .line 48
    const/4 v8, 0x1

    .line 50
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExternalFreeSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsHaveEnoughFreeSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-direct {p0, v8, v6, v7, v9}, Lcom/lge/camera/controller/camera/CameraStorageController;->setStorageState(ZJLjava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mStorageState:I

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->setStorageState(Landroid/content/Context;IILjava/lang/String;I)V

    .line 60
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mInit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/CameraStorageController$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController$1;-><init>(Lcom/lge/camera/controller/camera/CameraStorageController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPicturesRemaining()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailablePictureCount(I)J
    .locals 2
    .param p1, "storageType"    # I

    .prologue
    .line 219
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPicturesRemaining()J

    move-result-wide v0

    .line 222
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateAvailablePictureCountInTargetStorage(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mInit:Z

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 32
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mInit:Z

    .line 34
    :cond_0
    return-void
.end method

.method public isEnoughWorkingStorage(I)Z
    .locals 4
    .param p1, "storageType"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mInit:Z

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 230
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/StorageController;->onResume()V

    .line 231
    return-void
.end method
