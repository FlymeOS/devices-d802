.class public Lcom/lge/camera/command/DisplayCameraPostview;
.super Lcom/lge/camera/command/Command;
.source "DisplayCameraPostview.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    return-void
.end method

.method private makePreviewParameters(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v11, "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v8

    .line 78
    .local v8, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 79
    .local v9, "uriListSize":I
    if-nez v9, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 164
    .end local v8    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9    # "uriListSize":I
    .end local v11    # "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 84
    .restart local v8    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v9    # "uriListSize":I
    .restart local v11    # "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v7

    .line 86
    .local v7, "tempUri":Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 87
    const-string v12, "timeMachineOneShotUri"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .end local v7    # "tempUri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isRefocusShotSupported()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "key_camera_shot_mode"

    const-string v14, "shotmode_refocus"

    invoke-interface {v12, v13, v14}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 95
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .line 96
    .local v6, "lastIndex":I
    if-ltz v6, :cond_3

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 98
    .local v2, "allinfocusUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 99
    const-string v12, "allinfocusUri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 106
    .end local v2    # "allinfocusUri":Landroid/net/Uri;
    .end local v6    # "lastIndex":I
    :cond_3
    const/4 v10, 0x0

    .line 107
    .local v10, "uriString":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_4

    .line 108
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 109
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v12, "CameraApp"

    const-string v13, "postview uri[%d] %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
    :cond_4
    const-string v12, "capturedUriList"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 113
    const-string v12, "app_mode"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v12, "camera_dimension"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    const-string v12, "cameraId"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v12

    if-nez v12, :cond_5

    .line 118
    const-string v12, "shotMode"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_shot_mode"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v12, "shotModeIndex"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_shot_mode"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    :cond_5
    const-string v12, "currentStorage"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v12, "currentStorageDir"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v12, "timeMachineStorageDir"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v12, "saveFileName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getSavedFileName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v12, "isAttachMode"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v12, "isAttachIntent"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v12, "autoReview"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_auto_review"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v12, "hasSavedUri"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->hasSaveURI()Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v12, "currentLang"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getLanguageType()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v12, "timeMachineMode"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    const-string v12, "currentOrientation"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v12, "volumeKey"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_volume"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 135
    const-string v12, "locationLatitude"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v13

    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 136
    const-string v12, "locationLongitude"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v13

    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 138
    :cond_6
    const-string v12, "isFreePanorama"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_shot_mode"

    const-string v15, "shotmode_free_panorama"

    invoke-interface {v13, v14, v15}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 142
    const-string v12, "Flip"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_save_direction"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v12

    if-nez v12, :cond_8

    .line 146
    const/4 v12, 0x3

    new-array v3, v12, [Ljava/lang/String;

    .line 147
    .local v3, "curzoom":[Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_zoom"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 148
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getZoomCursorMaxStep()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 149
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getZoomBarValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v12

    .line 150
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "===> current zoom : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v12, "currentZoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .end local v3    # "curzoom":[Ljava/lang/String;
    :cond_8
    const-string v12, "secureCamera"

    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v12, "useSecureLockImage"

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->setChangingToOtherActivity(Z)V

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v13, 0x64

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Lcom/lge/camera/ControllerFunction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 160
    .end local v5    # "i":I
    .end local v8    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9    # "uriListSize":I
    .end local v10    # "uriString":Ljava/lang/String;
    .end local v11    # "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 161
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "CameraApp"

    const-string v13, "DisplayCameraPostview Exception:"

    invoke-static {v12, v13, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v13, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/DisplayCameraPostview;->execute(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 8
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 40
    const-string v5, "CameraApp"

    const-string v6, "DisplayCameraPostview !"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 41
    check-cast v1, Landroid/os/Bundle;

    .line 42
    .local v1, "bundleFrom":Landroid/os/Bundle;
    const-string v5, "useTimeMachinePostview"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 44
    .local v4, "useTimeMachinePostview":Z
    const-string v5, "useRefocusPostview"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 46
    .local v3, "useRefocusPostview":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 49
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :goto_0
    invoke-direct {p0, v2}, Lcom/lge/camera/command/DisplayCameraPostview;->makePreviewParameters(Landroid/content/Intent;)V

    .line 71
    :goto_1
    return-void

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_refocus"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 55
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 58
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_clear_shot"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "useAsPostview"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    iget-object v5, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "com.lge.camera.command.ShowGallery"

    invoke-interface {v5, v6, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
