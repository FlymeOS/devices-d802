.class public Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;
.super Lcom/lge/camera/controller/ShotModeMenuController;
.source "CamcorderShotModeMenuController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private getRecordModeItemResources(Ljava/lang/String;)[I
    .locals 5
    .param p1, "modeString"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "titleId":I
    const/4 v1, 0x0

    .line 61
    .local v1, "messageTextId":I
    const/4 v0, 0x0

    .line 63
    .local v0, "messageImageId":I
    const-string v3, "recordmode_normal"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    const v2, 0x7f0a0044

    .line 65
    const v1, 0x7f0a0359

    .line 66
    const v0, 0x7f0203a7

    .line 89
    :cond_0
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

    .line 67
    :cond_1
    const-string v3, "recordmode_wdr"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    const v2, 0x7f0a0107

    .line 70
    const v0, 0x7f0203a5

    .line 75
    :goto_1
    const v1, 0x7f0a0302

    goto :goto_0

    .line 72
    :cond_2
    const v2, 0x7f0a0106

    .line 73
    const v0, 0x7f0203a9

    goto :goto_1

    .line 76
    :cond_3
    const-string v3, "recordmode_dual"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const v2, 0x7f0a0282

    .line 78
    const v1, 0x7f0a0309

    .line 79
    const v0, 0x7f0203a4

    goto :goto_0

    .line 80
    :cond_4
    const-string v3, "recordmode_live_effect"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 81
    const v2, 0x7f0a0281

    .line 82
    const v1, 0x7f0a030e

    .line 83
    const v0, 0x7f0203a6

    goto :goto_0

    .line 84
    :cond_5
    const-string v3, "recordmode_smart_zoom"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const v2, 0x7f0a0284

    .line 86
    const v1, 0x7f0a035a

    .line 87
    const v0, 0x7f0203a8

    goto :goto_0
.end method

.method private makeRecordModeItemList()V
    .locals 13

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_video_record_mode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v11

    .line 38
    .local v11, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v11, :cond_0

    .line 39
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 40
    .local v8, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {v11}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "menuCommand":Ljava/lang/String;
    const/4 v4, 0x0

    .line 43
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 44
    .local v5, "desc":Ljava/lang/String;
    const/4 v6, 0x0

    .line 45
    .local v6, "imgResId":I
    const/4 v10, 0x0

    .line 46
    .local v10, "itemRes":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_0

    .line 47
    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->getRecordModeItemResources(Ljava/lang/String;)[I

    move-result-object v10

    .line 48
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 50
    const/4 v0, 0x2

    aget v6, v10, v0

    .line 51
    iget-object v12, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    const-string v2, "key_video_record_mode"

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;-><init>(Lcom/lge/camera/controller/ShotModeMenuController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
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
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "recordMode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 99
    .local v1, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mDescText:Landroid/widget/TextView;

    if-nez v4, :cond_1

    :cond_0
    move v0, v3

    .line 121
    :goto_0
    return v0

    .line 103
    :cond_1
    const-string v4, "recordmode_normal"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 105
    .restart local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v4, v3}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    move v0, v3

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 111
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 112
    .restart local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 114
    .restart local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v3, v0}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->setSelectedItem(I)V

    goto :goto_0

    .line 110
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    .line 121
    goto :goto_0
.end method

.method protected getCurrentItemTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 126
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "recordMode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 130
    .local v1, "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    const-string v3, "recordmode_normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 132
    .restart local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 145
    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v2    # "recordMode":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 136
    .restart local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .restart local v2    # "recordMode":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mModeItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    check-cast v1, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;

    .line 138
    .restart local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-virtual {v1}, Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/lge/camera/controller/ShotModeMenuController$ModeItem;
    .end local v2    # "recordMode":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a0044

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected makeItemList()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->makeRecordModeItemList()V

    .line 33
    return-void
.end method

.method protected setDefaultMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->hide()V

    .line 151
    iget v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mViewMode:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mListAdapter:Lcom/lge/camera/setting/ShotModeMenuListAdapter;

    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ShotModeMenuListAdapter;->isSelectedItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 154
    .local v2, "needChange":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 155
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    const-string v6, "recordmode_normal"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "mode_menu_command"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.setting.SetVideoRecordMode"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a0044

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "defaultString":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void

    .line 151
    .end local v1    # "defaultString":Ljava/lang/String;
    .end local v2    # "needChange":Z
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/CamcorderShotModeMenuController;->mGridAdapter:Lcom/lge/camera/setting/ShotModeMenuGridAdapter;

    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ShotModeMenuGridAdapter;->isSelectedItem(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
