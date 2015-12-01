.class public Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;
.super Lcom/lge/camera/dialog/HelpRotateDialog;
.source "HelpVoicePhotoPopupRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/HelpRotateDialog;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 34
    return-void
.end method

.method private isDontNeedToSoundWord()Z
    .locals 15

    .prologue
    .line 143
    :try_start_0
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a013c

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "commandWordCheese":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a0142

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "soundWordCheese":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a013e

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "commandWordSmile":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a0144

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "soundWordSmile":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a013f

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "commandWordWhisky":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a0145

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 158
    .local v12, "soundWordWhisky":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a013b

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "commandWordKimchi":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a0141

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "soundWordKimchi":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a013d

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "commandWordLG":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a0143

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "soundWordLG":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a0140

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "commandWordTorimasu":Ljava/lang/String;
    iget-object v13, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v14, 0x7f0a0146

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, "soundWordTorimasu":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "whiskey"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "whisky"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eqz v13, :cond_1

    .line 180
    const/4 v13, 0x1

    .line 189
    .end local v0    # "commandWordCheese":Ljava/lang/String;
    .end local v1    # "commandWordKimchi":Ljava/lang/String;
    .end local v2    # "commandWordLG":Ljava/lang/String;
    .end local v3    # "commandWordSmile":Ljava/lang/String;
    .end local v4    # "commandWordTorimasu":Ljava/lang/String;
    .end local v5    # "commandWordWhisky":Ljava/lang/String;
    .end local v7    # "soundWordCheese":Ljava/lang/String;
    .end local v8    # "soundWordKimchi":Ljava/lang/String;
    .end local v9    # "soundWordLG":Ljava/lang/String;
    .end local v10    # "soundWordSmile":Ljava/lang/String;
    .end local v11    # "soundWordTorimasu":Ljava/lang/String;
    .end local v12    # "soundWordWhisky":Ljava/lang/String;
    :goto_0
    return v13

    .line 183
    :catch_0
    move-exception v6

    .line 184
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v13, "CameraApp"

    const-string v14, "NullPointerException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const/4 v13, 0x0

    goto :goto_0

    .line 186
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 187
    .local v6, "e":Ljava/util/MissingFormatArgumentException;
    const-string v13, "CameraApp"

    const-string v14, "MissingFormatArgumentException:"

    invoke-static {v13, v14, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .end local v6    # "e":Ljava/util/MissingFormatArgumentException;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private setMultiCommandHelpGuide(Landroid/view/View;)V
    .locals 14
    .param p1, "helpDialogView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    const v7, 0x7f0d0237

    :try_start_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, "voiceSoundText_cheese":Landroid/widget/TextView;
    const v7, 0x7f0d023b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 63
    .local v4, "voiceSoundText_smile":Landroid/widget/TextView;
    const v7, 0x7f0d023f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 65
    .local v6, "voiceSoundText_whisky":Landroid/widget/TextView;
    const v7, 0x7f0d0243

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    .local v3, "voiceSoundText_kimchi":Landroid/widget/TextView;
    const v7, 0x7f0d0247

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "voiceSoundText_LG":Landroid/widget/TextView;
    const v7, 0x7f0d024b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 72
    .local v5, "voiceSoundText_torimasu":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->isDontNeedToSoundWord()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    const v10, 0x7f0d0235

    const/4 v11, 0x0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 96
    const v10, 0x7f0d0239

    const/4 v11, 0x1

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 98
    const v10, 0x7f0d023d

    const/4 v11, 0x2

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 100
    const v10, 0x7f0d0241

    const/4 v11, 0x3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 102
    const v10, 0x7f0d0245

    const/4 v11, 0x4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 104
    const v10, 0x7f0d0249

    const/4 v11, 0x5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v10, v11, v7}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V

    .line 107
    iget-object v7, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v7, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v11, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v7, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v11, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/16 v12, 0xb4

    invoke-static {v7, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v7, v9

    :goto_1
    invoke-static {v10, p1, v7}, Lcom/lge/camera/util/DialogCreater;->setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V

    .line 116
    .end local v1    # "voiceSoundText_LG":Landroid/widget/TextView;
    .end local v2    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .end local v3    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .end local v4    # "voiceSoundText_smile":Landroid/widget/TextView;
    .end local v5    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .end local v6    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :goto_2
    return-void

    .line 80
    .restart local v1    # "voiceSoundText_LG":Landroid/widget/TextView;
    .restart local v2    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .restart local v3    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .restart local v4    # "voiceSoundText_smile":Landroid/widget/TextView;
    .restart local v5    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .restart local v6    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :cond_1
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0a0142

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0a0144

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0a0145

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0a0141

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0a0143

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string v7, "[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v13, 0x7f0a0146

    invoke-interface {v12, v13}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 111
    .end local v1    # "voiceSoundText_LG":Landroid/widget/TextView;
    .end local v2    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .end local v3    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .end local v4    # "voiceSoundText_smile":Landroid/widget/TextView;
    .end local v5    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .end local v6    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v7, "CameraApp"

    const-string v8, "NullPointerException:"

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "voiceSoundText_LG":Landroid/widget/TextView;
    .restart local v2    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .restart local v3    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .restart local v4    # "voiceSoundText_smile":Landroid/widget/TextView;
    .restart local v5    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .restart local v6    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :cond_2
    move v7, v8

    .line 107
    goto/16 :goto_1

    .line 113
    .end local v1    # "voiceSoundText_LG":Landroid/widget/TextView;
    .end local v2    # "voiceSoundText_cheese":Landroid/widget/TextView;
    .end local v3    # "voiceSoundText_kimchi":Landroid/widget/TextView;
    .end local v4    # "voiceSoundText_smile":Landroid/widget/TextView;
    .end local v5    # "voiceSoundText_torimasu":Landroid/widget/TextView;
    .end local v6    # "voiceSoundText_whisky":Landroid/widget/TextView;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/util/MissingFormatArgumentException;
    const-string v7, "CameraApp"

    const-string v8, "MissingFormatArgumentException:"

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method private setSpeakerClickListener(Landroid/view/View;IILjava/lang/String;)V
    .locals 2
    .param p1, "helpDialogView"    # Landroid/view/View;
    .param p2, "resId"    # I
    .param p3, "voiceSound"    # I
    .param p4, "talkBackMessage"    # Ljava/lang/String;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .local v0, "speakerImage":Landroid/widget/ImageView;
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v1, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;

    invoke-direct {v1, p0, p3}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .end local v0    # "speakerImage":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method


# virtual methods
.method public create(ZI)V
    .locals 3
    .param p1, "useCheckBox"    # Z
    .param p2, "dialogId"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/lge/camera/dialog/HelpRotateDialog;->create(ZI)V

    .line 40
    iget-object v1, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "value":Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setAudioRecogEngineStop()V

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 45
    return-void
.end method

.method protected getHorizontalHelpDialogWidth()I
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/camera/util/DialogCreater;->getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method protected getVerticalMessageScrollWidth()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, -0x1

    return v0
.end method

.method protected inflateHelpDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f03003a

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 205
    iget-object v0, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setAudioRecogEngineStart()V

    .line 206
    invoke-super {p0}, Lcom/lge/camera/dialog/HelpRotateDialog;->onDismiss()V

    .line 207
    return-void
.end method

.method protected setExtraContents(Landroid/view/View;)V
    .locals 0
    .param p1, "rotateHelpView"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->setMultiCommandHelpGuide(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public startRotation(I)V
    .locals 6
    .param p1, "degree"    # I

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/lge/camera/dialog/HelpRotateDialog;->startRotation(I)V

    .line 121
    iget-object v1, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    const/16 v5, 0xb4

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/DialogCreater;->setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V

    .line 124
    return-void
.end method
