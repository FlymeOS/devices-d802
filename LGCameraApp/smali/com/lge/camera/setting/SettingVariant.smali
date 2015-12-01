.class public Lcom/lge/camera/setting/SettingVariant;
.super Ljava/lang/Object;
.source "SettingVariant.java"


# instance fields
.field private final MINIMUM_FRONT_MODE_COUNT:I

.field private final PREFERENCE_NOT_FOUND:I

.field private SETTING_POSITION_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/setting/SettingVariant;->SETTING_POSITION_INDEX:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/setting/SettingVariant;->PREFERENCE_NOT_FOUND:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/setting/SettingVariant;->MINIMUM_FRONT_MODE_COUNT:I

    return-void
.end method

.method private addAuCloudMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1831
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1833
    const-string v1, "key_au_cloud"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1834
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1835
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeAuCloudListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1836
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1839
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addAutoReviewMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1137
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1140
    :cond_0
    const-string v1, "key_camera_auto_review"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1141
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 1142
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeCameraAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1143
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1153
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    :goto_0
    return-void

    .line 1146
    :cond_2
    const-string v1, "key_video_auto_review"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1147
    .restart local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 1148
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeVideoAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1149
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    goto :goto_0
.end method

.method private addDateStampMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1082
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isDateStampSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1085
    :cond_0
    const-string v1, "key_date_stamp"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1086
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 1087
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeDateStampListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1088
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1091
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addFrontShotMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 622
    const-string v10, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v10

    if-nez v10, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    const-string v10, "key_camera_shot_mode"

    invoke-virtual {p2, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    .line 629
    .local v7, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v7, :cond_0

    .line 630
    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f0202e6

    aput v11, v8, v10

    .line 634
    .local v8, "menuIconResources":[I
    const/4 v10, 0x1

    new-array v9, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f02019c

    aput v11, v9, v10

    .line 638
    .local v9, "settingMenuResources":[I
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0044

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 642
    .local v2, "entries":[Ljava/lang/CharSequence;
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "shotmode_normal"

    aput-object v11, v3, v10

    .line 646
    .local v3, "entriyValues":[Ljava/lang/CharSequence;
    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "1920x1080"

    aput-object v11, v4, v10

    .line 650
    .local v4, "extraInfos":[Ljava/lang/CharSequence;
    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "1920x1080"

    aput-object v11, v5, v10

    .line 654
    .local v5, "extraInfos2":[Ljava/lang/CharSequence;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "test"

    aput-object v11, v6, v10

    .line 657
    .local v6, "extraInfos3":[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 659
    const v10, 0x7f0202da

    invoke-static {v8, v10}, Lcom/lge/camera/util/Util;->appendToIntArray([II)[I

    move-result-object v8

    .line 662
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0262

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 665
    const-string v10, "shotmode_front_beauty"

    invoke-static {v3, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 668
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 669
    const-string v10, "1920x1080"

    invoke-static {v4, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 677
    :goto_1
    const-string v10, "1920x1080"

    invoke-static {v5, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 680
    const-string v10, "test"

    invoke-static {v6, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 685
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 686
    const v10, 0x7f0202a9

    invoke-static {v8, v10}, Lcom/lge/camera/util/Util;->appendToIntArray([II)[I

    move-result-object v8

    .line 689
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0267

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 692
    const-string v10, "shotmode_dual_camera"

    invoke-static {v3, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 695
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 696
    const-string v10, "1280x960"

    invoke-static {v4, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 704
    :goto_2
    invoke-direct {p0}, Lcom/lge/camera/setting/SettingVariant;->getPreviewSizeOnScreenForDualCamera()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 707
    const-string v10, "test"

    invoke-static {v6, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 712
    :cond_3
    array-length v10, v2

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    .line 716
    new-instance v7, Lcom/lge/camera/setting/ListPreference;

    .end local v7    # "listPref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, p1, v10}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 717
    .restart local v7    # "listPref":Lcom/lge/camera/setting/ListPreference;
    const-string v10, "key_camera_shot_mode"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00f9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 720
    invoke-virtual {v7, v9}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 721
    const-string v10, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 722
    const-string v10, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v7, v2}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual {v7, v3}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 725
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 726
    invoke-virtual {v7, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 727
    invoke-virtual {v7, v6}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 728
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 729
    const-string v10, "shotmode_normal"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 730
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 732
    const-string v10, "key_beautyshot"

    invoke-virtual {p2, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 733
    .local v1, "beautyShotPref":Lcom/lge/camera/setting/ListPreference;
    const-string v10, "key_beautyshot"

    invoke-virtual {p2, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 734
    .local v0, "beautyShotIndex":I
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 735
    invoke-virtual {p2, v7, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChildAt(Lcom/lge/camera/setting/CameraPreference;I)V

    .line 736
    if-eqz v1, :cond_0

    .line 737
    iget v10, p0, Lcom/lge/camera/setting/SettingVariant;->SETTING_POSITION_INDEX:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v1, v10}, Lcom/lge/camera/setting/PreferenceGroup;->addChildAt(Lcom/lge/camera/setting/CameraPreference;I)V

    goto/16 :goto_0

    .line 673
    .end local v0    # "beautyShotIndex":I
    .end local v1    # "beautyShotPref":Lcom/lge/camera/setting/ListPreference;
    :cond_4
    const-string v10, "1920x1080"

    invoke-static {v4, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    goto/16 :goto_1

    .line 700
    :cond_5
    const-string v10, "1280x720"

    invoke-static {v4, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    goto/16 :goto_2
.end method

.method private addHelpMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1669
    const-string v1, "key_help_guide"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1670
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1671
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeHelpListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1672
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1674
    :cond_0
    return-void
.end method

.method private addHideZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1606
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "back_camcorder"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    :cond_0
    const-string v1, "key_zoom"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1609
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 1610
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeHideZoomListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1611
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1614
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addIsoMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 827
    const-string v6, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, "modelName":Ljava/lang/String;
    const-string v6, "LG-D213n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "LG-D213k"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "LG-D221"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "LG-D213"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "LG-D213f"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "LG-D213TR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 841
    :cond_2
    const-string v6, "key_iso"

    invoke-virtual {p2, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 842
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 844
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 851
    .local v3, "menuIconResources":[I
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 858
    .local v5, "settingMenuIconResources":[I
    new-array v0, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00db

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00dc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v12

    .line 865
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v6, "auto"

    aput-object v6, v1, v9

    const-string v6, "100"

    aput-object v6, v1, v10

    const-string v6, "200"

    aput-object v6, v1, v11

    const-string v6, "400"

    aput-object v6, v1, v12

    .line 872
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 873
    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 874
    invoke-virtual {v2, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 875
    invoke-virtual {v2, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 844
    :array_0
    .array-data 4
        0x7f0203fc
        0x7f0203f8
        0x7f0203f9
        0x7f0203fa
    .end array-data

    .line 851
    :array_1
    .array-data 4
        0x7f0201f4
        0x7f0201f0
        0x7f0201f1
        0x7f0201f2
    .end array-data
.end method

.method private addMainBeautyShotMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 753
    const-string v24, "back_camera"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    const-string v24, "key_camera_shot_mode"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v16

    .line 757
    .local v16, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v16, :cond_2

    const-string v24, "shotmode_main_beauty"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 763
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 765
    if-eqz v16, :cond_0

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0262

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 768
    .local v3, "entry":Ljava/lang/CharSequence;
    const-string v2, "shotmode_main_beauty"

    .line 769
    .local v2, "entriyValue":Ljava/lang/CharSequence;
    const-string v4, "640x480"

    .line 770
    .local v4, "extraInfo":Ljava/lang/CharSequence;
    const-string v5, "640x480"

    .line 771
    .local v5, "extraInfo2":Ljava/lang/CharSequence;
    const-string v6, "test"

    .line 773
    .local v6, "extraInfo3":Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 774
    .local v17, "tempEntryValues":[Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    array-length v10, v0

    .line 776
    .local v10, "menuSize":I
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 777
    .local v11, "readEntries":[Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 778
    .local v12, "readEntriyValues":[Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 779
    .local v13, "readExtraInfos":[Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos2()[Ljava/lang/CharSequence;

    move-result-object v14

    .line 780
    .local v14, "readExtraInfos2":[Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos3()[Ljava/lang/CharSequence;

    move-result-object v15

    .line 782
    .local v15, "readExtraInfos3":[Ljava/lang/CharSequence;
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 783
    .local v23, "writeMenuIconResources":[I
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 784
    .local v18, "writeEntries":[Ljava/lang/CharSequence;
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    .line 785
    .local v19, "writeEntriyValues":[Ljava/lang/CharSequence;
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 786
    .local v20, "writeExtraInfos":[Ljava/lang/CharSequence;
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 787
    .local v21, "writeExtraInfos2":[Ljava/lang/CharSequence;
    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    .line 789
    .local v22, "writeExtraInfos3":[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 791
    .local v8, "isReadyToAdd":Z
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 792
    if-eqz v8, :cond_3

    .line 793
    aput-object v3, v18, v9

    .line 794
    aput-object v2, v19, v9

    .line 795
    aput-object v4, v20, v9

    .line 796
    aput-object v5, v21, v9

    .line 797
    aput-object v6, v22, v9

    .line 798
    const/4 v8, 0x0

    .line 799
    add-int/lit8 v9, v9, 0x1

    .line 801
    :cond_3
    aget-object v24, v11, v7

    aput-object v24, v18, v9

    .line 802
    aget-object v24, v12, v7

    aput-object v24, v19, v9

    .line 803
    aget-object v24, v13, v7

    aput-object v24, v20, v9

    .line 804
    aget-object v24, v14, v7

    aput-object v24, v21, v9

    .line 805
    aget-object v24, v15, v7

    aput-object v24, v22, v9

    .line 807
    const-string v24, "shotmode_full_continuous"

    aget-object v25, v19, v9

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 808
    const/4 v8, 0x1

    .line 791
    :cond_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 812
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 813
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 814
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 815
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 816
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 817
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private addManualAntiBandingMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1551
    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1553
    const-string v1, "key_camera_anti_banding"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1554
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1555
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeManualAntiBandingListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1556
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1559
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addManualKeyFocusValue(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 2069
    const-string v2, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    const-string v2, "key_focus"

    invoke-virtual {p2, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 2075
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 2076
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2077
    .local v1, "modelName":Ljava/lang/String;
    const-string v2, "LG-D227"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LG-D228"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2079
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeManualFocusListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 2080
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    goto :goto_0
.end method

.method private addPortraitPlusMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const v6, 0x7f0a0320

    .line 985
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_2

    .line 986
    const-string v3, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 987
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 989
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_2

    .line 990
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 992
    .local v0, "entries":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 993
    aget-object v3, v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0262

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 995
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 992
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    :cond_1
    invoke-virtual {v2, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1007
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "i":I
    .end local v2    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    :goto_1
    return-void

    .line 1000
    :cond_3
    const-string v3, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1001
    const-string v3, "key_beautyshot"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 1002
    .restart local v2    # "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_2

    .line 1003
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addRestoreMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1700
    const-string v1, "key_restore"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1701
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1702
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeRestoreListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1703
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1705
    :cond_0
    return-void
.end method

.method private addSaveAsFlippedMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1319
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    const-string v1, "key_save_direction"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1322
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1323
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeSaveAsFlippedListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1324
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1327
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addShutterSoundMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1381
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    :cond_0
    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1384
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 1385
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeShutterSoundListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1386
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1389
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addStorageMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1492
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    const-string v1, "key_storage"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1494
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1495
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeStorageListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1496
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1499
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addTagLocationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1261
    const-string v1, "key_camera_tag_location"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1262
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedTagLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    if-nez v0, :cond_0

    .line 1264
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeTagLocationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1265
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1268
    :cond_0
    return-void
.end method

.method private addTimerMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1014
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    :cond_0
    const-string v1, "key_camera_timer"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1017
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 1018
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeTimerListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1019
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1022
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addVideoStabilizationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1867
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1868
    const-string v1, "key_video_stabilization"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1870
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1871
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeVideoStabilizationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1873
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1876
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addVolumeKeyMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1751
    const-string v1, "key_volume"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1752
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1753
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeVolumeKeyListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1754
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1756
    :cond_0
    return-void
.end method

.method private changeDefaultImageSize(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 2041
    const-string v2, "key_camera_picturesize"

    invoke-virtual {p2, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 2043
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 2066
    :cond_0
    :goto_0
    return-void

    .line 2046
    :cond_1
    const-string v2, "TMO"

    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    const-string v2, "TMA"

    const-string v3, "ro.build.default_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "COM"

    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2050
    const-string v0, "2048x1536"

    .line 2051
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    .line 2052
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_2
    const-string v2, "TMO"

    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_0

    const-string v2, "TMA"

    const-string v3, "ro.build.default_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TRA"

    const-string v3, "ro.build.default_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const-string v2, "COM"

    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    const-string v2, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2058
    const-string v0, "3264x2448"

    .line 2059
    .restart local v0    # "defaultValue":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 2061
    .end local v0    # "defaultValue":Ljava/lang/String;
    :cond_4
    const-string v2, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2062
    const-string v0, "1280x960"

    .line 2063
    .restart local v0    # "defaultValue":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private changeFlashDefaultValue(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1733
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1735
    const-string v1, "key_flash"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1736
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 1737
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFlashDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1740
    .end local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    const-string v1, "key_light"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1741
    .restart local v0    # "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportLightFrame()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1742
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeLightFramePreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1743
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1745
    :cond_1
    return-void
.end method

.method private changeKeyfocusValues(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const v10, 0x7f070406

    .line 1996
    const/4 v5, 0x0

    .line 1997
    .local v5, "menuIconsExpand":[I
    const/4 v7, 0x0

    .line 1998
    .local v7, "settingMenuIconsExpand":[I
    const/4 v3, 0x0

    .line 1999
    .local v3, "indicatorIcons":[I
    const/4 v1, 0x0

    .line 2000
    .local v1, "entries":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 2001
    .local v2, "entryValues":[Ljava/lang/CharSequence;
    const-string v0, ""

    .line 2003
    .local v0, "defaultValue":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2005
    .local v6, "modelName":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v8

    const/16 v9, 0x19

    if-ne v8, v9, :cond_1

    .line 2007
    const-string v8, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2010
    invoke-direct {p0, p1, v10}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v5

    .line 2012
    const v8, 0x7f070412

    invoke-direct {p0, p1, v8}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v7

    .line 2014
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070407

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2016
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070408

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2018
    const-string v0, "auto"

    .line 2019
    invoke-direct {p0, p1, v10}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v3

    .line 2026
    :cond_0
    const-string v8, "key_focus"

    invoke-virtual {p2, v8}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 2028
    .local v4, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v4, :cond_1

    .line 2029
    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 2030
    invoke-virtual {v4, v7}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 2031
    invoke-virtual {v4, v3}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 2032
    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2033
    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2034
    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 2035
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    .end local v4    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private changePictureSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 110
    const-string v15, "back_camera"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, "front_camera"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v10, 0x0

    .line 116
    .local v10, "menuIcons":[I
    const/4 v11, 0x0

    .line 117
    .local v11, "menuIconsExpand":[I
    const/4 v13, 0x0

    .line 118
    .local v13, "settingMenuIcons":[I
    const/4 v14, 0x0

    .line 119
    .local v14, "settingMenuIconsExpand":[I
    const/4 v8, 0x0

    .line 120
    .local v8, "indicatorIcons":[I
    const/4 v3, 0x0

    .line 121
    .local v3, "entries":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 122
    .local v4, "entryValues":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 123
    .local v5, "extraInfo":[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 124
    .local v6, "extraInfo2":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 125
    .local v7, "extraInfo3":[Ljava/lang/CharSequence;
    const-string v2, "3264x2448"

    .line 127
    .local v2, "defaultValue":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v12

    .line 129
    .local v12, "modelName":Ljava/lang/String;
    const-string v15, "back_camera"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 130
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v15

    const/16 v16, 0x14

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v15

    const/16 v16, 0xf

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 134
    :cond_2
    const v15, 0x7f07025e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 135
    const v15, 0x7f07025f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 137
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 139
    const v15, 0x7f070260

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070261

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070262

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070263

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070264

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070265

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const-string v2, "3264x2448"

    .line 154
    :goto_1
    const v15, 0x7f070266

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 417
    :goto_2
    if-eqz v10, :cond_3

    if-eqz v13, :cond_3

    .line 418
    const-string v15, "CameraApp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "menuIcons.length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v10

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", settingMenuIcons.length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    array-length v0, v13

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_3
    const-string v15, "key_camera_picturesize"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v9

    .line 422
    .local v9, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v9, :cond_0

    .line 423
    invoke-virtual {v9, v11}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 424
    invoke-virtual {v9, v14}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 425
    invoke-virtual {v9, v8}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 426
    invoke-virtual {v9, v3}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {v9, v4}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v9, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {v9, v6}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {v9, v7}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v9, v2}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v9    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_4
    const-string v2, "3200x1920"

    goto :goto_1

    .line 156
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const-string v15, "LG-D415"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "LG-D415BK"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "LG-MS415"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 160
    :cond_6
    const v15, 0x7f0705de

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 162
    const v15, 0x7f0705df

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 164
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 166
    const v15, 0x7f0705e0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705e1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705e2

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705e3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705e4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705e5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 178
    const v15, 0x7f0705e0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 180
    const-string v2, "2304x1296"

    goto/16 :goto_2

    .line 181
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v15

    const/16 v16, 0x16

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const-string v15, "LGLS740"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 183
    const v15, 0x7f070651

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 185
    const v15, 0x7f070652

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 187
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 189
    const v15, 0x7f070653

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070654

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070655

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070656

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070657

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070658

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 201
    const v15, 0x7f070653

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 203
    const-string v2, "3264x1836"

    goto/16 :goto_2

    .line 204
    :cond_8
    const-string v15, "LG-D320f8"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "LG-D320g8"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "LG-D320AR"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "LG-D320J8"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "LG-D325g8"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "LG-D325f8"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "LG-D340f8"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 211
    :cond_9
    const v15, 0x7f07056b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 213
    const v15, 0x7f07056c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 215
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 217
    const v15, 0x7f07056d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07056e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07056f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070570

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070571

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070572

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 229
    const v15, 0x7f07056d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 231
    const-string v2, "3200x1920"

    goto/16 :goto_2

    .line 232
    :cond_a
    const-string v15, "LG-D385"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "LG-D373"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "LG-D375"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "LG-D373EU"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string v15, "LG-D375AR"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 237
    :cond_b
    const v15, 0x7f0705a9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 239
    const v15, 0x7f0705aa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 241
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 243
    const v15, 0x7f0705ab

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705ac

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705ad

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705ae

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705af

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705b0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 255
    const v15, 0x7f0705ab

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 257
    const-string v2, "3200x1920"

    goto/16 :goto_2

    .line 258
    :cond_c
    const-string v15, "LG-D213n"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "LG-D213k"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "LG-D221"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "LG-D213"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "LG-D213f"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string v15, "LG-D213TR"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 264
    :cond_d
    const v15, 0x7f0702f1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 266
    const v15, 0x7f0702f2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 268
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 270
    const v15, 0x7f0702f3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0702f4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0702f5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0702f6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0702f7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0702f8

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 282
    const v15, 0x7f0702f9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 284
    const-string v2, "1840x1104"

    goto/16 :goto_2

    .line 285
    :cond_e
    const-string v15, "LG-E980"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 286
    const v15, 0x7f0701b4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 288
    const v15, 0x7f0701b5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 290
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 292
    const v15, 0x7f0701b6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0701b7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0701b8

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0701b9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0701ba

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0701bb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 304
    const v15, 0x7f0701b6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 306
    const-string v2, "4160x3120"

    goto/16 :goto_2

    .line 307
    :cond_f
    const-string v15, "LG-D505"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 308
    const v15, 0x7f0700f0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 310
    const v15, 0x7f0700f1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 312
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 314
    const v15, 0x7f0700f2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0700f3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0700f4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0700f5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0700f6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0700f7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 326
    const v15, 0x7f0700f2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 328
    const-string v2, "3200x1920"

    goto/16 :goto_2

    .line 332
    :cond_10
    const-string v15, "front_camera"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 334
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    const-string v15, "LG-D405"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "LG-D415"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "LG-D415BK"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "LG-D405n"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "LG-D405TR"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "LG-D405h"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "LG-MS415"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string v15, "LG-D410"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 343
    :cond_11
    const v15, 0x7f0705f0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 345
    const v15, 0x7f0705f1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 347
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 349
    const v15, 0x7f0705f2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705f3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705f4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705f5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705f6

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0705f7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 361
    const v15, 0x7f0705f2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 363
    const-string v2, "640x480"

    goto/16 :goto_2

    .line 364
    :cond_12
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v15

    const/16 v16, 0x16

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    const-string v15, "LGLS740"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 366
    const v15, 0x7f070663

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 368
    const v15, 0x7f070664

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 370
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 372
    const v15, 0x7f070665

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070666

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070667

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070668

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070669

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07066a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 384
    const v15, 0x7f070665

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 386
    const-string v2, "1280x720"

    goto/16 :goto_2

    .line 387
    :cond_13
    const-string v15, "LGL41C"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    const-string v15, "LGL42G"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 389
    :cond_14
    const v15, 0x7f07057d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v10

    .line 391
    const v15, 0x7f07057e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 393
    const v15, 0x7f070418

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v13

    .line 395
    const v15, 0x7f07057f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v14

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070580

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070581

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070582

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070583

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070584

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 407
    const v15, 0x7f07057f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 409
    const-string v2, "1280x768"

    goto/16 :goto_2
.end method

.method private changeSmartMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 609
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const-string v1, "key_smart_mode"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 613
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 614
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    goto :goto_0
.end method

.method private changeVideoSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 436
    const-string v13, "back_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "front_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const/4 v9, 0x0

    .line 444
    .local v9, "menuIconsExpand":[I
    const/4 v11, 0x0

    .line 445
    .local v11, "settingMenuIconsExpand":[I
    const/4 v7, 0x0

    .line 446
    .local v7, "indicatorIcons":[I
    const/4 v2, 0x0

    .line 447
    .local v2, "entries":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 448
    .local v3, "entryValues":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 449
    .local v4, "extraInfo":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 450
    .local v5, "extraInfo2":[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 451
    .local v6, "extraInfo3":[Ljava/lang/CharSequence;
    const-string v1, "1280x720"

    .line 453
    .local v1, "defaultValue":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->readModelName()Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, "modelName":Ljava/lang/String;
    const-string v13, "ro.build.target_country"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 456
    .local v12, "strCountryIso":Ljava/lang/String;
    const-string v13, "back_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 459
    const-string v13, "front_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 461
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v13

    const/16 v14, 0x10

    if-ne v13, v14, :cond_3

    const-string v13, "LG-D405"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "LG-D415"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "LG-D415BK"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "LG-D405n"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "LG-D405TR"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "LG-D405h"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "LG-MS415"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "LG-D410"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "SCA"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 471
    :cond_2
    const v13, 0x7f070611

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v9

    .line 473
    const v13, 0x7f070612

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07060c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07060d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070613

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07060e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07060f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 485
    const v13, 0x7f070614

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v7

    .line 487
    const-string v1, "640x480"

    .line 514
    :goto_1
    const-string v13, "key_preview_size_on_device"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 516
    .local v8, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v8, :cond_0

    .line 517
    invoke-virtual {v8, v9}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 518
    invoke-virtual {v8, v11}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 519
    invoke-virtual {v8, v7}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 520
    invoke-virtual {v8, v2}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v8, v3}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {v8, v4}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {v8, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v8, v6}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v8, v1}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    .end local v8    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v13

    const/16 v14, 0x16

    if-ne v13, v14, :cond_0

    const-string v13, "LGLS740"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 490
    const v13, 0x7f070683

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v9

    .line 492
    const v13, 0x7f070684

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v11

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07067e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07067f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070685

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070680

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070681

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 504
    const v13, 0x7f070686

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v13}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v7

    .line 506
    const-string v1, "1280x720"

    goto/16 :goto_1
.end method

.method private getPreviewSizeOnScreenForDualCamera()Ljava/lang/String;
    .locals 2

    .prologue
    .line 743
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 744
    const-string v0, "1280x720"

    .line 748
    :goto_0
    return-object v0

    .line 745
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 746
    const-string v0, "1280x960"

    goto :goto_0

    .line 748
    :cond_1
    const-string v0, "1920x1080"

    goto :goto_0
.end method

.method private makeAuCloudListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1843
    new-array v1, v5, [I

    const v3, 0x7f0203e0

    aput v3, v1, v4

    .line 1844
    .local v1, "menuIconResourcesExpand":[I
    new-array v2, v5, [I

    const v3, 0x7f020122

    aput v3, v2, v4

    .line 1846
    .local v2, "settingMenuResources":[I
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1848
    .local v0, "auCloudPref":Lcom/lge/camera/setting/ListPreference;
    const-string v3, "key_au_cloud"

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a036f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1851
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1852
    const-string v3, "com.lge.camera.command.GotoAUCloud"

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1854
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1855
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1856
    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1858
    return-object v0
.end method

.method private makeCameraAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x4

    .line 1157
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 1164
    .local v3, "menuIconResourcesExpand":[I
    new-array v4, v7, [I

    fill-array-data v4, :array_1

    .line 1171
    .local v4, "settingMenuResourcesExpand":[I
    new-array v1, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v11

    .line 1178
    .local v1, "entries":[Ljava/lang/CharSequence;
    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v5, "off"

    aput-object v5, v2, v9

    const-string v5, "on"

    aput-object v5, v2, v8

    const-string v5, "on_delay_2sec"

    aput-object v5, v2, v10

    const-string v5, "on_delay_5sec"

    aput-object v5, v2, v11

    .line 1185
    .local v2, "entriyValues":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p1, v5}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1187
    .local v0, "cameraAutoReviewPref":Lcom/lge/camera/setting/ListPreference;
    const-string v5, "key_camera_auto_review"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0114

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1190
    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1192
    const-string v5, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1193
    const-string v5, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1196
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1197
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1198
    const-string v5, "off"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v0, v8}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1201
    return-object v0

    .line 1157
    :array_0
    .array-data 4
        0x7f020407
        0x7f020408
        0x7f020405
        0x7f020406
    .end array-data

    .line 1164
    :array_1
    .array-data 4
        0x7f0201fb
        0x7f0201fc
        0x7f0201f9
        0x7f0201fa
    .end array-data
.end method

.method private makeDateStampListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1095
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 1100
    .local v3, "menuIconResources":[I
    new-array v4, v7, [I

    const v5, 0x7f02012e

    aput v5, v4, v8

    .line 1104
    .local v4, "settingMenuResources":[I
    new-array v1, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 1109
    .local v1, "entries":[Ljava/lang/CharSequence;
    new-array v2, v9, [Ljava/lang/CharSequence;

    const-string v5, "off"

    aput-object v5, v2, v8

    const-string v5, "on"

    aput-object v5, v2, v7

    .line 1114
    .local v2, "entriyValues":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p1, v5}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1116
    .local v0, "dateStampPref":Lcom/lge/camera/setting/ListPreference;
    const-string v5, "key_date_stamp"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a033b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1119
    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1120
    const-string v5, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1121
    const-string v5, "com.lge.camera.command.setting.SetDateStamp"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1123
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1124
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1125
    const-string v5, "off"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1128
    return-object v0

    .line 1095
    :array_0
    .array-data 4
        0x7f0202a6
        0x7f0202a7
    .end array-data
.end method

.method private makeHelpListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1677
    new-array v1, v4, [I

    const v3, 0x7f020400

    aput v3, v1, v5

    .line 1678
    .local v1, "menuIconResourcesExpand":[I
    new-array v2, v4, [I

    const v3, 0x7f0202d6

    aput v3, v2, v5

    .line 1680
    .local v2, "settingMenuResources":[I
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1682
    .local v0, "helpPref":Lcom/lge/camera/setting/ListPreference;
    const-string v3, "key_help_guide"

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a035b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1685
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1686
    const-string v3, "com.lge.camera.command.ShowHelpActivity"

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1688
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1689
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1690
    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1692
    return-object v0
.end method

.method private makeHideZoomListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1618
    new-array v0, v4, [I

    const v3, 0x7f020318

    aput v3, v0, v5

    .line 1621
    .local v0, "menuIconResources":[I
    new-array v1, v4, [I

    const v3, 0x7f02024b

    aput v3, v1, v5

    .line 1625
    .local v1, "settingMenuResources":[I
    new-instance v2, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1627
    .local v2, "zoomPref":Lcom/lge/camera/setting/ListPreference;
    const-string v3, "key_zoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v2, v0}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1630
    invoke-virtual {v2, v1}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1631
    const-string v3, "com.lge.camera.command.ShowZoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1632
    const-string v3, "com.lge.camera.command.setting.SetZoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1633
    const-string v3, "com.lge.camera.command.ShowSettingZoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1635
    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1636
    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1637
    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1640
    return-object v2
.end method

.method private makeIconList(Landroid/content/Context;I)[I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceID"    # I

    .prologue
    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, "tempIconList":[I
    const/4 v2, 0x0

    .line 533
    .local v2, "tempTypedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 534
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v1, v3, [I

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 537
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-object v1
.end method

.method private makeLightFramePreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 1925
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 1929
    .local v3, "menuIconResourcesExpand":[I
    new-array v4, v7, [I

    fill-array-data v4, :array_1

    .line 1932
    .local v4, "settingMenuResourcesExpand":[I
    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    .line 1936
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v7, [Ljava/lang/CharSequence;

    const-string v5, "off"

    aput-object v5, v1, v9

    const-string v5, "on"

    aput-object v5, v1, v8

    .line 1938
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p1, v5}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1940
    .local v2, "lightFramePref":Lcom/lge/camera/setting/ListPreference;
    const-string v5, "key_light"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1941
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1944
    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1947
    invoke-virtual {v2, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1948
    invoke-virtual {v2, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1949
    const-string v5, "off"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v2, v8}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1952
    return-object v2

    .line 1925
    :array_0
    .array-data 4
        0x7f0202b3
        0x7f0202b4
    .end array-data

    .line 1929
    :array_1
    .array-data 4
        0x7f0201da
        0x7f0201db
    .end array-data
.end method

.method private makeManualAntiBandingListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 1563
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 1568
    .local v3, "menuIconResourcesExpand":[I
    new-array v4, v7, [I

    fill-array-data v4, :array_1

    .line 1573
    .local v4, "settingMenuResourcesExpand":[I
    new-array v1, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0122

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 1578
    .local v1, "entries":[Ljava/lang/CharSequence;
    new-array v2, v7, [Ljava/lang/CharSequence;

    const-string v5, "50"

    aput-object v5, v2, v9

    const-string v5, "60"

    aput-object v5, v2, v8

    .line 1583
    .local v2, "entriyValues":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p1, v5}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1585
    .local v0, "antiBandingPref":Lcom/lge/camera/setting/ListPreference;
    const-string v5, "key_camera_anti_banding"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1588
    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1589
    const-string v5, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1590
    const-string v5, "com.lge.camera.command.setting.SetCameraAntibanding"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1592
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1593
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1594
    const-string v5, "50"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0, v8}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1597
    return-object v0

    .line 1563
    :array_0
    .array-data 4
        0x7f0203de
        0x7f0203df
    .end array-data

    .line 1568
    :array_1
    .array-data 4
        0x7f0201d1
        0x7f0201d2
    .end array-data
.end method

.method private makeManualFocusListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v4, 0x3

    .line 2089
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 2095
    .local v2, "menuIconResourcesExpand":[I
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 2101
    .local v3, "settingMenuResourcesExpand":[I
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    .line 2107
    .local v0, "indicatorIconResources":[I
    new-instance v1, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2110
    .local v1, "keyfocusPref":Lcom/lge/camera/setting/ListPreference;
    const-string v4, "key_focus"

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 2113
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 2114
    const-string v4, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 2115
    const-string v4, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070407

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070408

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2120
    invoke-virtual {v1, v0}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 2121
    const-string v4, "auto"

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 2123
    return-object v1

    .line 2089
    nop

    :array_0
    .array-data 4
        0x7f0203ee
        0x7f0203f0
        0x7f0203ef
    .end array-data

    .line 2095
    :array_1
    .array-data 4
        0x7f0201dc
        0x7f0201de
        0x7f0201dd
    .end array-data

    .line 2101
    :array_2
    .array-data 4
        0x7f020061
        0x7f020063
        0x7f020062
    .end array-data
.end method

.method private makeRestoreListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1709
    new-array v0, v4, [I

    const v3, 0x7f020402

    aput v3, v0, v5

    .line 1710
    .local v0, "menuIconResourcesExpand":[I
    new-array v2, v4, [I

    const v3, 0x7f0202d7

    aput v3, v2, v5

    .line 1712
    .local v2, "settingMenuResources":[I
    new-instance v1, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1714
    .local v1, "restorePref":Lcom/lge/camera/setting/ListPreference;
    const-string v3, "key_restore"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v1, v0}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1717
    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1718
    const-string v3, "com.lge.camera.command.ShowResetDialog"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v1, v6}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1720
    invoke-virtual {v1, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1721
    invoke-virtual {v1, v6}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1722
    invoke-virtual {v1, v5}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1724
    return-object v1
.end method

.method private makeSaveAsFlippedListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 1331
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 1336
    .local v3, "menuIconResourcesExpand":[I
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 1341
    .local v5, "settingMenuResourcesExpand":[I
    new-array v0, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 1346
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v6, "off"

    aput-object v6, v1, v10

    const-string v6, "on"

    aput-object v6, v1, v9

    .line 1351
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    .line 1356
    .local v2, "indicatorIconResources":[I
    new-instance v4, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p1, v6}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1358
    .local v4, "saveDirectionPref":Lcom/lge/camera/setting/ListPreference;
    const-string v6, "key_save_direction"

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0130

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {v4, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1362
    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1364
    const-string v6, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1365
    const-string v6, "com.lge.camera.command.setting.SetSaveDirectionMode"

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1367
    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1368
    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1369
    const-string v6, "on"

    invoke-virtual {v4, v6}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {v4, v9}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1372
    return-object v4

    .line 1331
    :array_0
    .array-data 4
        0x7f020404
        0x7f020403
    .end array-data

    .line 1336
    :array_1
    .array-data 4
        0x7f0201f8
        0x7f0201f7
    .end array-data

    .line 1351
    :array_2
    .array-data 4
        0x7f02005d
        0x7f020086
    .end array-data
.end method

.method private makeShutterSoundListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1393
    const/4 v14, 0x5

    new-array v9, v14, [I

    fill-array-data v9, :array_0

    .line 1401
    .local v9, "menuIconResources_offExpand":[I
    const/4 v14, 0x4

    new-array v8, v14, [I

    fill-array-data v8, :array_1

    .line 1408
    .local v8, "menuIconResourcesExpand":[I
    const/4 v14, 0x5

    new-array v12, v14, [I

    fill-array-data v12, :array_2

    .line 1416
    .local v12, "settingMenuResources_offExpand":[I
    const/4 v14, 0x4

    new-array v11, v14, [I

    fill-array-data v11, :array_3

    .line 1423
    .local v11, "settingMenuResourcesExpand":[I
    const/4 v14, 0x5

    new-array v4, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0042

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0116

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    const/4 v14, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0117

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    const/4 v14, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0118

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    const/4 v14, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0119

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    .line 1431
    .local v4, "entries_off":[Ljava/lang/CharSequence;
    const/4 v14, 0x4

    new-array v3, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0116

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0117

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0118

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    const/4 v14, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0119

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 1438
    .local v3, "entries":[Ljava/lang/CharSequence;
    const/4 v14, 0x5

    new-array v6, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const-string v15, "off"

    aput-object v15, v6, v14

    const/4 v14, 0x1

    const-string v15, "0"

    aput-object v15, v6, v14

    const/4 v14, 0x2

    const-string v15, "1"

    aput-object v15, v6, v14

    const/4 v14, 0x3

    const-string v15, "2"

    aput-object v15, v6, v14

    const/4 v14, 0x4

    const-string v15, "3"

    aput-object v15, v6, v14

    .line 1446
    .local v6, "entriyValues_off":[Ljava/lang/CharSequence;
    const/4 v14, 0x4

    new-array v5, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v5, v14

    const/4 v14, 0x1

    const-string v15, "1"

    aput-object v15, v5, v14

    const/4 v14, 0x2

    const-string v15, "2"

    aput-object v15, v5, v14

    const/4 v14, 0x3

    const-string v15, "3"

    aput-object v15, v5, v14

    .line 1456
    .local v5, "entriyValues":[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1457
    move-object v7, v9

    .line 1458
    .local v7, "menuIcon":[I
    move-object v10, v12

    .line 1464
    .local v10, "settingMenuIcon":[I
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v1, v4

    .line 1466
    .local v1, "entery":[Ljava/lang/CharSequence;
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v2, v6

    .line 1469
    .local v2, "enteryValue":[Ljava/lang/CharSequence;
    :goto_2
    new-instance v13, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v14}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1471
    .local v13, "shutterSoundPref":Lcom/lge/camera/setting/ListPreference;
    const-string v14, "key_camera_shutter_sound"

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0115

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v13, v7}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1474
    invoke-virtual {v13, v10}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1475
    const-string v14, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1476
    const-string v14, "com.lge.camera.command.setting.SetCameraShutterSound"

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v13, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1478
    invoke-virtual {v13, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1479
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1480
    const-string v14, "0"

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1481
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1483
    return-object v13

    .line 1460
    .end local v1    # "entery":[Ljava/lang/CharSequence;
    .end local v2    # "enteryValue":[Ljava/lang/CharSequence;
    .end local v7    # "menuIcon":[I
    .end local v10    # "settingMenuIcon":[I
    .end local v13    # "shutterSoundPref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    move-object v7, v8

    .line 1461
    .restart local v7    # "menuIcon":[I
    move-object v10, v11

    .restart local v10    # "settingMenuIcon":[I
    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 1464
    goto :goto_1

    .restart local v1    # "entery":[Ljava/lang/CharSequence;
    :cond_2
    move-object v2, v5

    .line 1466
    goto :goto_2

    .line 1393
    :array_0
    .array-data 4
        0x7f020411
        0x7f02040d
        0x7f02040e
        0x7f02040f
        0x7f020410
    .end array-data

    .line 1401
    :array_1
    .array-data 4
        0x7f02040d
        0x7f02040e
        0x7f02040f
        0x7f020410
    .end array-data

    .line 1408
    :array_2
    .array-data 4
        0x7f020205
        0x7f020201
        0x7f020202
        0x7f020203
        0x7f020204
    .end array-data

    .line 1416
    :array_3
    .array-data 4
        0x7f020201
        0x7f020202
        0x7f020203
        0x7f020204
    .end array-data
.end method

.method private makeStorageListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 1503
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 1508
    .local v3, "menuIconResourcesExpand":[I
    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 1513
    .local v4, "settingMenuResourcesExpand":[I
    new-array v0, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a011f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a011e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 1518
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v6, "external memory"

    aput-object v6, v1, v10

    const-string v6, "internal storage"

    aput-object v6, v1, v9

    .line 1523
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    .line 1528
    .local v2, "indicatorIconResources":[I
    new-instance v5, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1530
    .local v5, "storagePref":Lcom/lge/camera/setting/ListPreference;
    const-string v6, "key_storage"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1531
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a011b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1533
    invoke-virtual {v5, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1534
    const-string v6, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1535
    const-string v6, "com.lge.camera.command.setting.SetStorage"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1537
    invoke-virtual {v5, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1538
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1539
    const-string v6, "external memory"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v5, v9}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1542
    return-object v5

    .line 1503
    :array_0
    .array-data 4
        0x7f0203fd
        0x7f0203fe
    .end array-data

    .line 1508
    :array_1
    .array-data 4
        0x7f0201f5
        0x7f0201f6
    .end array-data

    .line 1523
    :array_2
    .array-data 4
        0x7f020088
        0x7f02005d
    .end array-data
.end method

.method private makeTagLocationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 1272
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 1277
    .local v3, "menuIconResourcesExpand":[I
    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 1282
    .local v4, "settingMenuResourcesExpand":[I
    new-array v0, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 1287
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v6, "off"

    aput-object v6, v1, v10

    const-string v6, "on"

    aput-object v6, v1, v9

    .line 1292
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    .line 1297
    .local v2, "indicatorIconResources":[I
    new-instance v5, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1299
    .local v5, "tagLocationPref":Lcom/lge/camera/setting/ListPreference;
    const-string v6, "key_camera_tag_location"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1302
    invoke-virtual {v5, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1303
    const-string v6, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1304
    const-string v6, "com.lge.camera.command.setting.SetCameraGeoTag"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1306
    invoke-virtual {v5, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1307
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1308
    const-string v6, "off"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v5, v9}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1311
    return-object v5

    .line 1272
    :array_0
    .array-data 4
        0x7f0203f3
        0x7f0203f4
    .end array-data

    .line 1277
    :array_1
    .array-data 4
        0x7f0201e0
        0x7f0201e1
    .end array-data

    .line 1292
    :array_2
    .array-data 4
        0x7f02005d
        0x7f020086
    .end array-data
.end method

.method private makeTimerListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 1025
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 1032
    .local v3, "menuIconResourcesExpand":[I
    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 1039
    .local v4, "settingMenuResourcesExpand":[I
    new-array v0, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v12

    .line 1046
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v6, "0"

    aput-object v6, v1, v9

    const-string v6, "3"

    aput-object v6, v1, v10

    const-string v6, "5"

    aput-object v6, v1, v11

    const-string v6, "10"

    aput-object v6, v1, v12

    .line 1053
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    .line 1060
    .local v2, "indicatorIconResources":[I
    new-instance v5, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1062
    .local v5, "timerPref":Lcom/lge/camera/setting/ListPreference;
    const-string v6, "key_camera_timer"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1065
    invoke-virtual {v5, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1066
    const-string v6, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1067
    const-string v6, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1069
    invoke-virtual {v5, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1070
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1071
    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v5, v9}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1074
    return-object v5

    .line 1025
    :array_0
    .array-data 4
        0x7f020415
        0x7f020413
        0x7f020414
        0x7f020412
    .end array-data

    .line 1032
    :array_1
    .array-data 4
        0x7f020215
        0x7f020213
        0x7f020214
        0x7f020212
    .end array-data

    .line 1053
    :array_2
    .array-data 4
        0x7f02005d
        0x7f020081
        0x7f020080
        0x7f02007f
    .end array-data
.end method

.method private makeVideoAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x4

    .line 1209
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 1216
    .local v2, "menuIconResourcesExpand":[I
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    .line 1223
    .local v3, "settingMenuResourcesExpand":[I
    new-array v0, v7, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v11

    .line 1230
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v7, [Ljava/lang/CharSequence;

    const-string v5, "off"

    aput-object v5, v1, v9

    const-string v5, "on"

    aput-object v5, v1, v8

    const-string v5, "on_delay_2sec"

    aput-object v5, v1, v10

    const-string v5, "on_delay_5sec"

    aput-object v5, v1, v11

    .line 1237
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    new-instance v4, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1239
    .local v4, "videoAutoReviewPref":Lcom/lge/camera/setting/ListPreference;
    const-string v5, "key_video_auto_review"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a016d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v4, v2}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1243
    invoke-virtual {v4, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1245
    const-string v5, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1246
    const-string v5, "com.lge.camera.command.setting.SetVideoShowRecordedVideo"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1249
    invoke-virtual {v4, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1250
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1251
    const-string v5, "off"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v4, v8}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1254
    return-object v4

    .line 1209
    :array_0
    .array-data 4
        0x7f02040b
        0x7f02040c
        0x7f020409
        0x7f02040a
    .end array-data

    .line 1216
    :array_1
    .array-data 4
        0x7f0201ff
        0x7f020200
        0x7f0201fd
        0x7f0201fe
    .end array-data
.end method

.method private makeVideoStabilizationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 1882
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 1886
    .local v3, "menuIconResourcesExpand":[I
    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 1889
    .local v4, "settingMenuResourcesExpand":[I
    new-array v0, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    .line 1893
    .local v0, "entries":[Ljava/lang/CharSequence;
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v6, "off"

    aput-object v6, v1, v10

    const-string v6, "on"

    aput-object v6, v1, v9

    .line 1895
    .local v1, "entriyValues":[Ljava/lang/CharSequence;
    new-array v2, v8, [I

    fill-array-data v2, :array_2

    .line 1898
    .local v2, "indicatorIconResources":[I
    new-instance v5, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1900
    .local v5, "videoStabilizationPref":Lcom/lge/camera/setting/ListPreference;
    const-string v6, "key_video_stabilization"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0285

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v5, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1904
    invoke-virtual {v5, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1906
    const-string v6, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1909
    const-string v6, "com.lge.camera.command.setting.SetVideoStabilization"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1913
    invoke-virtual {v5, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1914
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1915
    const-string v6, "off"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v5, v9}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1918
    return-object v5

    .line 1882
    :array_0
    .array-data 4
        0x7f020418
        0x7f020419
    .end array-data

    .line 1886
    :array_1
    .array-data 4
        0x7f020216
        0x7f020217
    .end array-data

    .line 1895
    :array_2
    .array-data 4
        0x7f02005d
        0x7f020089
    .end array-data
.end method

.method private makeVolumeKeyListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1760
    const-string v13, "back_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "front_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 1764
    .local v4, "isCamcorder":Z
    :goto_0
    const/4 v13, 0x2

    new-array v6, v13, [I

    fill-array-data v6, :array_0

    .line 1768
    .local v6, "menuIconResourcesExpandCamera":[I
    const/4 v13, 0x2

    new-array v7, v13, [I

    fill-array-data v7, :array_1

    .line 1773
    .local v7, "menuIconResourcesExpandVideo":[I
    const/4 v13, 0x2

    new-array v9, v13, [I

    fill-array-data v9, :array_2

    .line 1777
    .local v9, "settingMenuResourcesExpandCamera":[I
    const/4 v13, 0x2

    new-array v10, v13, [I

    fill-array-data v10, :array_3

    .line 1782
    .local v10, "settingMenuResourcesExpandVideo":[I
    const/4 v13, 0x2

    new-array v1, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0365

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v13

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0367

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v13

    .line 1786
    .local v1, "cameraEntries":[Ljava/lang/CharSequence;
    const/4 v13, 0x2

    new-array v11, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0366

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0367

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 1791
    .local v11, "videoEntries":[Ljava/lang/CharSequence;
    const/4 v13, 0x2

    new-array v3, v13, [Ljava/lang/CharSequence;

    const/4 v13, 0x0

    const-string v14, "shutter"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "zoom"

    aput-object v14, v3, v13

    .line 1796
    .local v3, "entriyValues":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1797
    .local v5, "menuIcon":[I
    if-eqz v4, :cond_2

    move-object v5, v7

    .line 1800
    :goto_1
    const/4 v8, 0x0

    .line 1801
    .local v8, "settingMenuIcon":[I
    if-eqz v4, :cond_3

    move-object v8, v10

    .line 1804
    :goto_2
    if-eqz v4, :cond_4

    move-object v2, v11

    .line 1806
    .local v2, "entries":[Ljava/lang/CharSequence;
    :goto_3
    new-instance v12, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1808
    .local v12, "volumePref":Lcom/lge/camera/setting/ListPreference;
    const-string v13, "key_volume"

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0364

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v12, v5}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1811
    invoke-virtual {v12, v8}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1812
    const-string v13, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1813
    const-string v13, "com.lge.camera.command.setting.SetVolumeKey"

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v12, v2}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1815
    invoke-virtual {v12, v3}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1816
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1817
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVolumeHotKey()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1818
    const-string v13, "shutter"

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1822
    :goto_4
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1824
    return-object v12

    .line 1760
    .end local v1    # "cameraEntries":[Ljava/lang/CharSequence;
    .end local v2    # "entries":[Ljava/lang/CharSequence;
    .end local v3    # "entriyValues":[Ljava/lang/CharSequence;
    .end local v4    # "isCamcorder":Z
    .end local v5    # "menuIcon":[I
    .end local v6    # "menuIconResourcesExpandCamera":[I
    .end local v7    # "menuIconResourcesExpandVideo":[I
    .end local v8    # "settingMenuIcon":[I
    .end local v9    # "settingMenuResourcesExpandCamera":[I
    .end local v10    # "settingMenuResourcesExpandVideo":[I
    .end local v11    # "videoEntries":[Ljava/lang/CharSequence;
    .end local v12    # "volumePref":Lcom/lge/camera/setting/ListPreference;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .restart local v1    # "cameraEntries":[Ljava/lang/CharSequence;
    .restart local v3    # "entriyValues":[Ljava/lang/CharSequence;
    .restart local v4    # "isCamcorder":Z
    .restart local v5    # "menuIcon":[I
    .restart local v6    # "menuIconResourcesExpandCamera":[I
    .restart local v7    # "menuIconResourcesExpandVideo":[I
    .restart local v9    # "settingMenuResourcesExpandCamera":[I
    .restart local v10    # "settingMenuResourcesExpandVideo":[I
    .restart local v11    # "videoEntries":[Ljava/lang/CharSequence;
    :cond_2
    move-object v5, v6

    .line 1797
    goto :goto_1

    .restart local v8    # "settingMenuIcon":[I
    :cond_3
    move-object v8, v9

    .line 1801
    goto :goto_2

    :cond_4
    move-object v2, v1

    .line 1804
    goto :goto_3

    .line 1820
    .restart local v2    # "entries":[Ljava/lang/CharSequence;
    .restart local v12    # "volumePref":Lcom/lge/camera/setting/ListPreference;
    :cond_5
    const-string v13, "zoom"

    invoke-virtual {v12, v13}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_4

    .line 1764
    :array_0
    .array-data 4
        0x7f02041c
        0x7f02041e
    .end array-data

    .line 1768
    :array_1
    .array-data 4
        0x7f02041d
        0x7f02041e
    .end array-data

    .line 1773
    :array_2
    .array-data 4
        0x7f02021a
        0x7f02021c
    .end array-data

    .line 1777
    :array_3
    .array-data 4
        0x7f02021b
        0x7f02021c
    .end array-data
.end method

.method private removeAudioZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1648
    const-string v3, "back_camcorder"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHideAudiozoomMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1650
    const-string v3, "key_preview_size_on_device"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1652
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    const-string v3, "key_audiozoom"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 1654
    .local v0, "audioZoomIndex":I
    const-string v3, "key_preview_size_on_device"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    .line 1656
    .local v2, "videoSizeIndex":I
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 1657
    if-eqz v1, :cond_0

    .line 1658
    invoke-virtual {p2, v1, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChildAt(Lcom/lge/camera/setting/CameraPreference;I)V

    .line 1660
    :cond_0
    invoke-virtual {p2, v2}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 1662
    .end local v0    # "audioZoomIndex":I
    .end local v1    # "listPref":Lcom/lge/camera/setting/ListPreference;
    .end local v2    # "videoSizeIndex":I
    :cond_1
    return-void
.end method


# virtual methods
.method public changeDefaultImageSizeForPanorama(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 1958
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1961
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_1

    .line 1962
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos3()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1963
    .local v0, "extraInfos3":[Ljava/lang/CharSequence;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1965
    .local v2, "modelName":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    const-string v3, "LG-D415"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1967
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070618

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1990
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 1992
    .end local v0    # "extraInfos3":[Ljava/lang/CharSequence;
    .end local v2    # "modelName":Ljava/lang/String;
    :cond_1
    return-void

    .line 1969
    .restart local v0    # "extraInfos3":[Ljava/lang/CharSequence;
    .restart local v2    # "modelName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_3

    const-string v3, "LGLS740"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1971
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07068a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1973
    :cond_3
    const-string v3, "LG-D320f8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LG-D320g8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LG-D320AR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LG-D325g8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LG-D325f8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LG-D340f8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LG-D320J8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1980
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07059b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1982
    :cond_5
    const-string v3, "LG-D385"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "LG-D373"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "LG-D375"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "LG-D373EU"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "LG-D375AR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1987
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mPreferenceGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changePictureSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeVideoSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addIsoMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeSmartMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeDefaultImageSizeForPanorama(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addFrontShotMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addMainBeautyShotMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addPortraitPlusMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addTimerMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addDateStampMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addAutoReviewMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addTagLocationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addSaveAsFlippedMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addShutterSoundMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addVolumeKeyMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addStorageMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addManualAntiBandingMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addHideZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->removeAudioZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addHelpMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addRestoreMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeFlashDefaultValue(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addAuCloudMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addVideoStabilizationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeDefaultImageSize(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addManualKeyFocusValue(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Preference add exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
