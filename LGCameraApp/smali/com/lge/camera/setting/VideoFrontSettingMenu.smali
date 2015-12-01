.class public Lcom/lge/camera/setting/VideoFrontSettingMenu;
.super Lcom/lge/camera/setting/VideoSettingMenu;
.source "VideoFrontSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V
    .locals 1
    .param p1, "function"    # Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "setting"    # Lcom/lge/camera/setting/VideoSetting;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/setting/VideoSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    .line 16
    iget-object v0, p0, Lcom/lge/camera/setting/VideoFrontSettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->setSettingPreferenceGroupForVideo(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 18
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->initMenu()V

    .line 19
    return-void
.end method


# virtual methods
.method public initSettingMenu()V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->initMenu()V

    .line 23
    return-void
.end method
