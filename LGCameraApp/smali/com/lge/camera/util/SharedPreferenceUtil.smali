.class public Lcom/lge/camera/util/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field private static final ERROR_VALUE:I = -0x1

.field private static final KEY_PREVIOUS_PICTURE_SIZE:Ljava/lang/String; = "previous_picture_size"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccumulatedDCFCount(Landroid/content/Context;)J
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "dcf_count"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getAccumulatedDCFDigit(Landroid/content/Context;)I
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 117
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "dcf_digit"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAccumulatedDCFFirstCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 110
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "dcf_first_number"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getAccumulatedPictureCount(Landroid/content/Context;I)J
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "storage"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "storageString":Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 45
    const-string v1, "internal"

    .line 50
    :goto_0
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "picture_number_%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 47
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "external"

    goto :goto_0
.end method

.method public static getAccumulatedVideoCount(Landroid/content/Context;I)J
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "storage"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, "storageString":Ljava/lang/String;
    if-ne p1, v3, :cond_0

    .line 125
    const-string v1, "internal"

    .line 130
    :goto_0
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v2, "video_number_%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2

    .line 127
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "external"

    goto :goto_0
.end method

.method public static getDualCamcorderPIPIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 397
    if-eqz p0, :cond_0

    .line 398
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 400
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "dual_camcorder_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 402
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getDualCameraPIPIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 359
    if-eqz p0, :cond_0

    .line 360
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 362
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "dual_camera_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 364
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontDualCamcorderPIPIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 416
    if-eqz p0, :cond_0

    .line 417
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "front_dual_camcorder_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 421
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontDualCameraPIPIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 378
    if-eqz p0, :cond_0

    .line 379
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "front_dual_camera_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 383
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontLiveEffectFaceIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 340
    if-eqz p0, :cond_0

    .line 341
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "front_live_effect_face_index"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 345
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getFrontSmartZoomPIPIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 454
    if-eqz p0, :cond_0

    .line 455
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "front_smartZoom_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 459
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLastCameraMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 136
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "entermode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastPicturePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 242
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_path_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastPictureUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 230
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_uri_camera"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastSecondaryCameraMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 142
    const-string v1, "Secondary_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "entermode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 248
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_path_camcorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 236
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "thumbnail_uri_camcorder"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLiveEffectFaceIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 321
    if-eqz p0, :cond_0

    .line 322
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "live_effect_face_index"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 326
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getMainPreviousPictureSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 474
    const-string v1, "Main_CameraAppConfig"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "previous_picture_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShutterSoundIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 254
    if-eqz p0, :cond_0

    .line 255
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "shutter_sound_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 259
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getSmartZoomPIPIndex(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 435
    if-eqz p0, :cond_0

    .line 436
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 438
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "smartZoom_pip_index"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 440
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 283
    if-eqz p0, :cond_0

    .line 284
    const-string v1, "Main_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "video_size_at_normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;)I
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 302
    if-eqz p0, :cond_0

    .line 303
    const-string v1, "Secondary_CameraAppConfig"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "video_size_at_normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 307
    .end local v0    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static saveAccumulatedDCFCount(Landroid/content/Context;J)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "count"    # J

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_count"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static saveAccumulatedDCFDigit(Landroid/content/Context;I)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "digit"    # I

    .prologue
    const/4 v3, 0x0

    .line 93
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_digit"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "firstCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    const-string v2, "Main_CameraAppConfig"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 85
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dcf_first_number"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static saveAccumulatedPictureCount(Landroid/content/Context;IJ)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "storage"    # I
    .param p2, "count"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, "storageString":Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 29
    const-string v2, "internal"

    .line 34
    :goto_0
    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "picture_number_%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved picture counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 31
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "external"

    goto :goto_0
.end method

.method public static saveAccumulatedVideoCount(Landroid/content/Context;IJ)V
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "storage"    # I
    .param p2, "count"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "storageString":Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 58
    const-string v2, "internal"

    .line 63
    :goto_0
    const-string v3, "Main_CameraAppConfig"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "video_number_%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved video counter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 60
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "external"

    goto :goto_0
.end method

.method public static saveDualCamcorderPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 387
    if-eqz p0, :cond_0

    .line 388
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 390
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dual_camcorder_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveDualCameraPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 349
    if-eqz p0, :cond_0

    .line 350
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 352
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 353
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dual_camera_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 356
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontDualCamcorderPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 406
    if-eqz p0, :cond_0

    .line 407
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 410
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_dual_camcorder_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontDualCameraPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 368
    if-eqz p0, :cond_0

    .line 369
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 371
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_dual_camera_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontLiveEffectFaceIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 330
    if-eqz p0, :cond_0

    .line 331
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 333
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_live_effect_face_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 337
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveFrontSmartZoomPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 444
    if-eqz p0, :cond_0

    .line 445
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "front_smartZoom_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 451
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveLastCameraMode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "m"    # I

    .prologue
    .line 148
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "entermode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    return-void
.end method

.method public static saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPictureUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 167
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "path":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicturePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static saveLastPicturePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 208
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 210
    const-string v2, "thumbnail_path_camera"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    return-void

    .line 212
    :cond_0
    const-string v2, "thumbnail_path_camera"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastPictureUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 182
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 185
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 186
    const-string v2, "thumbnail_uri_camera"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    return-void

    .line 188
    :cond_0
    const-string v2, "thumbnail_uri_camera"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastSecondaryCameraMode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "m"    # I

    .prologue
    .line 156
    const-string v2, "Secondary_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 158
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "entermode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    return-void
.end method

.method public static saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideoUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 176
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "path":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideoPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static saveLastVideoPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 220
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 222
    const-string v2, "thumbnail_path_camcorder"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void

    .line 224
    :cond_0
    const-string v2, "thumbnail_path_camcorder"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLastVideoUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 194
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 198
    const-string v2, "thumbnail_uri_camcorder"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    return-void

    .line 200
    :cond_0
    const-string v2, "thumbnail_uri_camcorder"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static saveLiveEffectFaceIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 311
    if-eqz p0, :cond_0

    .line 312
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "live_effect_face_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 318
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveMainPreviousPictureSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 463
    if-eqz p0, :cond_0

    .line 464
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 467
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 468
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "previous_picture_size"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveShutterSoundIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "shutter_sound_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveSmartZoomPIPIndex(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 425
    if-eqz p0, :cond_0

    .line 426
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 428
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 429
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "smartZoom_pip_index"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 273
    if-eqz p0, :cond_0

    .line 274
    const-string v2, "Main_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 276
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_size_at_normal"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 280
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static saveVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;I)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 292
    if-eqz p0, :cond_0

    .line 293
    const-string v2, "Secondary_CameraAppConfig"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_size_at_normal"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
