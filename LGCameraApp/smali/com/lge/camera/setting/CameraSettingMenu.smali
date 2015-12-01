.class public abstract Lcom/lge/camera/setting/CameraSettingMenu;
.super Lcom/lge/camera/setting/SettingMenu;
.source "CameraSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "setting"    # Lcom/lge/camera/setting/CameraSetting;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/setting/SettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;)V

    .line 22
    iput-object p3, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 23
    iget-object v0, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/Setting;->addObserver(Ljava/util/Observer;)V

    .line 24
    return-void
.end method

.method private getParentSettingMenuName(Lcom/lge/camera/setting/ListPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "listPref"    # Lcom/lge/camera/setting/ListPreference;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "menuName":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "key_voiceshutter"

    invoke-virtual {p1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    const v2, 0x7f0a013a

    invoke-interface {v1, v2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "key_time_machine"

    invoke-virtual {p1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    const v2, 0x7f0a02f1

    invoke-interface {v1, v2}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_1
    return-object v0
.end method

.method private helpGuideVariation(Ljava/lang/String;Lcom/lge/camera/setting/ListPreference;)Ljava/lang/String;
    .locals 2
    .param p1, "menuName"    # Ljava/lang/String;
    .param p2, "listPref"    # Lcom/lge/camera/setting/ListPreference;

    .prologue
    .line 90
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "key_help_guide"

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    const v1, 0x7f0a0135

    invoke-interface {v0, v1}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    const v1, 0x7f0a013a

    invoke-interface {v0, v1}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const-string v0, "key_help_guide"

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_camera_shot_mode"

    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    const v1, 0x7f0a0263

    invoke-interface {v0, v1}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mGet:Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;

    const v1, 0x7f0a02f1

    invoke-interface {v0, v1}, Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 104
    :cond_2
    return-object p1
.end method

.method private removeMenuIndexList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "removeIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v1}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 109
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getSetting()Lcom/lge/camera/setting/CameraSetting;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    check-cast v0, Lcom/lge/camera/setting/CameraSetting;

    return-object v0
.end method

.method public bridge synthetic getSetting()Lcom/lge/camera/setting/Setting;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/lge/camera/setting/CameraSettingMenu;->getSetting()Lcom/lge/camera/setting/CameraSetting;

    move-result-object v0

    return-object v0
.end method

.method protected initMenu()V
    .locals 14

    .prologue
    .line 31
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .line 33
    .local v3, "j":I
    const-string v6, ""

    .line 34
    .local v6, "menuName":Ljava/lang/String;
    const-string v4, ""

    .line 39
    .local v4, "key":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/lge/camera/setting/CameraSettingMenu;->menu:Ljava/util/ArrayList;

    .line 40
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v9, "removeIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 43
    .local v0, "childMenu":Lcom/lge/camera/setting/SettingMenuItem;
    iget-object v12, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v12}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v8

    .line 44
    .local v8, "prefSize":I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_4

    .line 45
    iget-object v12, p0, Lcom/lge/camera/setting/CameraSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v12}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 46
    .local v5, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v5, :cond_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 51
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 52
    .local v11, "values":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 53
    const-string v12, "key_setting"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "key_zoom"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 58
    invoke-direct {p0, v5}, Lcom/lge/camera/setting/CameraSettingMenu;->getParentSettingMenuName(Lcom/lge/camera/setting/ListPreference;)Ljava/lang/String;

    move-result-object v6

    .line 59
    new-instance v7, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-direct {v7, v2, v6}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 60
    .local v7, "parentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v10

    .line 62
    .local v10, "selectedPos":I
    if-gez v10, :cond_2

    .line 63
    const/4 v10, 0x0

    .line 66
    :cond_2
    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/SettingMenuItem;->setSelectedChildPosition(I)V

    .line 67
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuIconResources()[I

    move-result-object v12

    if-eqz v12, :cond_3

    .line 68
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuIconResources()[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v7, v12}, Lcom/lge/camera/setting/SettingMenuItem;->setIconResource(I)V

    .line 70
    :cond_3
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/lge/camera/setting/SettingMenuItem;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/SettingMenuItem;->setKey(Ljava/lang/String;)V

    .line 74
    iget-object v12, p0, Lcom/lge/camera/setting/CameraSettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const/4 v3, 0x0

    :goto_1
    array-length v12, v1

    if-ge v3, v12, :cond_0

    .line 77
    aget-object v12, v1, v3

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    invoke-direct {p0, v6, v5}, Lcom/lge/camera/setting/CameraSettingMenu;->helpGuideVariation(Ljava/lang/String;Lcom/lge/camera/setting/ListPreference;)Ljava/lang/String;

    move-result-object v6

    .line 79
    new-instance v0, Lcom/lge/camera/setting/SettingMenuItem;

    .end local v0    # "childMenu":Lcom/lge/camera/setting/SettingMenuItem;
    invoke-direct {v0, v3, v6}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 80
    .restart local v0    # "childMenu":Lcom/lge/camera/setting/SettingMenuItem;
    aget-object v12, v11, v3

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/lge/camera/setting/SettingMenuItem;->setParameterValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/SettingMenuItem;->addChild(Lcom/lge/camera/setting/SettingMenuItem;)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v7    # "parentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    .end local v10    # "selectedPos":I
    .end local v11    # "values":[Ljava/lang/CharSequence;
    :cond_4
    invoke-direct {p0, v9}, Lcom/lge/camera/setting/CameraSettingMenu;->removeMenuIndexList(Ljava/util/ArrayList;)V

    .line 87
    return-void
.end method
