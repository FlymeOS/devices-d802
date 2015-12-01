.class public Lcom/lge/camera/controller/camera/CameraShotModeMenuController;
.super Lcom/lge/camera/controller/ShotModeMenuController;
.source "CameraShotModeMenuController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/CameraShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/CameraShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraShotModeMenuController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private getSceneModeItemResources(Ljava/lang/String;)[I
    .locals 5
    .param p1, "sceneMode"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, "titleId":I
    const/4 v1, 0x0

    .line 191
    .local v1, "messageTextId":I
    const/4 v0, 0x0

    .line 193
    .local v0, "messageImageId":I
    const-string v3, "portrait"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "landscape"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "sunset"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Smart shutter"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/lge/camera/properties/FunctionProperties;->isSupportNightShotModeMenu(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "night"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSportShot()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "sports"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    :cond_1
    const/4 v3, 0x0

    .line 232
    :goto_0
    return-object v3

    .line 204
    :cond_2
    const-string v3, "sports"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    const v2, 0x7f0a00d4

    .line 206
    const v1, 0x7f0a029b

    .line 207
    const v0, 0x7f0203d3

    .line 232
    :cond_3
    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    goto :goto_0

    .line 208
    :cond_4
    const-string v3, "night"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    const v2, 0x7f0a00d5

    .line 210
    const v1, 0x7f0a036b

    .line 211
    const v0, 0x7f0203d1

    goto :goto_1
.end method

.method private getShotModeItemResources(Ljava/lang/String;)[I
    .locals 5
    .param p1, "modeString"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "titleId":I
    const/4 v1, 0x0

    .line 82
    .local v1, "messageTextId":I
    const/4 v0, 0x0

    .line 84
    .local v0, "messageImageId":I
    const-string v3, "shotmode_continuous"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const v2, 0x7f0a00fa

    .line 86
    const v1, 0x7f0a02b1

    .line 87
    const v0, 0x7f0203c6

    .line 155
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x2

    aput v0, v3, v4

    return-object v3

    .line 88
    :cond_0
    const-string v3, "shotmode_panorama"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    const v2, 0x7f0a00fe

    .line 90
    const v1, 0x7f0a02d7

    .line 91
    const v0, 0x7f0203cd

    goto :goto_0

    .line 92
    :cond_1
    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 93
    const v2, 0x7f0a00fe

    .line 94
    const v1, 0x7f0a02d7

    .line 95
    const v0, 0x7f0203cd

    goto :goto_0

    .line 96
    :cond_2
    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    const v2, 0x7f0a0102

    .line 98
    const v1, 0x7f0a030f

    .line 99
    const v0, 0x7f0203c8

    goto :goto_0

    .line 100
    :cond_3
    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 101
    const v2, 0x7f0a0352

    .line 102
    const v1, 0x7f0a0353

    .line 103
    const v0, 0x7f0203c9

    goto :goto_0

    .line 104
    :cond_4
    const-string v3, "shotmode_timemachine"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v3

    if-nez v3, :cond_5

    .line 106
    const v2, 0x7f0a0263

    .line 107
    const v1, 0x7f0a02db

    .line 115
    :goto_1
    const v0, 0x7f0203d5

    goto :goto_0

    .line 108
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 109
    const v2, 0x7f0a02f1

    .line 110
    const v1, 0x7f0a02f3

    goto :goto_1

    .line 112
    :cond_6
    const v2, 0x7f0a02f1

    .line 113
    const v1, 0x7f0a02db

    goto :goto_1

    .line 116
    :cond_7
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 117
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 118
    const v2, 0x7f0a0104

    .line 119
    const v1, 0x7f0a0304

    .line 120
    const v0, 0x7f0203c4

    goto/16 :goto_0

    .line 122
    :cond_8
    const v2, 0x7f0a00fa

    .line 123
    const v1, 0x7f0a02b1

    .line 124
    const v0, 0x7f0203c6

    goto/16 :goto_0

    .line 126
    :cond_9
    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "shotmode_front_beauty"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 128
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_b

    .line 129
    const v2, 0x7f0a0320

    .line 130
    const v1, 0x7f0a02d1

    .line 135
    :goto_2
    const v0, 0x7f0203cb

    goto/16 :goto_0

    .line 132
    :cond_b
    const v2, 0x7f0a0262

    .line 133
    const v1, 0x7f0a02d1

    goto :goto_2

    .line 136
    :cond_c
    const-string v3, "shotmode_clear_shot"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 137
    const v2, 0x7f0a025f

    .line 138
    const v1, 0x7f0a0305

    .line 139
    const v0, 0x7f0203c5

    goto/16 :goto_0

    .line 140
    :cond_d
    const-string v3, "shotmode_dual_camera"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 141
    const v2, 0x7f0a0267

    .line 142
    const v1, 0x7f0a0311

    .line 143
    const v0, 0x7f0203c7

    goto/16 :goto_0

    .line 145
    :cond_e
    const-string v3, "shotmode_refocus"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 146
    const v2, 0x7f0a03af

    .line 147
    const v1, 0x7f0a03ab

    .line 148
    const v0, 0x7f0203ce

    goto/16 :goto_0

    .line 151
    :cond_f
    const v2, 0x7f0a0044

    .line 152
    const v1, 0x7f0a0358

    .line 153
    const v0, 0x7f0203cc

    goto/16 :goto_0
.end method

.method private makeIntelligentAutoItemList()V
    .locals 10

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_smart_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 45
    .local v8, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v8, :cond_0

    .line 46
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "menuCommand":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a02fe

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0307

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "desc":Ljava/lang/String;
    const v6, 0x7f0203ca

    .line 50
    .local v6, "imgResId":I
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_smart_mode"

    const-string v3, "on"

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeSceneModeItemList()V
    .locals 13

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_scene_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v11

    .line 163
    .local v11, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v11, :cond_1

    .line 164
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 165
    .local v8, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "menuCommand":Ljava/lang/String;
    const/4 v4, 0x0

    .line 168
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 169
    .local v5, "desc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, "imgResId":I
    const/4 v10, 0x0

    .line 171
    .local v10, "itemRes":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_1

    .line 172
    const-string v0, "auto"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->getSceneModeItemResources(Ljava/lang/String;)[I

    move-result-object v10

    .line 174
    if-eqz v10, :cond_0

    .line 175
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 177
    const/4 v0, 0x2

    aget v6, v10, v0

    .line 178
    iget-object v12, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_scene_mode"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 186
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "desc":Ljava/lang/String;
    .end local v6    # "imgResId":I
    .end local v7    # "menuCommand":Ljava/lang/String;
    .end local v8    # "entryValues":[Ljava/lang/CharSequence;
    .end local v9    # "i":I
    .end local v10    # "itemRes":[I
    .end local v11    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private makeShotModeItemList()V
    .locals 13

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v11

    .line 59
    .local v11, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v11, :cond_0

    .line 60
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 61
    .local v8, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "menuCommand":Ljava/lang/String;
    const/4 v4, 0x0

    .line 64
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .local v5, "desc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 66
    .local v6, "imgResId":I
    const/4 v10, 0x0

    .line 67
    .local v10, "itemRes":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_0

    .line 68
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->getShotModeItemResources(Ljava/lang/String;)[I

    move-result-object v10

    .line 69
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    const/4 v0, 0x2

    aget v6, v10, v0

    .line 72
    iget-object v12, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_camera_shot_mode"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 77
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "desc":Ljava/lang/String;
    .end local v6    # "imgResId":I
    .end local v7    # "menuCommand":Ljava/lang/String;
    .end local v8    # "entryValues":[Ljava/lang/CharSequence;
    .end local v9    # "i":I
    .end local v10    # "itemRes":[I
    .end local v11    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCurrentItem()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 239
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_camera_shot_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "shotMode":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_smart_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "intelliAuto":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_scene_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "sceneMode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 244
    .local v2, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-nez v6, :cond_1

    :cond_0
    move v0, v5

    .line 293
    :goto_0
    return v0

    .line 251
    :cond_1
    const-string v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 253
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 254
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    const-string v6, "key_smart_mode"

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 258
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    goto :goto_0

    .line 252
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .end local v0    # "i":I
    :cond_3
    const-string v6, "shotmode_normal"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "auto"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 264
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 265
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v6, v5}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 268
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v6, v5}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    move v0, v5

    .line 269
    goto :goto_0

    .line 270
    :cond_4
    const-string v6, "shotmode_normal"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 271
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 272
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 273
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 274
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 277
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    goto/16 :goto_0

    .line 271
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 282
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 283
    iget-object v6, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 284
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 285
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    .line 288
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->setSelectedItem(I)V

    goto/16 :goto_0

    .line 282
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move v0, v5

    .line 293
    goto/16 :goto_0
.end method

.method protected getCurrentItemTitle()Ljava/lang/String;
    .locals 7

    .prologue
    .line 299
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 300
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "shotMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_smart_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "intelliAuto":Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_scene_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "sceneMode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 305
    .local v2, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 307
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 308
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_0

    const-string v5, "key_smart_mode"

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 337
    .end local v0    # "i":I
    .end local v1    # "intelliAuto":Ljava/lang/String;
    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v3    # "sceneMode":Ljava/lang/String;
    .end local v4    # "shotMode":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 306
    .restart local v0    # "i":I
    .restart local v1    # "intelliAuto":Ljava/lang/String;
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .restart local v3    # "sceneMode":Ljava/lang/String;
    .restart local v4    # "shotMode":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "i":I
    :cond_1
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "auto"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 315
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 316
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_6

    .line 317
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 319
    :cond_2
    const-string v5, "shotmode_normal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 320
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 321
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 322
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 324
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 320
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 329
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v2, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 330
    .restart local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 332
    invoke-virtual {v2}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 328
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 337
    .end local v0    # "i":I
    .end local v1    # "intelliAuto":Ljava/lang/String;
    .end local v2    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v3    # "sceneMode":Ljava/lang/String;
    .end local v4    # "shotMode":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0a0044

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method protected makeItemList()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->makeShotModeItemList()V

    .line 34
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->makeIntelligentAutoItemList()V

    .line 35
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->makeSceneModeItemList()V

    .line 36
    return-void
.end method

.method protected setDefaultMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->hide()V

    .line 344
    iget v4, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mViewMode:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->isSelectedItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 347
    .local v2, "needChange":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 348
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_normal"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "mode_menu_command"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetCameraShotMode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a0044

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "defaultString":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/camera/CameraShotModeMenuController$1;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/camera/CameraShotModeMenuController$1;-><init>(Lcom/lge/camera/controller/camera/CameraShotModeMenuController;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 361
    return-void

    .line 344
    .end local v1    # "defaultString":Ljava/lang/String;
    .end local v2    # "needChange":Z
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->isSelectedItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
