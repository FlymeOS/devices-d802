.class public Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
.super Lcom/lge/camera/controller/IndicatorController;
.source "CamcorderIndicatorController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/IndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideIndicator()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f0d0039

    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00ce

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 34
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iput-boolean v5, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mInit:Z

    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateGpsIndicator()V

    .line 39
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateStabilizationIndicator()V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateStorageIndicator()V

    .line 44
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 46
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    .line 49
    .local v0, "degree":I
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0041

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 50
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003e

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 51
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003f

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 52
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0043

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 53
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003c

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 54
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0044

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 55
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003d

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 56
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d003b

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 62
    .end local v0    # "degree":I
    :cond_0
    return-void
.end method

.method protected invalidateParentLayout()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 233
    return-void
.end method

.method public showIndicator()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0039

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorIn(Z)V
    .locals 5
    .param p1, "useAnimation"    # Z

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0d0044

    const/4 v2, 0x1

    .line 86
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 91
    :cond_0
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 93
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d003c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorOut(Z)V
    .locals 4
    .param p1, "useAnimation"    # Z

    .prologue
    const v3, 0x7f0d0044

    const/4 v2, 0x0

    .line 115
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 119
    :cond_0
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 121
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 122
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d003c

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAudioIndicator()V
    .locals 5

    .prologue
    .line 156
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAudioIndicator : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mInit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mInit:Z

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0040

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 161
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_audio_recording"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 162
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setContentDescription(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;)V

    goto :goto_0
.end method

.method public updateFlashIndicator(ZLjava/lang/String;)V
    .locals 3
    .param p1, "useLocalSetting"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-boolean v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mInit:Z

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0041

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 174
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 177
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateModeMenuIndicator()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 238
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 239
    const-string v1, ""

    invoke-super {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator()V

    goto :goto_0
.end method

.method public updateSizeIndicator()V
    .locals 4

    .prologue
    .line 141
    iget-boolean v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mInit:Z

    if-nez v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0042

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 147
    .local v0, "icon":Lcom/lge/camera/components/RotateImageView;
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_preview_size_on_device"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 148
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 150
    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setContentDescription(Landroid/view/View;Lcom/lge/camera/setting/ListPreference;)V

    goto :goto_0
.end method

.method public updateStabilizationIndicator()V
    .locals 5

    .prologue
    .line 206
    iget-boolean v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mInit:Z

    if-nez v3, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d003f

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageView;

    .line 210
    .local v1, "icon":Lcom/lge/camera/components/RotateImageView;
    if-eqz v1, :cond_0

    .line 213
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_stabilization"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 214
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    const v4, 0x7f02005d

    if-eq v3, v4, :cond_2

    .line 218
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a03a5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->setContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
