.class public abstract Lcom/lge/camera/setting/VideoSettingMenu;
.super Lcom/lge/camera/setting/SettingMenu;
.source "VideoSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "setting"    # Lcom/lge/camera/setting/VideoSetting;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/setting/SettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;)V

    .line 18
    iput-object p3, p0, Lcom/lge/camera/setting/VideoSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 19
    iget-object v0, p0, Lcom/lge/camera/setting/VideoSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p0}, Lcom/lge/camera/setting/Setting;->addObserver(Ljava/util/Observer;)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic getSetting()Lcom/lge/camera/setting/Setting;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoSettingMenu;->getSetting()Lcom/lge/camera/setting/VideoSetting;

    move-result-object v0

    return-object v0
.end method

.method public getSetting()Lcom/lge/camera/setting/VideoSetting;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/setting/VideoSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    check-cast v0, Lcom/lge/camera/setting/VideoSetting;

    return-object v0
.end method

.method protected initMenu()V
    .locals 13

    .prologue
    .line 27
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .line 33
    .local v3, "j":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/lge/camera/setting/VideoSettingMenu;->menu:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "childMenu":Lcom/lge/camera/setting/SettingMenuItem;
    const-string v4, ""

    .line 37
    .local v4, "key":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v8, "removeIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/lge/camera/setting/VideoSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v11}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v7

    .line 40
    .local v7, "prefSize":I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_4

    .line 41
    iget-object v11, p0, Lcom/lge/camera/setting/VideoSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v11}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 42
    .local v5, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v5, :cond_1

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 48
    .local v10, "values":[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 50
    const-string v11, "key_setting"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "key_zoom"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 55
    new-instance v6, Lcom/lge/camera/setting/SettingMenuItem;

    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v2, v11}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 56
    .local v6, "parentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    .line 58
    .local v9, "selectedPos":I
    if-gez v9, :cond_2

    .line 59
    const/4 v9, 0x0

    .line 62
    :cond_2
    invoke-virtual {v6, v9}, Lcom/lge/camera/setting/SettingMenuItem;->setSelectedChildPosition(I)V

    .line 63
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuIconResources()[I

    move-result-object v11

    if-eqz v11, :cond_3

    .line 64
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuIconResources()[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v6, v11}, Lcom/lge/camera/setting/SettingMenuItem;->setIconResource(I)V

    .line 66
    :cond_3
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getCommand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/lge/camera/setting/SettingMenuItem;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/lge/camera/setting/SettingMenuItem;->setKey(Ljava/lang/String;)V

    .line 70
    iget-object v11, p0, Lcom/lge/camera/setting/VideoSettingMenu;->menu:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v3, 0x0

    :goto_1
    array-length v11, v1

    if-ge v3, v11, :cond_0

    .line 73
    new-instance v0, Lcom/lge/camera/setting/SettingMenuItem;

    .end local v0    # "childMenu":Lcom/lge/camera/setting/SettingMenuItem;
    aget-object v11, v1, v3

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v3, v11}, Lcom/lge/camera/setting/SettingMenuItem;-><init>(ILjava/lang/String;)V

    .line 74
    .restart local v0    # "childMenu":Lcom/lge/camera/setting/SettingMenuItem;
    aget-object v11, v10, v3

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/lge/camera/setting/SettingMenuItem;->setParameterValue(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/lge/camera/setting/SettingMenuItem;->setCommand(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v6, v0}, Lcom/lge/camera/setting/SettingMenuItem;->addChild(Lcom/lge/camera/setting/SettingMenuItem;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 80
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v6    # "parentMenu":Lcom/lge/camera/setting/SettingMenuItem;
    .end local v9    # "selectedPos":I
    .end local v10    # "values":[Ljava/lang/CharSequence;
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 81
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 82
    iget-object v11, p0, Lcom/lge/camera/setting/VideoSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v11}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v12

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 81
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 85
    :cond_5
    return-void
.end method
