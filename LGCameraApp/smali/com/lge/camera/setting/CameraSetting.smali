.class public Lcom/lge/camera/setting/CameraSetting;
.super Lcom/lge/camera/setting/Setting;
.source "CameraSetting.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/setting/Setting$SettingFunction;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "prefGroup"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/setting/Setting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/lge/camera/setting/CameraSetting;->loadSetting(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public loadSetting(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/setting/CameraSetting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/Setting$SettingFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :cond_0
    return-void
.end method

.method public saveSetting(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/setting/CameraSetting;->mGet:Lcom/lge/camera/setting/Setting$SettingFunction;

    invoke-interface {v0}, Lcom/lge/camera/setting/Setting$SettingFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    :cond_0
    return-void
.end method
