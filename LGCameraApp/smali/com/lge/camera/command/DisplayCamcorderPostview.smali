.class public Lcom/lge/camera/command/DisplayCamcorderPostview;
.super Lcom/lge/camera/command/Command;
.source "DisplayCamcorderPostview.java"


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


# virtual methods
.method public execute()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 35
    const-string v10, "CameraApp"

    const-string v11, "DisplayAfterCaptureView-start"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 40
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcom/lge/camera/PostviewAttachActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v8, "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v9

    .line 54
    .local v9, "video":Lcom/lge/camera/VideoFile;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v5, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 57
    invoke-virtual {v9}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 60
    .local v6, "uriListSize":I
    if-nez v6, :cond_1

    .line 61
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .end local v5    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v6    # "uriListSize":I
    .end local v8    # "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "video":Lcom/lge/camera/VideoFile;
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v12}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "useAsPostview"

    invoke-virtual {v0, v10, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "com.lge.camera.command.ShowGallery"

    invoke-interface {v10, v11, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v13}, Lcom/lge/camera/ControllerFunction;->setChangingToOtherActivity(Z)V

    goto :goto_0

    .line 64
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v6    # "uriListSize":I
    .restart local v8    # "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "video":Lcom/lge/camera/VideoFile;
    :cond_1
    const/4 v7, 0x0

    .line 65
    .local v7, "uriString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 66
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v10, "CameraApp"

    const-string v11, "uri[%d] %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    :cond_2
    const-string v10, "capturedUriList"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 72
    const-string v10, "app_mode"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v10, "camera_dimension"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v10, "cameraId"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v10, "currentStorage"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v10, "currentStorageDir"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v10, "saveFileName"

    invoke-virtual {v9}, Lcom/lge/camera/VideoFile;->getFileName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9}, Lcom/lge/camera/VideoFile;->getFileName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v10, "isAttachMode"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v10, "isAttachIntent"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const-string v10, "isMmsVideo"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->needProgressBar()Z

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    const-string v10, "autoReview"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_video_auto_review"

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v10, "saveFilePath"

    invoke-virtual {v9}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v10, "videoExtension"

    invoke-virtual {v9}, Lcom/lge/camera/VideoFile;->getFileExtension()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v10, "currentLang"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getLanguageType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v10, "currentOrientation"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v10, "effectsActive"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const-string v10, "effectsSizeOnScreen"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v10, "volumeKey"

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_volume"

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .end local v3    # "i":I
    .end local v6    # "uriListSize":I
    .end local v7    # "uriString":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v10

    if-nez v10, :cond_4

    .line 94
    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/String;

    .line 95
    .local v1, "curzoom":[Ljava/lang/String;
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_zoom"

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 96
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getZoomCursorMaxStep()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 97
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getZoomBarValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v10

    .line 98
    const-string v10, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "===> current zoom : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v10, "currentZoom"

    invoke-virtual {v4, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .end local v1    # "curzoom":[Ljava/lang/String;
    :cond_4
    const-string v10, "secureCamera"

    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const-string v10, "useSecureLockImage"

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->setChangingToOtherActivity(Z)V

    .line 105
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 107
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v11, 0x64

    invoke-interface {v10, v4, v11}, Lcom/lge/camera/ControllerFunction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .end local v5    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v8    # "uriStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "video":Lcom/lge/camera/VideoFile;
    :goto_2
    const-string v10, "CameraApp"

    const-string v11, "DisplayAfterCaptureView-end"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "CameraApp"

    const-string v11, "DisplayCamcorderPostview NullPointerException:"

    invoke-static {v10, v11, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_2

    .line 111
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "CameraApp"

    const-string v11, "DisplayCamcorderPostview IndexOutOfBoundsException:"

    invoke-static {v10, v11, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_2
.end method
