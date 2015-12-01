.class public abstract Lcom/lge/camera/controller/SettingController;
.super Lcom/lge/camera/controller/Controller;
.source "SettingController.java"

# interfaces
.implements Lcom/lge/camera/setting/Setting$SettingFunction;
.implements Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    }
.end annotation


# static fields
.field private static needToChange:Z

.field private static needToChangeString:Ljava/lang/String;


# instance fields
.field private backup3DCameraMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backup3DVideoMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupCameraFrontMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupCameraMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupVideoFrontMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private backupVideoMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m3DCameraMainOriginalSize:I

.field private m3DVideoMainOriginalSize:I

.field protected mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

.field protected mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

.field protected mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

.field private mCameraFrontOriginalSize:I

.field protected mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

.field protected mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

.field private mCameraMainOriginalSize:I

.field protected mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

.field protected mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

.field private mOriginalSize:I

.field protected mSetting:Lcom/lge/camera/setting/Setting;

.field protected mSettingInit:Z

.field protected mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

.field private mVideoFrontOriginalSize:I

.field protected mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

.field protected mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

.field private mVideoMainOriginalSize:I

.field protected mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraMainMenu:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraFrontMenu:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DCameraMainMenu:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoMainMenu:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoFrontMenu:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DVideoMainMenu:Ljava/util/ArrayList;

    .line 71
    iput-boolean v1, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    .line 75
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 76
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainOriginalSize:I

    .line 77
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontOriginalSize:I

    .line 78
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->m3DCameraMainOriginalSize:I

    .line 79
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainOriginalSize:I

    .line 80
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontOriginalSize:I

    .line 81
    iput v1, p0, Lcom/lge/camera/controller/SettingController;->m3DVideoMainOriginalSize:I

    .line 98
    return-void
.end method

.method private editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 794
    if-eqz p1, :cond_0

    .line 795
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 796
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 797
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 799
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 1
    .param p1, "pg"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 724
    return-void
.end method

.method public applyCameraChange()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 225
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 226
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 227
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    .line 260
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 230
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 231
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->m3DCameraMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DCameraMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 236
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 237
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 238
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupCameraFrontMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 244
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 245
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 246
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 249
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 250
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->m3DVideoMainOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 251
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backup3DVideoMainMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    .line 255
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    .line 256
    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontOriginalSize:I

    iput v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    .line 257
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupVideoFrontMenu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public checkAndCloseChildView()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public abstract displaySettingView()V
.end method

.method public getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    return-object v0
.end method

.method public getCameraMain3dSettingMenu()Lcom/lge/camera/setting/CameraMain3dSettingMenu;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    return-object v0
.end method

.method public getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    return-object v0
.end method

.method public getSetting(I)I
    .locals 1
    .param p1, "settingIndex"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSetting(I)I

    move-result v0

    return v0
.end method

.method public getSetting(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSetting()Lcom/lge/camera/setting/Setting;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 708
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    return-object v0
.end method

.method public getVideoMain3dSettingMenu()Lcom/lge/camera/setting/VideoMain3dSettingMenu;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    return-object v0
.end method

.method public getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    return-object v0
.end method

.method public initController()V
    .locals 6

    .prologue
    .line 102
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    .line 103
    .local v1, "backPreferenceGroup":Lcom/lge/camera/setting/PreferenceGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    .line 104
    .local v2, "frontPreferenceGroup":Lcom/lge/camera/setting/PreferenceGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_1

    .line 105
    new-instance v3, Lcom/lge/camera/setting/CameraSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 107
    new-instance v3, Lcom/lge/camera/setting/CameraSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Secondary_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 109
    new-instance v3, Lcom/lge/camera/setting/CameraMainSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/CameraMainSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    .line 111
    new-instance v3, Lcom/lge/camera/setting/CameraFrontSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/CameraFrontSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    .line 113
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSettingMenu:Lcom/lge/camera/setting/CameraMainSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraMainSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainOriginalSize:I

    .line 114
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSettingMenu:Lcom/lge/camera/setting/CameraFrontSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontOriginalSize:I

    .line 128
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBack3dPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    .line 130
    .local v0, "back3DPreferenceGroup":Lcom/lge/camera/setting/PreferenceGroup;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    .line 131
    new-instance v3, Lcom/lge/camera/setting/CameraSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_3d_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/lge/camera/setting/CameraSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

    .line 133
    new-instance v3, Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/CameraMain3dSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    .line 135
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCameraMain3dSettingMenu:Lcom/lge/camera/setting/CameraMain3dSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/CameraMain3dSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->m3DCameraMainOriginalSize:I

    .line 145
    .end local v0    # "back3DPreferenceGroup":Lcom/lge/camera/setting/PreferenceGroup;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->applyCameraChange()V

    .line 146
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingInit:Z

    .line 147
    return-void

    .line 116
    :cond_1
    new-instance v3, Lcom/lge/camera/setting/VideoSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 118
    new-instance v3, Lcom/lge/camera/setting/VideoSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Secondary_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 120
    new-instance v3, Lcom/lge/camera/setting/VideoMainSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/VideoMainSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    .line 122
    new-instance v3, Lcom/lge/camera/setting/VideoFrontSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/VideoFrontSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    .line 124
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainSettingMenu:Lcom/lge/camera/setting/VideoMainSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/VideoMainSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMainOriginalSize:I

    .line 125
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontSettingMenu:Lcom/lge/camera/setting/VideoFrontSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoFrontOriginalSize:I

    goto/16 :goto_0

    .line 137
    .restart local v0    # "back3DPreferenceGroup":Lcom/lge/camera/setting/PreferenceGroup;
    :cond_2
    new-instance v3, Lcom/lge/camera/setting/VideoSetting;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Main_3d_CameraAppConfig"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/lge/camera/setting/VideoSetting;-><init>(Lcom/lge/camera/setting/Setting$SettingFunction;Landroid/content/Context;Ljava/lang/String;Lcom/lge/camera/setting/PreferenceGroup;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

    .line 139
    new-instance v3, Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMain3dSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-direct {v3, p0, v4, v5}, Lcom/lge/camera/setting/VideoMain3dSettingMenu;-><init>(Lcom/lge/camera/setting/SettingMenu$SettingMenuFunction;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    iput-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    .line 141
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mVideoMain3dSettingMenu:Lcom/lge/camera/setting/VideoMain3dSettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/VideoMain3dSettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SettingController;->m3DVideoMainOriginalSize:I

    goto/16 :goto_1
.end method

.method public initSettingMenu()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SettingController;->mOriginalSize:I

    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->restoreSettingItem()V

    .line 217
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->restoreQFLItemEnableValue()V

    goto :goto_0
.end method

.method public isAttachIntent()Z
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    return v0
.end method

.method public isMMSIntent()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v0

    return v0
.end method

.method public abstract isNullSettingView()Z
.end method

.method public abstract isSettingViewRemoving()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract removeChildSettingView(Z)V
.end method

.method public removePostRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 744
    return-void
.end method

.method public removeSettingItem()V
    .locals 5

    .prologue
    .line 179
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    if-nez v3, :cond_1

    .line 195
    :cond_0
    return-void

    .line 183
    :cond_1
    const/4 v2, 0x0

    .line 184
    .local v2, "menuItem":Lcom/lge/camera/setting/SettingMenuItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3, v1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 187
    new-instance v0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;-><init>(Lcom/lge/camera/controller/SettingController;Lcom/lge/camera/controller/SettingController$1;)V

    .line 188
    .local v0, "backupItem":Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->setIndex(I)V

    .line 189
    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->setSettingMenuItem(Lcom/lge/camera/setting/SettingMenuItem;)V

    .line 190
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3, v1}, Lcom/lge/camera/setting/SettingMenu;->removeMenuItem(I)V

    .line 192
    const/4 v1, 0x0

    .line 184
    .end local v0    # "backupItem":Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract removeSettingView()V
.end method

.method public abstract removeSettingViewAll()V
.end method

.method public restoreQFLItemEnableValue()V
    .locals 5

    .prologue
    .line 198
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    if-nez v3, :cond_1

    .line 209
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v1, 0x0

    .line 202
    .local v1, "index":I
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3}, Lcom/lge/camera/setting/SettingMenu;->getMenuList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 203
    .local v2, "menuListSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 204
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v4, v0}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v1

    .line 205
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    invoke-virtual {v3, v0}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getQFLMenuEnable()[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    iput-boolean v4, v3, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    .line 203
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public restoreSettingItem()V
    .locals 8

    .prologue
    .line 154
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 176
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "backupMenuItem":Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    const/4 v2, 0x0

    .line 160
    .local v2, "listPref":Lcom/lge/camera/setting/ListPreference;
    const/4 v3, 0x0

    .line 161
    .local v3, "settingValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 162
    .local v4, "valueIndex":I
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 163
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "backupMenuItem":Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    check-cast v0, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;

    .line 164
    .restart local v0    # "backupMenuItem":Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    # getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 169
    # getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v5

    iput v4, v5, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    .line 172
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->mSettingMenu:Lcom/lge/camera/setting/SettingMenu;

    # getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItemIndex:I
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$100(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)I

    move-result v6

    # getter for: Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->settingMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-static {v0}, Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;->access$000(Lcom/lge/camera/controller/SettingController$BackUpSettingMenuItem;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/setting/SettingMenu;->insertMenuItem(ILcom/lge/camera/setting/SettingMenuItem;)V

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 175
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/controller/SettingController;->backupMenu:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public rotateSettingBeautyShot(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 811
    return-void
.end method

.method public rotateSettingBrightness(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 808
    return-void
.end method

.method public rotateSettingCamera3dDepth(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 814
    return-void
.end method

.method public rotateSettingZoom(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 805
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 739
    return-void
.end method

.method public setAllChildMenuEnabled(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 728
    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, p1}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 729
    .local v2, "pref":Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 731
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 732
    iget-object v4, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    aget-object v5, v3, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, p2}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_0
    return-void
.end method

.method public setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 752
    const/4 v0, 0x0

    .line 754
    .local v0, "pref":Landroid/content/SharedPreferences;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "back_camera"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 757
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "back_camcorder"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 766
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    if-eqz v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 772
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 774
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "front_camera"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 776
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    if-eqz v1, :cond_2

    .line 778
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 782
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 784
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "front_camcorder"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 786
    invoke-direct {p0, v0, p2, p3}, Lcom/lge/camera/controller/SettingController;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    if-eqz v1, :cond_3

    .line 788
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v1, p2, p3}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 791
    :cond_3
    return-void
.end method

.method public setAttatchModeDefaultVideoSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 357
    return-void
.end method

.method public setLiveeffectLimit()Ljava/lang/String;
    .locals 15

    .prologue
    .line 440
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 441
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v10

    .line 442
    .local v10, "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    if-nez v10, :cond_0

    .line 443
    const-string v11, "CameraApp"

    const-string v12, "videoSizePref is null"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v11, 0x0

    .line 582
    .end local v10    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return-object v11

    .line 446
    .restart local v10    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_0
    const-string v11, "CameraApp"

    const-string v12, "setLiveeffectLimit"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 449
    .local v7, "values":[Ljava/lang/CharSequence;
    invoke-virtual {v10}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 451
    const/4 v6, 0x0

    .line 452
    .local v6, "size":Ljava/lang/String;
    const/4 v11, 0x1

    sput-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "available":Z
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 455
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v4, v7

    .local v4, "len":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 456
    aget-object v11, v7, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 457
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v11

    invoke-static {v6, v11}, Lcom/lge/camera/properties/MultimediaProperties;->isAvailableLiveeffectResolution(Ljava/lang/String;I)Z

    move-result v1

    .line 459
    if-eqz v1, :cond_1

    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 460
    const/4 v11, 0x0

    sput-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 455
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_2
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 465
    :cond_3
    const/4 v11, 0x1

    sput-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    .line 467
    :cond_4
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "needToChange = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-boolean v11, Lcom/lge/camera/controller/SettingController;->needToChange:Z

    if-eqz v11, :cond_6

    .line 469
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 470
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 471
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousResolution()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 474
    :cond_5
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 476
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DualRec Video Size = Default dualrec video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_2
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video size is set for Dual Recording : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_6
    :goto_3
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v11

    if-nez v11, :cond_f

    .line 524
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v4, v7

    .restart local v4    # "len":I
    :goto_4
    if-ge v2, v4, :cond_15

    .line 525
    aget-object v11, v7, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 526
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 527
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 524
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 480
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_7
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 482
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DualRec Video Size = Selected video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 486
    :cond_8
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 488
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DualRec Video Size = Current Video Size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 492
    :cond_9
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 493
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    if-eqz v11, :cond_c

    .line 494
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousResolution()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviousEffectType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 497
    :cond_a
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_DEFAULT_VIDEO_SIZE:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 499
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SmartZoom Video Size = Default SmartZoom video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_6
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video size is set for SmartZoom Recording : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 503
    :cond_b
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 505
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SmartZoom Video Size = Selected video size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 509
    :cond_c
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 511
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SmartZoom Video Size = Current Video Size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 517
    :cond_d
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v11

    invoke-static {v11}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    .line 519
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video size is set for Live Effect : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 530
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_e
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 536
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_f
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 537
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->DUALREC_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 544
    .local v9, "videoSizeOnMenu":[Ljava/lang/String;
    :goto_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v4, v7

    .restart local v4    # "len":I
    :goto_8
    if-ge v2, v4, :cond_11

    .line 545
    aget-object v11, v7, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 546
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 540
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v9    # "videoSizeOnMenu":[Ljava/lang/String;
    :cond_10
    sget-object v11, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_VIDEO_SIZE_LISTED_ON_MENU:Ljava/lang/String;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "videoSizeOnMenu":[Ljava/lang/String;
    goto :goto_7

    .line 550
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_11
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v5, :cond_15

    aget-object v8, v0, v3

    .line 551
    .local v8, "videoSize":Ljava/lang/String;
    const-string v11, "1920x1080"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 552
    const-string v8, "1920x1088"

    .line 554
    :cond_12
    const/4 v2, 0x0

    array-length v4, v7

    :goto_a
    if-ge v2, v4, :cond_14

    .line 555
    aget-object v11, v7, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 556
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 557
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v6, v13}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 554
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 550
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 566
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "videoSize":Ljava/lang/String;
    .end local v9    # "videoSizeOnMenu":[Ljava/lang/String;
    :cond_15
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    sget-object v13, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 567
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v12, "key_preview_size_on_device"

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 569
    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v12, Lcom/lge/camera/controller/SettingController$2;

    invoke-direct {v12, p0}, Lcom/lge/camera/controller/SettingController$2;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-interface {v11, v12}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 580
    sget-object v11, Lcom/lge/camera/controller/SettingController;->needToChangeString:Ljava/lang/String;

    goto/16 :goto_0

    .line 582
    .end local v1    # "available":Z
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v6    # "size":Ljava/lang/String;
    .end local v7    # "values":[Ljava/lang/CharSequence;
    .end local v10    # "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public setMmsLimit(Z)V
    .locals 14
    .param p1, "mmsVideo"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 376
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 377
    .local v8, "videoSizePref":Lcom/lge/camera/setting/ListPreference;
    if-nez v8, :cond_0

    .line 378
    const-string v10, "CameraApp"

    const-string v11, "videoSizePref is null"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 382
    .local v7, "values":[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getQfIndex(Ljava/lang/String;)I

    move-result v9

    .line 383
    .local v9, "videoSizePrefIndex":I
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "selectedResolution":Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 387
    .local v2, "isMMS":Z
    if-nez v2, :cond_1

    const-string v10, "320x240"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "176x144"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 391
    :cond_1
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v12}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 396
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->isMMSIntent()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 397
    const/4 v6, 0x0

    .line 398
    .local v6, "size":Ljava/lang/String;
    const/4 v4, 0x1

    .line 399
    .local v4, "needChange":Z
    const/4 v0, 0x0

    .line 400
    .local v0, "available":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v7

    .local v3, "len":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 401
    aget-object v10, v7, v1

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 402
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 403
    if-eqz v0, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 404
    const/4 v4, 0x0

    .line 406
    :cond_2
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11, v6, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 393
    .end local v0    # "available":Z
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v4    # "needChange":Z
    .end local v6    # "size":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v13}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    goto :goto_1

    .line 410
    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "needChange":Z
    .restart local v6    # "size":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 411
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/camera/properties/MmsProperties;->getMmsResolutions(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v10

    aget-object v5, v10, v12

    .line 424
    .end local v0    # "available":Z
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v4    # "needChange":Z
    .end local v6    # "size":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/SettingController;->isAttachIntent()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 425
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_video_auto_review"

    invoke-interface {v10, v11, v12, v12}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 429
    :goto_3
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_preview_size_on_device"

    invoke-interface {v10, v11, v5, v13}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 431
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v11, Lcom/lge/camera/controller/SettingController$1;

    invoke-direct {v11, p0}, Lcom/lge/camera/controller/SettingController$1;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 414
    :cond_6
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isEffectsCameraActive()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 415
    :cond_7
    const-string v10, "CameraApp"

    const-string v11, "skip! resolution is already setted by effectActive "

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :cond_8
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10, v9}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionList(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 419
    const/4 v1, 0x0

    .restart local v1    # "i":I
    array-length v3, v7

    .restart local v3    # "len":I
    :goto_4
    if-ge v1, v3, :cond_5

    .line 420
    const-string v10, "key_preview_size_on_device"

    invoke-virtual {p0, v10, v13}, Lcom/lge/camera/controller/SettingController;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 427
    .end local v1    # "i":I
    .end local v3    # "len":I
    :cond_9
    iget-object v10, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_video_auto_review"

    invoke-interface {v10, v11, v13, v12}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    goto :goto_3
.end method

.method public setSetting(II)Z
    .locals 2
    .param p1, "settingIndex"    # I
    .param p2, "settingValue"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_audio_recording"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_auto_review"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_storage"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_voiceshutter"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_uplus_box"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_video_stabilization"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_volume"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_beautyshot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 291
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_camera_anti_banding"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_restore"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    const-string v1, "key_help_guide"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 301
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(II)Z

    move-result v0

    goto :goto_0

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/Setting;->setSetting(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "needSave"    # Z

    .prologue
    .line 312
    const-string v0, "key_camera_auto_review"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_tag_location"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_audio_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_auto_review"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shutter_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_voiceshutter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_uplus_box"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_video_stabilization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_beautyshot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 335
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    const-string v0, "key_camera_anti_banding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 330
    :cond_2
    const-string v0, "key_restore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "key_help_guide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 335
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/setting/Setting;->setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected setSettingAllPreferences(II)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 360
    const/4 v1, 0x1

    .line 361
    .local v1, "mainSetting":Z
    const/4 v0, 0x1

    .line 364
    .local v0, "frontSetting":Z
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(II)Z

    move-result v1

    .line 366
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(II)Z

    move-result v0

    .line 372
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(II)Z

    move-result v1

    .line 369
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(II)Z

    move-result v0

    goto :goto_0

    .line 372
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected setSettingAllPreferences(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v1, 0x1

    .line 340
    .local v1, "mainSetting":Z
    const/4 v0, 0x1

    .line 343
    .local v0, "frontSetting":Z
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraMainSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 345
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCameraFrontSetting:Lcom/lge/camera/setting/CameraSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/CameraSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 351
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderMainSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 348
    iget-object v2, p0, Lcom/lge/camera/controller/SettingController;->mCamcorderFrontSetting:Lcom/lge/camera/setting/VideoSetting;

    invoke-virtual {v2, p1, p2}, Lcom/lge/camera/setting/VideoSetting;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 351
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setSettingForDualCamera(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    .line 586
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_swap"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 587
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 588
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_flash"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 589
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_zoom"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 590
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 591
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_picturesize"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 592
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 593
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_time_machine"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 594
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_brightness"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 595
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 596
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_save_direction"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 598
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setMenuEnableForSceneMode(I)V

    .line 599
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 600
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    invoke-interface {v1, v2, p1}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 604
    :cond_0
    if-nez p1, :cond_3

    .line 605
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_voiceshutter"

    const-string v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 606
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->resetBrightnessController()V

    .line 608
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 609
    .local v0, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_1

    .line 610
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_scene_mode"

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_iso"

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_iso"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 620
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_whitebalance"

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_whitebalance"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_coloreffect"

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_coloreffect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 624
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_timer"

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 626
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 627
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_auto_review"

    iget-object v3, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_auto_review"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 631
    .end local v0    # "pref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    return-void
.end method

.method public setTimeMachineLimit(Z)V
    .locals 12
    .param p1, "set"    # Z

    .prologue
    .line 634
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachineShotSizeLimit()Z

    move-result v9

    if-nez v9, :cond_0

    .line 680
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 639
    .local v5, "pictureSizePref":Lcom/lge/camera/setting/ListPreference;
    iget-object v9, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 641
    .local v6, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 642
    :cond_1
    const-string v9, "CameraApp"

    const-string v10, "pictureSizePref or pref is null"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_2
    const-string v9, "CameraApp"

    const-string v10, "setTimeMachineLimit"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 647
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 648
    .local v3, "limitSize":Z
    invoke-virtual {v6}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 649
    .local v4, "mSelectedSize":Ljava/lang/String;
    const/4 v7, 0x0

    .line 650
    .local v7, "size":Ljava/lang/String;
    const/4 v0, 0x1

    .line 652
    .local v0, "available":Z
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v8

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 653
    aget-object v9, v8, v1

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 655
    const/4 v0, 0x1

    .line 657
    invoke-static {v7}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p1, :cond_3

    .line 658
    const/4 v3, 0x1

    .line 659
    const/4 v0, 0x0

    .line 661
    :cond_3
    iget-object v9, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10, v7, v0}, Lcom/lge/camera/ControllerFunction;->setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 663
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 664
    iget-object v9, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    invoke-interface {v9, v10, v7, v0}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    :cond_4
    invoke-static {v4}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachineShotSizeAvailable(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 670
    iget-object v9, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_picturesize"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v4, v11}, Lcom/lge/camera/ControllerFunction;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 673
    :cond_5
    iget-object v9, p0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v10, Lcom/lge/camera/controller/SettingController$3;

    invoke-direct {v10, p0}, Lcom/lge/camera/controller/SettingController$3;-><init>(Lcom/lge/camera/controller/SettingController;)V

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 652
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public startRotation(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 802
    return-void
.end method
