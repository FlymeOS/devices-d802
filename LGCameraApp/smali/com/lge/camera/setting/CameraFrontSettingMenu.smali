.class public Lcom/lge/camera/setting/CameraFrontSettingMenu;
.super Lcom/lge/camera/setting/CameraSettingMenu;
.source "CameraFrontSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "setting"    # Lcom/lge/camera/setting/CameraSetting;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/setting/CameraSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    .line 25
    invoke-virtual {p0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->initMenu()V

    .line 26
    return-void
.end method


# virtual methods
.method public initSettingMenu()V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->initMenu()V

    .line 30
    return-void
.end method
