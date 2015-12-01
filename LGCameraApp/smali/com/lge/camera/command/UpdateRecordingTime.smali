.class public Lcom/lge/camera/command/UpdateRecordingTime;
.super Lcom/lge/camera/command/Command;
.source "UpdateRecordingTime.java"


# instance fields
.field private final mThousand:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 35
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mThousand:I

    .line 39
    return-void
.end method

.method private checkUHDStopCondition(J)Z
    .locals 9
    .param p1, "recSeconds"    # J

    .prologue
    const/4 v4, 0x0

    .line 272
    const-wide/16 v2, 0x127

    .line 273
    .local v2, "warningTime":J
    const-wide/16 v0, 0x12d

    .line 274
    .local v0, "fininshTime":J
    const-string v5, "3840x2160"

    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_preview_size_on_device"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    const-wide/16 v6, 0x127

    cmp-long v5, p1, v6

    if-nez v5, :cond_1

    .line 277
    iget-object v5, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a0398

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->toastLong(Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return v4

    .line 279
    :cond_1
    const-wide/16 v6, 0x12d

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    .line 280
    iget-object v4, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.StopRecording"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 281
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private recordingIconBlink(J)V
    .locals 5
    .param p1, "seconds"    # J

    .prologue
    const/4 v4, 0x0

    .line 225
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d01b4

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 226
    .local v0, "recIcon":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 227
    const v1, 0x7f02045d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 229
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTextRecordingIndicator(JJJJ)V
    .locals 7
    .param p1, "minutes"    # J
    .param p3, "hours"    # J
    .param p5, "remainderMinutes"    # J
    .param p7, "remainderSeconds"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    iget-object v2, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01b3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    .local v0, "recTimeText":Landroid/widget/TextView;
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 259
    const-string v2, "%02d/60"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "timeTextMMS":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const-wide/16 v2, 0x1

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    .line 263
    const-string v2, "60/60"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .end local v1    # "timeTextMMS":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    const-string v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private shutterButtonBlink()V
    .locals 4

    .prologue
    .line 241
    iget-object v2, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0182

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 243
    .local v1, "shutterBlinkAnimation":Lcom/lge/camera/components/RotateImageButton;
    iget-object v2, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d01b4

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 244
    .local v0, "recIcon":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 245
    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 246
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 248
    :cond_0
    return-void
.end method

.method private updateRecordingTimeStateIdle()V
    .locals 8

    .prologue
    .line 105
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d01b3

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 106
    .local v5, "recTimeText":Landroid/widget/TextView;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 108
    .local v0, "currentCarrierCode":I
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v3

    .line 109
    .local v3, "isMMSMode":Z
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v1

    .line 110
    .local v1, "isAttachIntent":Z
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v2

    .line 112
    .local v2, "isAttachMode":Z
    if-nez v3, :cond_0

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v6, 0x6

    if-ne v0, v6, :cond_1

    .line 114
    const-string v6, "00/60"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d01bd

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    .line 120
    .local v4, "recProgress":Lcom/lge/camera/components/RecProgressBar;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 121
    return-void

    .line 116
    .end local v4    # "recProgress":Lcom/lge/camera/components/RecProgressBar;
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0a0186

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRecordingTimeStateRecording(J)V
    .locals 33
    .param p1, "seconds"    # J

    .prologue
    .line 125
    const-wide/16 v28, 0x3c

    div-long v6, p1, v28

    .line 126
    .local v6, "minutes":J
    const-wide/16 v28, 0x3c

    div-long v8, v6, v28

    .line 127
    .local v8, "hours":J
    const-wide/16 v28, 0x3c

    mul-long v28, v28, v8

    sub-long v10, v6, v28

    .line 128
    .local v10, "remainderMinutes":J
    const-wide/16 v28, 0x3c

    mul-long v28, v28, v6

    sub-long v12, p1, v28

    .line 130
    .local v12, "remainderSeconds":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v14

    .line 131
    .local v14, "isAttachMode":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v16

    .line 132
    .local v16, "isMMSMode":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v4

    .local v4, "isAttachIntent":Z
    move-object/from16 v5, p0

    .line 134
    invoke-direct/range {v5 .. v13}, Lcom/lge/camera/command/UpdateRecordingTime;->setTextRecordingIndicator(JJJJ)V

    .line 135
    invoke-direct/range {p0 .. p2}, Lcom/lge/camera/command/UpdateRecordingTime;->recordingIconBlink(J)V

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/command/UpdateRecordingTime;->shutterButtonBlink()V

    .line 138
    const/16 v17, 0x0

    .line 139
    .local v17, "progress":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getIsFileSizeLimitReached()Z

    move-result v15

    .line 140
    .local v15, "isFileSizeLimitReached":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getRecordingSizeLimit()J

    move-result-wide v24

    .line 141
    .local v24, "recordingSizeLimit":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getRecordingDurationLimit()J

    move-result-wide v20

    .line 142
    .local v20, "recordingDurationLimit":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getVideoFileSize()J

    move-result-wide v26

    .line 143
    .local v26, "videoFileSize":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const v28, 0x7f0d01bd

    move/from16 v0, v28

    invoke-interface {v5, v0}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/lge/camera/components/RecProgressBar;

    .line 146
    .local v22, "recordingProgressBar":Lcom/lge/camera/components/RecProgressBar;
    if-nez v16, :cond_0

    if-nez v4, :cond_5

    if-eqz v14, :cond_5

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v5

    const/16 v28, 0x6

    move/from16 v0, v28

    if-eq v5, v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v5

    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v5, v0, :cond_5

    .line 149
    :cond_1
    if-eqz v15, :cond_4

    .line 150
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v17

    .line 151
    const-string v5, "CameraApp"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Limit reached! barmax:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_2
    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 222
    :cond_3
    :goto_1
    return-void

    .line 153
    :cond_4
    long-to-float v5, v12

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMMSMaxDuration()I

    move-result v28

    move/from16 v0, v28

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v5, v5, v28

    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v5, v5, v28

    float-to-int v0, v5

    move/from16 v17, v0

    .line 155
    const-wide/16 v28, 0x0

    cmp-long v5, v12, v28

    if-nez v5, :cond_2

    if-eqz v17, :cond_2

    .line 156
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v17

    goto :goto_0

    .line 164
    :cond_5
    if-nez v16, :cond_6

    if-eqz v14, :cond_a

    const-wide/16 v28, 0x0

    cmp-long v5, v24, v28

    if-eqz v5, :cond_a

    const-wide/16 v28, 0x0

    cmp-long v5, v20, v28

    if-eqz v5, :cond_6

    const-wide/32 v28, 0x6ddd00

    cmp-long v5, v20, v28

    if-nez v5, :cond_a

    .line 167
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v23

    .line 168
    .local v23, "videoFile":Ljava/io/File;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RecProgressBar;->setVisibility(I)V

    .line 169
    if-eqz v15, :cond_9

    .line 170
    move-wide/from16 v26, v24

    .line 171
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v17

    .line 172
    const-string v5, "CameraApp"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Limit reached! barmax:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_7
    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 218
    .end local v23    # "videoFile":Ljava/io/File;
    :cond_8
    :goto_3
    if-eqz v15, :cond_3

    .line 219
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->invalidate()V

    goto/16 :goto_1

    .line 174
    .restart local v23    # "videoFile":Ljava/io/File;
    :cond_9
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 175
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 176
    const-string v5, "CameraApp"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "FileSize: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    mul-long v28, v28, v26

    div-long v28, v28, v24

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v17, v0

    goto :goto_2

    .line 181
    .end local v23    # "videoFile":Ljava/io/File;
    :cond_a
    if-eqz v14, :cond_c

    const-wide/16 v28, 0x0

    cmp-long v5, v20, v28

    if-eqz v5, :cond_c

    const-wide/16 v28, 0x0

    cmp-long v5, v24, v28

    if-nez v5, :cond_c

    .line 182
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RecProgressBar;->setVisibility(I)V

    .line 183
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, p1

    cmp-long v5, v28, v20

    if-ltz v5, :cond_b

    .line 184
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v17

    .line 185
    const-string v5, "CameraApp"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Limit reached! barmax:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    goto/16 :goto_3

    .line 187
    :cond_b
    const-string v5, "CameraApp"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "rectime: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, p1

    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    div-long v28, v28, v20

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v17, v0

    goto :goto_4

    .line 191
    :cond_c
    if-eqz v14, :cond_8

    const-wide/16 v28, 0x0

    cmp-long v5, v20, v28

    if-nez v5, :cond_d

    const-wide/32 v28, 0x6ddd00

    cmp-long v5, v20, v28

    if-nez v5, :cond_8

    const-wide/16 v28, 0x0

    cmp-long v5, v24, v28

    if-eqz v5, :cond_8

    .line 195
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RecProgressBar;->setVisibility(I)V

    .line 197
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, p1

    cmp-long v5, v28, v20

    if-gez v5, :cond_e

    if-eqz v15, :cond_f

    .line 198
    :cond_e
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v17

    .line 215
    :goto_5
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    goto/16 :goto_3

    .line 200
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v23

    .line 201
    .restart local v23    # "videoFile":Ljava/io/File;
    if-eqz v23, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v26

    .line 204
    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    mul-long v28, v28, v26

    div-long v28, v28, v24

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v19, v0

    .line 206
    .local v19, "progressBySize":I
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, p1

    invoke-virtual/range {v22 .. v22}, Lcom/lge/camera/components/RecProgressBar;->getMax()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    div-long v28, v28, v20

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v18, v0

    .line 209
    .local v18, "progressByDuration":I
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_10

    move/from16 v17, v19

    .line 211
    :goto_6
    goto :goto_5

    :cond_10
    move/from16 v17, v18

    .line 209
    goto :goto_6
.end method


# virtual methods
.method public execute()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 43
    const-string v1, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UpdateRecordingTime, video state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 48
    .local v6, "now":J
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStartTime()J

    move-result-wide v10

    sub-long v2, v6, v10

    .line 50
    .local v2, "delta":J
    rem-long v10, v2, v12

    sub-long v4, v12, v10

    .line 51
    .local v4, "next_update_delay":J
    long-to-float v1, v2

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v8, v1

    .line 52
    .local v8, "seconds":J
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v8, v9}, Lcom/lge/camera/ControllerFunction;->setCurrentRecordingTime(J)V

    .line 53
    invoke-direct {p0, v8, v9}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateRecording(J)V

    .line 55
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->useBackLightControlInRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-wide v10, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_SECOND:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "RecordingSize":Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v10, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_RATIO:F

    invoke-static {v1, v10}, Lcom/lge/camera/util/Common;->backlightControlByVal(Landroid/app/Activity;F)V

    .line 61
    const-string v1, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "backlight set to :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_LCD_CONTROL_RATIO:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v0    # "RecordingSize":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v8, v9}, Lcom/lge/camera/command/UpdateRecordingTime;->checkUHDStopCondition(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "com.lge.camera.command.UpdateRecordingTime"

    invoke-interface {v1, v10, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 73
    .end local v2    # "delta":J
    .end local v4    # "next_update_delay":J
    .end local v6    # "now":J
    .end local v8    # "seconds":J
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateIdle()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 4
    .param p1, "time"    # Ljava/lang/Object;

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, "iTime":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    .line 87
    .local v2, "seconds":J
    iget-object v1, p0, Lcom/lge/camera/command/UpdateRecordingTime;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateRecording(J)V

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-direct {p0}, Lcom/lge/camera/command/UpdateRecordingTime;->updateRecordingTimeStateIdle()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
