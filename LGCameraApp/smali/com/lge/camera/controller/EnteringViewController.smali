.class public Lcom/lge/camera/controller/EnteringViewController;
.super Ljava/lang/Object;
.source "EnteringViewController.java"


# static fields
.field private static mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;


# instance fields
.field public mDoNotShowAgain:Z

.field private mEnteringView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mDoNotShowAgain:Z

    return-void
.end method

.method private static checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 3
    .param p0, "checkCondition"    # Z
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "settingValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    if-nez p0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 363
    goto :goto_0
.end method

.method private static checkRecordModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 5
    .param p0, "prefGroup"    # Lcom/lge/camera/setting/PreferenceGroup;
    .param p1, "shotMode"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/content/SharedPreferences;
    .param p3, "settingValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 340
    const-string v3, "key_video_record_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 341
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 344
    :cond_1
    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 347
    invoke-interface {p2, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 351
    goto :goto_0
.end method

.method private static checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 5
    .param p0, "prefGroup"    # Lcom/lge/camera/setting/PreferenceGroup;
    .param p1, "shotMode"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/content/SharedPreferences;
    .param p3, "SettingValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 324
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 325
    .local v0, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 331
    invoke-interface {p2, p3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 335
    goto :goto_0
.end method

.method public static get()Lcom/lge/camera/controller/EnteringViewController;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/lge/camera/controller/EnteringViewController;

    invoke-direct {v0}, Lcom/lge/camera/controller/EnteringViewController;-><init>()V

    sput-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    .line 55
    :cond_0
    sget-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    return-object v0
.end method

.method public static isAllCheckDoNotShowAgain(Landroid/app/Activity;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 261
    const-string v4, "Main_CameraAppConfig"

    invoke-virtual {p0, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 263
    .local v3, "pref":Landroid/content/SharedPreferences;
    new-instance v2, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-direct {v2, p0}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 264
    .local v2, "inflater":Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/PreferenceGroup;

    .line 266
    .local v1, "cameraPrefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/PreferenceGroup;

    .line 269
    .local v0, "camcorderPrefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v3, :cond_4

    const-string v4, "entering_guide"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "voice_photo"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "shotmode_hdr"

    const-string v7, "hdr"

    invoke-static {v1, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "shotmode_timemachine"

    const-string v7, "timemachine"

    invoke-static {v1, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "shotmode_panorama"

    const-string v7, "panorama"

    invoke-static {v1, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "shotmode_plane_panorama"

    const-string v7, "plane_panorama"

    invoke-static {v1, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "shotmode_free_panorama"

    const-string v7, "free_panorama"

    invoke-static {v1, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "shotmode_dual_camera"

    const-string v7, "dual_camera"

    invoke-static {v1, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "shotmode_clear_shot"

    const-string v7, "clear_shot"

    invoke-static {v1, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkShotModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "recordmode_live_effect"

    const-string v7, "live_effect"

    invoke-static {v0, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkRecordModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "recordmode_dual"

    const-string v7, "dual_recording"

    invoke-static {v0, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkRecordModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "recordmode_smart_zoom"

    const-string v7, "smart_zoom"

    invoke-static {v0, v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkRecordModeHelp(Lcom/lge/camera/setting/PreferenceGroup;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v4

    const-string v7, "smart_camera_mode"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v4

    const-string v7, "audiozoom"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSportShot()Z

    move-result v4

    const-string v7, "sports"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v5}, Lcom/lge/camera/properties/FunctionProperties;->isSupportNightShotModeMenu(I)Z

    move-result v4

    const-string v7, "night"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v4

    const-string v7, "burst"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFullFrameContinuousShotSupported()Z

    move-result v4

    const-string v7, "continuous"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    const-string v7, "hdr_movie"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    const-string v7, "wdr"

    invoke-static {v4, v3, v7}, Lcom/lge/camera/controller/EnteringViewController;->checkOtherHelp(ZLandroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v4, "beauty_shot"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v4

    if-nez v4, :cond_4

    .line 314
    :cond_1
    const-string v4, "CameraApp"

    const-string v6, "help-setting isAllCheckDoNotShowAgain all checked"

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_2
    return v5

    :cond_2
    move v4, v6

    .line 269
    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_1

    .line 317
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "help-setting isAllCheckDoNotShowAgain not all checked"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 318
    goto :goto_2
.end method

.method private removeGuide(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    const v1, 0x7f0d00c5

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 172
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    const-string v2, "\u00a0"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 175
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 177
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    .line 180
    const-string v1, "CameraApp"

    const-string v2, "showQuickMenuEnteringGuide-gone"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method private resetDoNotShowCheck(Landroid/app/Activity;Z)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isCheck"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 185
    const-string v5, "Main_CameraAppConfig"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 187
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-direct {v1, p1}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 190
    .local v1, "inflater":Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    .line 193
    .local v4, "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    const-string v5, "key_camera_shot_mode"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 195
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "help-setting resetDoNotShowCheck "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v5, "entering_guide"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    if-eqz v2, :cond_0

    const-string v5, "shotmode_hdr"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 199
    const-string v5, "hdr"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 203
    const-string v5, "beauty_shot"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    const-string v5, "timemachine"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    :cond_2
    const-string v5, "voice_photo"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 210
    if-eqz v2, :cond_3

    const-string v5, "shotmode_panorama"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 212
    const-string v5, "panorama"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    :cond_3
    if-eqz v2, :cond_4

    const-string v5, "shotmode_plane_panorama"

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_4

    .line 216
    const-string v5, "plane_panorama"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 218
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFreePanoramaSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 219
    const-string v5, "free_panorama"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 221
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 222
    const-string v5, "burst"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 226
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 227
    const-string v5, "smart_camera_mode"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 230
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 231
    const-string v5, "hdr_movie"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    :cond_7
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 237
    const-string v5, "dual_recording"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 239
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 240
    const-string v5, "dual_camera"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 243
    const-string v5, "audiozoom"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 245
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 246
    const-string v5, "clear_shot"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 248
    :cond_b
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 249
    const-string v5, "smart_zoom"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 251
    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSportShot()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 252
    const-string v5, "sports"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 254
    :cond_d
    invoke-static {v9}, Lcom/lge/camera/properties/FunctionProperties;->isSupportNightShotModeMenu(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 255
    const-string v5, "night"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    :cond_e
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    return-void

    .line 224
    :cond_f
    const-string v5, "continuous"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 233
    :cond_10
    const-string v5, "wdr"

    invoke-interface {v0, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private rotateLayout(Landroid/app/Activity;II)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resId"    # I
    .param p3, "degree"    # I

    .prologue
    .line 531
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 532
    .local v1, "rl":Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1, p3}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v1    # "rl":Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "CameraApp"

    const-string v3, "ClassCastException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private rotateLayoutWithMargin(Landroid/app/Activity;II)V
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resId"    # I
    .param p3, "degree"    # I

    .prologue
    .line 699
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/lge/camera/components/RotateLayout;

    .line 701
    .local v12, "rl":Lcom/lge/camera/components/RotateLayout;
    if-nez v12, :cond_1

    .line 764
    .end local v12    # "rl":Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_0
    return-void

    .line 705
    .restart local v12    # "rl":Lcom/lge/camera/components/RotateLayout;
    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lcom/lge/camera/components/RotateLayout;->measure(II)V

    .line 706
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 707
    .local v13, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v13, :cond_0

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090008

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 710
    .local v7, "lcdWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090009

    invoke-static/range {v15 .. v16}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 713
    .local v6, "lcdHeight":I
    const/4 v1, 0x0

    .line 714
    .local v1, "adjLong":I
    const/4 v2, 0x0

    .line 715
    .local v2, "adjShort":I
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateLayout;->getMeasuredWidth()I

    move-result v10

    .line 716
    .local v10, "measureWidth":I
    invoke-virtual {v12}, Lcom/lge/camera/components/RotateLayout;->getMeasuredHeight()I

    move-result v9

    .line 717
    .local v9, "measureHeight":I
    if-lt v10, v9, :cond_2

    .line 718
    move v1, v10

    .line 719
    move v2, v9

    .line 725
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 726
    .local v4, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .local v8, "leftMargin":I
    const/4 v14, 0x0

    .local v14, "topMargin":I
    const/4 v11, 0x0

    .local v11, "rightMargin":I
    const/4 v3, 0x0

    .line 727
    .local v3, "bottomMargin":I
    packed-switch p2, :pswitch_data_0

    .line 746
    :goto_2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 747
    iput v8, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 748
    iput v14, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 749
    iput v11, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 750
    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 758
    :goto_3
    invoke-virtual {v12, v13}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    .end local v1    # "adjLong":I
    .end local v2    # "adjShort":I
    .end local v3    # "bottomMargin":I
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "lcdHeight":I
    .end local v7    # "lcdWidth":I
    .end local v8    # "leftMargin":I
    .end local v9    # "measureHeight":I
    .end local v10    # "measureWidth":I
    .end local v11    # "rightMargin":I
    .end local v12    # "rl":Lcom/lge/camera/components/RotateLayout;
    .end local v13    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "topMargin":I
    :catch_0
    move-exception v5

    .line 762
    .local v5, "e":Ljava/lang/Exception;
    const-string v15, "CameraApp"

    const-string v16, "Exception:"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 721
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "adjLong":I
    .restart local v2    # "adjShort":I
    .restart local v6    # "lcdHeight":I
    .restart local v7    # "lcdWidth":I
    .restart local v9    # "measureHeight":I
    .restart local v10    # "measureWidth":I
    .restart local v12    # "rl":Lcom/lge/camera/components/RotateLayout;
    .restart local v13    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move v1, v9

    .line 722
    move v2, v10

    goto :goto_1

    .line 729
    .restart local v3    # "bottomMargin":I
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v8    # "leftMargin":I
    .restart local v11    # "rightMargin":I
    .restart local v14    # "topMargin":I
    :pswitch_0
    const v15, 0x7f09020a

    :try_start_1
    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 731
    const v15, 0x7f09020b

    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 733
    sub-int v15, v7, v11

    sub-int v8, v15, v1

    .line 734
    sub-int v15, v6, v14

    sub-int v3, v15, v2

    .line 735
    goto :goto_2

    .line 737
    :pswitch_1
    const v15, 0x7f09020c

    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 739
    const v15, 0x7f09020d

    invoke-static {v4, v15}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 741
    sub-int v15, v7, v11

    sub-int v8, v15, v1

    .line 742
    sub-int v15, v6, v14

    sub-int v3, v15, v2

    goto :goto_2

    .line 752
    :cond_3
    iput v3, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 753
    iput v8, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 754
    iput v14, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 755
    iput v11, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 727
    :pswitch_data_0
    .packed-switch 0x7f0d007f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private rotateTextLayout(Landroid/app/Activity;II)V
    .locals 22
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resId"    # I
    .param p3, "degree"    # I

    .prologue
    .line 542
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/lge/camera/components/RotateLayout;

    .line 544
    .local v16, "rl":Lcom/lge/camera/components/RotateLayout;
    if-nez v16, :cond_1

    .line 695
    .end local v16    # "rl":Lcom/lge/camera/components/RotateLayout;
    :cond_0
    :goto_0
    return-void

    .line 548
    .restart local v16    # "rl":Lcom/lge/camera/components/RotateLayout;
    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/RotateLayout;->measure(II)V

    .line 549
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 550
    .local v17, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v17, :cond_0

    .line 551
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f090008

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    .line 553
    .local v10, "lcdWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f090009

    invoke-static/range {v20 .. v21}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    .line 556
    .local v9, "lcdHeight":I
    const/4 v3, 0x0

    .local v3, "adjLong":I
    const/4 v4, 0x0

    .line 557
    .local v4, "adjShort":I
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/components/RotateLayout;->getMeasuredWidth()I

    move-result v14

    .line 558
    .local v14, "measureWidth":I
    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/components/RotateLayout;->getMeasuredHeight()I

    move-result v13

    .line 559
    .local v13, "measureHeight":I
    if-lt v14, v13, :cond_5

    .line 560
    move v3, v14

    .line 561
    move v4, v13

    .line 567
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 569
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v7

    .line 570
    .local v7, "convDegree":I
    const/4 v11, 0x0

    .local v11, "leftMargin":I
    const/16 v18, 0x0

    .local v18, "topMargin":I
    const/4 v15, 0x0

    .local v15, "rightMargin":I
    const/4 v5, 0x0

    .line 571
    .local v5, "bottomMargin":I
    sparse-switch v7, :sswitch_data_0

    .line 666
    :cond_2
    :goto_2
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 667
    move-object/from16 v0, v17

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 668
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 669
    move-object/from16 v0, v17

    iput v15, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 670
    move-object/from16 v0, v17

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 678
    :goto_3
    const v20, 0x7f0d0081

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 679
    const v20, 0x7f0d0082

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 680
    .local v19, "tv":Landroid/widget/TextView;
    if-eqz v19, :cond_4

    .line 681
    if-eqz v7, :cond_3

    const/16 v20, 0x10e

    move/from16 v0, v20

    if-ne v7, v0, :cond_14

    .line 682
    :cond_3
    const v20, 0x800005

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V

    .line 689
    .end local v19    # "tv":Landroid/widget/TextView;
    :cond_4
    :goto_4
    invoke-virtual/range {v16 .. v17}, Lcom/lge/camera/components/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 692
    .end local v3    # "adjLong":I
    .end local v4    # "adjShort":I
    .end local v5    # "bottomMargin":I
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "convDegree":I
    .end local v9    # "lcdHeight":I
    .end local v10    # "lcdWidth":I
    .end local v11    # "leftMargin":I
    .end local v13    # "measureHeight":I
    .end local v14    # "measureWidth":I
    .end local v15    # "rightMargin":I
    .end local v16    # "rl":Lcom/lge/camera/components/RotateLayout;
    .end local v17    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "topMargin":I
    :catch_0
    move-exception v8

    .line 693
    .local v8, "e":Ljava/lang/Exception;
    const-string v20, "CameraApp"

    const-string v21, "Exception:"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 563
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "adjLong":I
    .restart local v4    # "adjShort":I
    .restart local v9    # "lcdHeight":I
    .restart local v10    # "lcdWidth":I
    .restart local v13    # "measureHeight":I
    .restart local v14    # "measureWidth":I
    .restart local v16    # "rl":Lcom/lge/camera/components/RotateLayout;
    .restart local v17    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move v3, v13

    .line 564
    move v4, v14

    goto :goto_1

    .line 574
    .restart local v5    # "bottomMargin":I
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "convDegree":I
    .restart local v11    # "leftMargin":I
    .restart local v15    # "rightMargin":I
    .restart local v18    # "topMargin":I
    :sswitch_0
    const v20, 0x7f0d007b

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 575
    const v20, 0x7f090206

    :try_start_1
    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 577
    const v20, 0x7f090207

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    .line 579
    const/4 v15, 0x0

    .line 580
    const/4 v5, 0x0

    .line 581
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 582
    const/16 v20, 0x14

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 584
    :cond_6
    const/16 v20, 0x15

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 586
    :cond_7
    const v20, 0x7f0d0083

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 587
    const v20, 0x7f090212

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    .line 589
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 590
    const/16 v20, 0xe

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 591
    const/16 v20, 0xa

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 593
    :cond_8
    const/16 v20, 0xf

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 594
    const/16 v20, 0x15

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 596
    :cond_9
    const v20, 0x7f0d0081

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 597
    const v20, 0x7f09020e

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v20

    sub-int v15, v20, v4

    .line 600
    const v20, 0x7f09020f

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    .line 602
    sub-int v20, v10, v15

    sub-int v11, v20, v3

    .line 603
    sub-int v20, v9, v18

    sub-int v5, v20, v4

    .line 604
    const/16 v20, 0x15

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 605
    :cond_a
    const v20, 0x7f0d0085

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 606
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 607
    const/16 v20, 0xe

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 608
    const v20, 0x7f090218

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    goto/16 :goto_2

    .line 611
    :cond_b
    const/16 v20, 0xf

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 612
    const/16 v20, 0x15

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 613
    const v20, 0x7f090218

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v18

    goto/16 :goto_2

    .line 620
    :sswitch_1
    const v20, 0x7f0d007b

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 621
    const v20, 0x7f090206

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v20

    add-int v11, v20, v4

    .line 623
    const v20, 0x7f090207

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v20

    div-int/lit8 v21, v3, 0x2

    sub-int v18, v20, v21

    .line 625
    const/4 v15, 0x0

    .line 626
    const/4 v5, 0x0

    .line 627
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 628
    const/16 v20, 0x14

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 630
    :cond_c
    const/16 v20, 0x15

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 632
    :cond_d
    const v20, 0x7f0d0083

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 633
    const/16 v20, 0xd

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 634
    :cond_e
    const v20, 0x7f0d0081

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 635
    const v20, 0x7f09020e

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    .line 637
    sub-int v20, v9, v3

    div-int/lit8 v18, v20, 0x2

    .line 638
    if-gez v18, :cond_f

    .line 639
    const/16 v18, 0x0

    .line 642
    :cond_f
    const v20, 0x7f090210

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    .line 644
    .local v12, "leftMarginAdjust":I
    sub-int v20, v10, v15

    sub-int v20, v20, v4

    sub-int v11, v20, v12

    .line 645
    move/from16 v5, v18

    .line 646
    const/16 v20, 0x15

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 647
    .end local v12    # "leftMarginAdjust":I
    :cond_10
    const v20, 0x7f0d0085

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 648
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 649
    const v20, 0x7f090219

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    goto/16 :goto_2

    .line 652
    :cond_11
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v20

    const/16 v21, 0xe

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 653
    const/16 v20, 0xe

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 658
    :goto_5
    const v20, 0x7f090219

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    goto/16 :goto_2

    .line 656
    :cond_12
    const/16 v20, 0x15

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    .line 672
    :cond_13
    move-object/from16 v0, v17

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 673
    move-object/from16 v0, v17

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 674
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 675
    move-object/from16 v0, v17

    iput v15, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3

    .line 684
    .restart local v19    # "tv":Landroid/widget/TextView;
    :cond_14
    const v20, 0x800003

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 571
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public static setCameraHelpSetting(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "set"    # Z

    .prologue
    .line 379
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 382
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "help_setting"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "help-setting setCameraHelpSetting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setSystemHelpSettingOff(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {p0}, Lcom/lge/camera/controller/EnteringViewController;->isAllCheckDoNotShowAgain(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "CameraApp"

    const-string v1, "help-setting setSystemHelpSettingOff "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_settings_camera_tips"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    invoke-static {p0, v2}, Lcom/lge/camera/controller/EnteringViewController;->setCameraHelpSetting(Landroid/app/Activity;Z)V

    .line 376
    :cond_0
    return-void
.end method

.method private showGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;I)V
    .locals 26
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "qfl"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p3, "degree"    # I

    .prologue
    .line 64
    const v24, 0x7f0d00c5

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 65
    .local v23, "vg":Landroid/view/ViewGroup;
    const-string v24, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 67
    .local v9, "li":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 68
    const v24, 0x7f03000d

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    .line 70
    :cond_0
    if-eqz v23, :cond_2

    .line 71
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/lge/camera/controller/EnteringViewController;->setEnteringViewQFLImages(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;)V

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/camera/controller/EnteringViewController;->mDoNotShowAgain:Z

    .line 80
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportCameraCleanGuide()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f090009

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 83
    .local v7, "lcdHeight":I
    const v24, 0x7f090213

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 85
    .local v6, "cleanTextTopMargin":I
    const v24, 0x7f090214

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 87
    .local v5, "cleanTextBottomMargin":I
    sub-int v24, v7, v6

    sub-int v18, v24, v5

    .line 89
    .local v18, "textWidth":I
    const v24, 0x7f0d0083

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 90
    const v24, 0x7f0d0084

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 91
    .local v20, "tv":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a031b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "message":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v10, v1}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "breakString":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v3    # "breakString":Ljava/lang/String;
    .end local v5    # "cleanTextBottomMargin":I
    .end local v6    # "cleanTextTopMargin":I
    .end local v7    # "lcdHeight":I
    .end local v10    # "message":Ljava/lang/String;
    .end local v18    # "textWidth":I
    .end local v20    # "tv":Landroid/widget/TextView;
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportCameraHandGuide()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 97
    const v24, 0x7f0d0079

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const v24, 0x7f0d0080

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_4
    const v24, 0x7f0d0192

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 101
    .local v19, "thumbnailView":Landroid/view/View;
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-eqz v24, :cond_5

    .line 102
    const v24, 0x7f0d007e

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v24, 0x7f0d007f

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 104
    const v24, 0x7f0d0080

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const v24, 0x7f0d0081

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v24

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 109
    const v24, 0x7f0d006e

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 111
    const v24, 0x7f0d0077

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 113
    const v24, 0x7f0d007a

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const v24, 0x7f0d007b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v24, 0x7f0d0086

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 118
    .local v4, "button":Landroid/widget/Button;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a002f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "msg":Ljava/lang/String;
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v24, 0x7f0d007c

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 122
    .local v21, "tv1":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a031f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "msg1":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v24, 0x7f0d0082

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 126
    .local v22, "tv2":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a031e

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, "msg2":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v24

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v24

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 132
    :cond_6
    const v24, 0x7f0d007e

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 134
    .local v16, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 136
    .local v17, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f090008

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 138
    .local v8, "lcdWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f09001d

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 141
    .local v14, "navigationWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const v25, 0x7f09001a

    invoke-static/range {v24 .. v25}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    .line 144
    .local v15, "panelWidth":I
    sub-int v24, v8, v14

    sub-int v24, v24, v15

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 145
    const/16 v24, 0xc

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    invoke-virtual/range {v16 .. v17}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .end local v4    # "button":Landroid/widget/Button;
    .end local v8    # "lcdWidth":I
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "msg1":Ljava/lang/String;
    .end local v13    # "msg2":Ljava/lang/String;
    .end local v14    # "navigationWidth":I
    .end local v15    # "panelWidth":I
    .end local v16    # "rl":Landroid/widget/RelativeLayout;
    .end local v17    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "tv1":Landroid/widget/TextView;
    .end local v22    # "tv2":Landroid/widget/TextView;
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 151
    const v24, 0x7f0d0085

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/EnteringViewController;->enteringGuideRotate(Landroid/app/Activity;I)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/EnteringViewController;->requestFocus()V

    .line 156
    return-void
.end method


# virtual methods
.method public enteringGuideRotate(Landroid/app/Activity;I)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "degree"    # I

    .prologue
    const/16 v3, 0x10e

    .line 483
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/EnteringViewController;->isEnteringViewShowing()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 484
    const v10, 0x7f0d006f

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 485
    const v10, 0x7f0d0071

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 486
    const v10, 0x7f0d0073

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 487
    const v10, 0x7f0d0075

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 489
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isWVGAmodel()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 490
    const v10, 0x7f0d0082

    invoke-virtual {p1, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 491
    .local v9, "tv":Landroid/widget/TextView;
    if-eqz v9, :cond_1

    .line 492
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a031e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 494
    .local v7, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 495
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, p2}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v5

    .line 496
    .local v5, "convDegree":I
    const/16 v10, 0x5a

    if-eq v5, v10, :cond_0

    if-ne v5, v3, :cond_4

    .line 497
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f090009

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 499
    .local v6, "lcdHeight":I
    const v10, 0x7f090213

    invoke-static {p1, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 501
    .local v2, "cleanTextTopMargin":I
    const v10, 0x7f090214

    invoke-static {p1, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 503
    .local v1, "cleanTextBottomMargin":I
    sub-int v10, v6, v2

    sub-int v8, v10, v1

    .line 505
    .local v8, "textWidth":I
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    const-string v11, "\n"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lcom/lge/camera/util/Common;->breakTextToMultiLine(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "breakString":Ljava/lang/String;
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    .end local v0    # "breakString":Ljava/lang/String;
    .end local v1    # "cleanTextBottomMargin":I
    .end local v2    # "cleanTextTopMargin":I
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "convDegree":I
    .end local v6    # "lcdHeight":I
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "textWidth":I
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_1
    :goto_0
    const v10, 0x7f0d007b

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 515
    const v10, 0x7f0d0081

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 516
    const v10, 0x7f0d0083

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 518
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x0

    .line 519
    .local v3, "constDegree":I
    :cond_2
    const v10, 0x7f0d0079

    invoke-direct {p0, p1, v10, v3}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 520
    const v10, 0x7f0d007a

    invoke-direct {p0, p1, v10, v3}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayout(Landroid/app/Activity;II)V

    .line 522
    const v10, 0x7f0d007f

    invoke-direct {p0, p1, v10, v3}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayoutWithMargin(Landroid/app/Activity;II)V

    .line 523
    const v10, 0x7f0d0080

    invoke-direct {p0, p1, v10, v3}, Lcom/lge/camera/controller/EnteringViewController;->rotateLayoutWithMargin(Landroid/app/Activity;II)V

    .line 525
    const v10, 0x7f0d0085

    invoke-direct {p0, p1, v10, p2}, Lcom/lge/camera/controller/EnteringViewController;->rotateTextLayout(Landroid/app/Activity;II)V

    .line 527
    .end local v3    # "constDegree":I
    :cond_3
    return-void

    .line 509
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v5    # "convDegree":I
    .restart local v7    # "msg":Ljava/lang/String;
    .restart local v9    # "tv":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hideOnPauseEnteringGuide(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 451
    if-nez p1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 456
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v1, "entering_guide"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/EnteringViewController;->removeGuide(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public isEnteringViewShowing()Z
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 161
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->setContentDescriptionForAccessibility(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 164
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 166
    iget-object v1, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 168
    :cond_0
    return-void
.end method

.method public setEnteringViewQFLImages(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "qfl"    # Lcom/lge/camera/controller/QuickFunctionController;

    .prologue
    .line 462
    iget-object v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 463
    const v4, 0x7f0d0070

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 464
    .local v0, "circle1":Landroid/widget/ImageView;
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 466
    const v4, 0x7f0d0072

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 467
    .local v1, "circle2":Landroid/widget/ImageView;
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 468
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 469
    const v4, 0x7f0d0074

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 470
    .local v2, "circle3":Landroid/widget/ImageView;
    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 471
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 472
    const v4, 0x7f0d0076

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 473
    .local v3, "circle4":Landroid/widget/ImageView;
    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuIconResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    invoke-static {}, Lcom/lge/camera/util/ColorUtil;->getEnteringQFLColor()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 476
    .end local v0    # "circle1":Landroid/widget/ImageView;
    .end local v1    # "circle2":Landroid/widget/ImageView;
    .end local v2    # "circle3":Landroid/widget/ImageView;
    .end local v3    # "circle4":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public showQuickMenuEnteringGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;ZI)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "qfl"    # Lcom/lge/camera/controller/QuickFunctionController;
    .param p3, "isShow"    # Z
    .param p4, "degree"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 392
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "help_settings_camera_tips"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, "help_setting":I
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "help_settings_camera_refresh"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 396
    .local v3, "refresh_help":I
    const-string v4, "Main_CameraAppConfig"

    invoke-virtual {p1, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 399
    .local v2, "pref":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 404
    if-ne v1, v7, :cond_4

    if-eq v3, v7, :cond_2

    const-string v4, "help_setting"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    .line 406
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, "showQuickMenuEnteringGuide DB state change off=>on"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-direct {p0, p1, v6}, Lcom/lge/camera/controller/EnteringViewController;->resetDoNotShowCheck(Landroid/app/Activity;Z)V

    .line 408
    invoke-static {p1, v7}, Lcom/lge/camera/controller/EnteringViewController;->setCameraHelpSetting(Landroid/app/Activity;Z)V

    .line 414
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "help_settings_camera_refresh"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    const-string v4, "entering_guide"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 419
    if-eqz p3, :cond_5

    .line 420
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/camera/controller/EnteringViewController;->showGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;I)V

    goto :goto_0

    .line 409
    :cond_4
    if-nez v1, :cond_3

    const-string v4, "help_setting"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 410
    const-string v4, "CameraApp"

    const-string v5, "showQuickMenuEnteringGuide DB state change on=>off"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, p1, v7}, Lcom/lge/camera/controller/EnteringViewController;->resetDoNotShowCheck(Landroid/app/Activity;Z)V

    .line 412
    invoke-static {p1, v6}, Lcom/lge/camera/controller/EnteringViewController;->setCameraHelpSetting(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 422
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 423
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/EnteringViewController;->removeGuide(Landroid/app/Activity;)V

    .line 424
    iget-boolean v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mDoNotShowAgain:Z

    if-eqz v4, :cond_0

    .line 425
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "entering_guide"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 428
    invoke-static {p1}, Lcom/lge/camera/controller/EnteringViewController;->setSystemHelpSettingOff(Landroid/app/Activity;)V

    goto :goto_0

    .line 434
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string v4, "entering_guide"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 435
    if-eqz p3, :cond_7

    .line 436
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/camera/controller/EnteringViewController;->showGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;I)V

    goto :goto_0

    .line 438
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 439
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/EnteringViewController;->removeGuide(Landroid/app/Activity;)V

    .line 441
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "entering_guide"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/lge/camera/controller/EnteringViewController;->mEngeringViewController:Lcom/lge/camera/controller/EnteringViewController;

    .line 60
    iput-object v0, p0, Lcom/lge/camera/controller/EnteringViewController;->mEnteringView:Landroid/view/ViewGroup;

    .line 61
    return-void
.end method
