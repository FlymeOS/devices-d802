.class public abstract Lcom/lge/camera/setting/Setting;
.super Ljava/util/Observable;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/setting/Setting$SettingFunction;
    }
.end annotation


# static fields
.field public static final APP_PREFERENCE_VERSION:I = 0x0

.field public static final HELP_AUDIOZOOM:Ljava/lang/String; = "audiozoom"

.field public static final HELP_BEAUTY_SHOT:Ljava/lang/String; = "beauty_shot"

.field public static final HELP_BURST_SHOT:Ljava/lang/String; = "burst"

.field public static final HELP_CLEAR_SHOT:Ljava/lang/String; = "clear_shot"

.field public static final HELP_CONTINUOUS_SHOT:Ljava/lang/String; = "continuous"

.field public static final HELP_DUAL_CAMERA:Ljava/lang/String; = "dual_camera"

.field public static final HELP_DUAL_RECORDING:Ljava/lang/String; = "dual_recording"

.field public static final HELP_FACE_TRACKING_LED:Ljava/lang/String; = "face_tracking"

.field public static final HELP_FREE_PANORAMA:Ljava/lang/String; = "free_panorama"

.field public static final HELP_GESTURESHOT:Ljava/lang/String; = "gestureshot"

.field public static final HELP_HDR:Ljava/lang/String; = "hdr"

.field public static final HELP_HDR_MOVIE:Ljava/lang/String; = "hdr_movie"

.field public static final HELP_INTELLIGENT_AUTO_MODE:Ljava/lang/String; = "smart_camera_mode"

.field public static final HELP_LIGHT_FRAME:Ljava/lang/String; = "light_frame"

.field public static final HELP_LIVE_EFFECT:Ljava/lang/String; = "live_effect"

.field public static final HELP_NIGHT:Ljava/lang/String; = "night"

.field public static final HELP_OTHER:Ljava/lang/String; = "none"

.field public static final HELP_PANORAMA:Ljava/lang/String; = "panorama"

.field public static final HELP_PLANE_PANORAMA:Ljava/lang/String; = "plane_panorama"

.field public static final HELP_REFOCUS:Ljava/lang/String; = "refocus"

.field public static final HELP_SMART_ZOOM_RECORDING:Ljava/lang/String; = "smart_zoom"

.field public static final HELP_SPORTS:Ljava/lang/String; = "sports"

.field public static final HELP_TIMEMACHINE:Ljava/lang/String; = "timemachine"

.field public static final HELP_UPLUS_BOX:Ljava/lang/String; = "uplus_box"

.field public static final HELP_VOICE_PHOTO:Ljava/lang/String; = "voice_photo"

.field public static final HELP_WDR_MOVIE:Ljava/lang/String; = "wdr"

.field public static final KEY_AU_CLOUD:Ljava/lang/String; = "key_au_cloud"

.field public static final KEY_BEAUTYSHOT:Ljava/lang/String; = "key_beautyshot"

.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "key_brightness"

.field public static final KEY_CAMCORDER_AUDIOZOOM:Ljava/lang/String; = "key_audiozoom"

.field public static final KEY_CAMERA_3D_DEPTH:Ljava/lang/String; = "key_camera_3d_depth"

.field public static final KEY_CAMERA_ANTI_BANDING:Ljava/lang/String; = "key_camera_anti_banding"

.field public static final KEY_CAMERA_AUTO_REVIEW:Ljava/lang/String; = "key_camera_auto_review"

.field public static final KEY_CAMERA_COLOREFFECT:Ljava/lang/String; = "key_camera_coloreffect"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field public static final KEY_CAMERA_PICTURESIZE:Ljava/lang/String; = "key_camera_picturesize"

.field public static final KEY_CAMERA_SHOT_MODE:Ljava/lang/String; = "key_camera_shot_mode"

.field public static final KEY_CAMERA_TAG_LOCATION:Ljava/lang/String; = "key_camera_tag_location"

.field public static final KEY_CAMERA_TIMER:Ljava/lang/String; = "key_camera_timer"

.field public static final KEY_CAMERA_WHITEBALANCE:Ljava/lang/String; = "key_camera_whitebalance"

.field public static final KEY_DATE_STAMP:Ljava/lang/String; = "key_date_stamp"

.field public static final KEY_DUAL_CAMERA:Ljava/lang/String; = "key_dual_camera"

.field public static final KEY_DUAL_RECORDING:Ljava/lang/String; = "key_dual_recording"

.field public static final KEY_EDIT_SHORTCUT:Ljava/lang/String; = "key_edit_shortcut"

.field public static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field public static final KEY_FOCUS:Ljava/lang/String; = "key_focus"

.field public static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field public static final KEY_HELP_GUIDE:Ljava/lang/String; = "key_help_guide"

.field public static final KEY_ISO:Ljava/lang/String; = "key_iso"

.field public static final KEY_LIGHT:Ljava/lang/String; = "key_light"

.field public static final KEY_LIVE_EFFECT:Ljava/lang/String; = "key_live_effect"

.field public static final KEY_NONE:Ljava/lang/String; = "key_none"

.field public static final KEY_PREFERENCE_VERSION:Ljava/lang/String; = "key_preference_version"

.field public static final KEY_PREVIEW_SIZE_ON_DEVICE:Ljava/lang/String; = "key_preview_size_on_device"

.field public static final KEY_QF_INDEX1:Ljava/lang/String; = "key_qf_index1"

.field public static final KEY_QF_INDEX2:Ljava/lang/String; = "key_qf_index2"

.field public static final KEY_QF_INDEX3:Ljava/lang/String; = "key_qf_index3"

.field public static final KEY_QF_INDEX4:Ljava/lang/String; = "key_qf_index4"

.field public static final KEY_QF_INDEX5:Ljava/lang/String; = "key_qf_index5"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field public static final KEY_RECORD_MODE:Ljava/lang/String; = "key_record_mode"

.field public static final KEY_RESTORE:Ljava/lang/String; = "key_restore"

.field public static final KEY_SAVE_DIRECTION:Ljava/lang/String; = "key_save_direction"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field public static final KEY_SETTING:Ljava/lang/String; = "key_setting"

.field public static final KEY_SHOT_MODE:Ljava/lang/String; = "key_shot_mode"

.field public static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "key_camera_shutter_sound"

.field public static final KEY_SMART_MODE:Ljava/lang/String; = "key_smart_mode"

.field public static final KEY_SMART_ZOOM_RECORDING:Ljava/lang/String; = "key_smart_zoom"

.field public static final KEY_STORAGE:Ljava/lang/String; = "key_storage"

.field public static final KEY_SWAP:Ljava/lang/String; = "key_swap"

.field public static final KEY_TIME_MACHINE:Ljava/lang/String; = "key_time_machine"

.field public static final KEY_UPLUS_BOX:Ljava/lang/String; = "key_uplus_box"

.field public static final KEY_VIDEO_AUDIO_RECORDING:Ljava/lang/String; = "key_video_audio_recording"

.field public static final KEY_VIDEO_AUTO_REVIEW:Ljava/lang/String; = "key_video_auto_review"

.field public static final KEY_VIDEO_DURATION:Ljava/lang/String; = "key_video_duration"

.field public static final KEY_VIDEO_RECORD_MODE:Ljava/lang/String; = "key_video_record_mode"

.field public static final KEY_VIDEO_STABILIZATION:Ljava/lang/String; = "key_video_stabilization"

.field public static final KEY_VOICESHUTTER:Ljava/lang/String; = "key_voiceshutter"

.field public static final KEY_VOLUME:Ljava/lang/String; = "key_volume"

.field public static final KEY_ZOOM:Ljava/lang/String; = "key_zoom"

.field public static final SETTING_3D_PRIMARY:Ljava/lang/String; = "Main_3d_CameraAppConfig"

.field public static final SETTING_PRIMARY:Ljava/lang/String; = "Main_CameraAppConfig"

.field public static final SETTING_SECONDARY:Ljava/lang/String; = "Secondary_CameraAppConfig"

.field public static final VIDEO_QUALITY_MMS:Ljava/lang/String; = "mms"


# instance fields
.field protected mConfigName:Ljava/lang/String;

.field public mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

.field protected mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mQfIndexInit:Z

.field protected mQfIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected values:[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/setting/Setting$SettingFunction;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "prefGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/Setting;->mQfIndexInit:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/setting/Setting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    .line 140
    iput-object p1, p0, Lcom/lge/camera/setting/Setting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    .line 141
    iput-object p3, p0, Lcom/lge/camera/setting/Setting;->mConfigName:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 143
    return-void
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 320
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 314
    .local v2, "size":Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "cameraId"    # I

    .prologue
    .line 324
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    return-void
.end method


# virtual methods
.method public clearQFIndex()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 331
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_qf_index1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string v2, "key_qf_index2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string v2, "key_qf_index3"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string v2, "key_qf_index4"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    const-string v2, "key_qf_index5"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 341
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/setting/Setting;->mQfIndexInit:Z

    .line 342
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/setting/Setting;->values:[I

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->deleteObservers()V

    .line 156
    return-void
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mConfigName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v0

    return v0
.end method

.method public getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getQfIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "listItem":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 393
    .local v2, "qflSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 394
    iget-object v3, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listItem":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 395
    .restart local v1    # "listItem":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 393
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getQfIndexList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSetting(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, "valueIndex":I
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 264
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_0

    .line 265
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref is null at method Setting::getSetting("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "pref is Null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2

    .line 268
    .restart local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public getSettingIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v2, 0x0

    .line 279
    .local v2, "valueIndex":I
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 280
    iget-object v3, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 282
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 291
    .end local v1    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    :goto_0
    return v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    const-string v3, "CameraApp"

    const-string v4, "pref  null error"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v1, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 296
    .local v0, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "not found"

    goto :goto_0
.end method

.method public initializeSetting(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const-string v1, "CameraApp"

    const-string v2, "Restore setting to default."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/lge/camera/setting/Setting;->values:[I

    if-eqz v1, :cond_0

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/lge/camera/setting/Setting;->values:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/Setting;->saveSetting(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->setChanged()V

    .line 177
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->notifyObservers()V

    .line 178
    return-void
.end method

.method public loadQfIndex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 345
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v4}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 346
    .local v1, "pref":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const-string v5, "key_qf_index1"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const-string v5, "key_qf_index2"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const-string v5, "key_qf_index3"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const-string v5, "key_qf_index4"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const-string v5, "key_qf_index5"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 354
    .local v3, "qflSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 355
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 356
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexInit:Z

    .line 361
    :cond_0
    iget-boolean v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexInit:Z

    if-eqz v4, :cond_3

    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, "preferenceGroup":Lcom/lge/camera/setting/ListPreference;
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_3

    .line 365
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 366
    if-eqz v2, :cond_1

    .line 367
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 354
    .end local v2    # "preferenceGroup":Lcom/lge/camera/setting/ListPreference;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_3
    return-void
.end method

.method public abstract loadSetting(Landroid/content/Context;)V
.end method

.method public saveQFLIndex()V
    .locals 5

    .prologue
    .line 374
    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 375
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_qf_index1"

    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v3, "key_qf_index2"

    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    const-string v3, "key_qf_index3"

    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v3, "key_qf_index4"

    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v3, "key_qf_index5"

    iget-object v2, p0, Lcom/lge/camera/setting/Setting;->mQfIndexList:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    return-void
.end method

.method public abstract saveSetting(Landroid/content/Context;)V
.end method

.method public setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .param p1, "prefGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 151
    return-void
.end method

.method public setSetting(II)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 183
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v2

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    invoke-interface {v4}, Lcom/lge/camera/setting/Setting$SettingFunction;->isAttachIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 192
    :goto_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "oldValue":I
    if-eq v0, p2, :cond_0

    .line 196
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->setValueIndex(I)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->setChanged()V

    .line 198
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->notifyObservers()V

    move v2, v3

    .line 200
    goto :goto_0

    .line 190
    .end local v0    # "oldValue":I
    :cond_2
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1
.end method

.method public setSetting(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 207
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    invoke-interface {v4}, Lcom/lge/camera/setting/Setting$SettingFunction;->isAttachIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 216
    :goto_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "oldValue":I
    if-eq v0, p2, :cond_0

    .line 220
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->setValueIndex(I)V

    .line 221
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->setChanged()V

    .line 222
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->notifyObservers()V

    move v2, v3

    .line 224
    goto :goto_0

    .line 214
    .end local v0    # "oldValue":I
    :cond_2
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "needSave"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 235
    .local v1, "pref":Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 236
    const-string v3, "CameraApp"

    const-string v4, "ListPreference is null!!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    invoke-interface {v4}, Lcom/lge/camera/setting/Setting$SettingFunction;->isAttachIntent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    :cond_2
    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 246
    :goto_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "oldValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 250
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->setChanged()V

    .line 252
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->notifyObservers()V

    move v2, v3

    .line 254
    goto :goto_0

    .line 243
    .end local v0    # "oldValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1
.end method
