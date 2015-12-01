.class public Lcom/lge/camera/setting/VideoSetting;
.super Lcom/lge/camera/setting/Setting;
.source "VideoSetting.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/setting/Setting$SettingFunction;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "prefGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/setting/Setting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/lge/camera/setting/VideoSetting;->loadSetting(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getPreviewSizeOnDevice(I)[I
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoSetting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    if-nez v4, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object v2

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoSetting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_preview_size_on_device"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 41
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, "size":[I
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 48
    .local v3, "values":[Ljava/lang/CharSequence;
    aget-object v4, v3, p1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 49
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    const-string v4, "CameraApp"

    const-string v5, "listPref is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadSetting(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "CameraApp"

    const-string v1, "Load configuration."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public saveSetting(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v0, "CameraApp"

    const-string v1, "Save configuration."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
