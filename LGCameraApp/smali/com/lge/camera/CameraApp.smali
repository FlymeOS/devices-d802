.class public Lcom/lge/camera/CameraApp;
.super Lcom/lge/camera/CameraActivity;
.source "CameraApp.java"


# instance fields
.field private mCameraMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/camera/CameraActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 45
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 46
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct CAMERA app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private cameraControllerInit()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 174
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->setLocalSetting()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraPreviewController;->initController()V

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->cameraUiControllerInit()V

    .line 180
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->setupCaptureParams()V

    .line 181
    return-void
.end method

.method private cameraUiControllerInit()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;->initController()V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->initController()V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->initController()V

    .line 199
    :cond_3
    return-void
.end method

.method private resultCodeCrop(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 277
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->beDirectlyGoingToCropGallery()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 284
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 288
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/lge/camera/CameraApp;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->finish()V

    .line 291
    const-string v3, "crop-temp"

    invoke-virtual {p0, v3}, Lcom/lge/camera/CameraApp;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 292
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private resultCodeHelp(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 297
    .local v1, "strValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 300
    const-string v2, "key_camera_timer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v3, "key_camera_timer"

    invoke-virtual {v2, v3, v1}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 306
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeLocalSetting()V
    .locals 5

    .prologue
    .line 207
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    if-nez v3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "simOperator":Ljava/lang/String;
    const-string v0, "0"

    .line 217
    .local v0, "currentMCC":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 218
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v3, "466"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_auto_review"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 222
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 223
    const-string v3, "on"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 225
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_auto_review"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    const-string v3, "on"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doPhoneStateListenerAction(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "key_voiceshutter"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 375
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 248
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    .line 249
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy CAMERA app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMERA_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 251
    return-void
.end method

.method public getActivity()Lcom/lge/camera/CameraActivity;
    .locals 0

    .prologue
    .line 363
    return-object p0
.end method

.method public getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 255
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sparse-switch p1, :sswitch_data_0

    .line 273
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lge/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 274
    return-void

    .line 258
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lcom/lge/camera/CameraApp;->resultCodeCrop(ILandroid/content/Intent;)V

    goto :goto_0

    .line 261
    :sswitch_1
    invoke-direct {p0, p3}, Lcom/lge/camera/CameraApp;->resultCodeHelp(Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    :sswitch_2
    invoke-virtual {p0, p3}, Lcom/lge/camera/CameraApp;->resultForPostview(Landroid/content/Intent;)Z

    goto :goto_0

    .line 256
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/lge/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0, v6}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    const-string v4, "CameraApp"

    const-string v5, "onCreate()-end, checkEnterApplication fail."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 56
    invoke-static {v8}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 57
    sput-boolean v6, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->setQuickWindowCameraFromIntent(Landroid/content/Intent;)V

    .line 71
    new-instance v4, Lcom/lge/camera/CameraMediator;

    invoke-direct {v4, p0}, Lcom/lge/camera/CameraMediator;-><init>(Lcom/lge/camera/CameraApp;)V

    iput-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 72
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->setKeepLastCameraMode()V

    .line 74
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->createPreviewController()V

    .line 75
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camera/CameraPreviewController;->onCreate()V

    .line 76
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->onCreate()V

    .line 78
    new-instance v1, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "inflater":Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    .line 81
    .local v2, "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    new-instance v3, Lcom/lge/camera/setting/SettingVariant;

    invoke-direct {v3}, Lcom/lge/camera/setting/SettingVariant;-><init>()V

    .line 82
    .local v3, "settingVariant":Lcom/lge/camera/setting/SettingVariant;
    if-eqz v2, :cond_1

    .line 83
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4, v2}, Lcom/lge/camera/CameraMediator;->setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 86
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    .end local v2    # "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    .line 88
    .restart local v2    # "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v2, :cond_2

    .line 89
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4, v2}, Lcom/lge/camera/CameraMediator;->setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->changeLocalSetting()V

    .line 95
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    iget-object v5, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCameraPreferenceResource()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v4}, Lcom/lge/camera/CameraMediator;->setBack3dPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 100
    :cond_3
    new-instance v4, Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-direct {v4}, Lcom/lge/camera/listeners/OnKeyEventListener;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/CameraApp;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 101
    new-instance v4, Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-direct {v4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/CameraApp;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .line 103
    const v4, 0x7f030016

    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraApp;->setContentView(I)V

    .line 105
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->setKeepLastValue()V

    .line 106
    invoke-direct {p0}, Lcom/lge/camera/CameraApp;->cameraControllerInit()V

    .line 107
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v4

    if-nez v4, :cond_4

    .line 108
    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v5, "com.lge.camera.command.StartInit"

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/CameraMediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 110
    :cond_4
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setQuickClipScreenCaptureLimit(Landroid/app/Activity;)V

    .line 112
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->setFullScreen(Landroid/app/Activity;)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/lge/camera/util/AppControlUtil;->setTransparentNavigationBar(Landroid/app/Activity;Z)V

    .line 115
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setTranslucentStatusBar(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/lge/camera/util/AppControlUtil;->setEnableRotateNaviataionBar(Landroid/app/Activity;Z)V

    .line 117
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->disableNavigationButton(Landroid/app/Activity;)V

    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    const-string v4, "CameraApp"

    const-string v5, "onCreate()-end "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v1    # "inflater":Lcom/lge/camera/setting/PreferenceInflater;
    .end local v2    # "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    .end local v3    # "settingVariant":Lcom/lge/camera/setting/SettingVariant;
    :goto_0
    return-void

    .line 60
    :cond_6
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 61
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    sput-boolean v6, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 66
    invoke-static {p0, v9}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "CameraApp"

    const-string v5, "onCreate() InterruptedException "

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onDestroy()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 169
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onPause()V

    .line 163
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    const v0, 0x7f090008

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f090009

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 129
    const v0, 0x7f090013

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f090015

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f090014

    invoke-static {p0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/lge/camera/properties/CameraConstants;->setSmartCoverSize(III)V

    .line 137
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v3}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end, checkEnterApplication"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-static {v3}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 149
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 150
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 151
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVTCallStatus(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 157
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 158
    :goto_1
    return-void

    .line 143
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 144
    invoke-static {p0, v4}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CameraApp;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected releaseEachMode()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method protected resultForSaveDone(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 310
    if-eqz p1, :cond_0

    .line 311
    const-string v2, "save_done"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 312
    .local v0, "saveDone":Z
    if-eqz v0, :cond_0

    .line 313
    iput-boolean v1, p0, Lcom/lge/camera/CameraApp;->mPostviewRequestSaveDone:Z

    .line 314
    const-string v2, "CameraApp"

    const-string v3, "REQUEST_CODE_POSTVIEW save done"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v0    # "saveDone":Z
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setLocalSetting()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string v0, "LG-E973"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_flash"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected setStatusForAttach(Z)V
    .locals 2
    .param p1, "postview_mode"    # Z

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/CameraMediator;->setStatus(I)V

    .line 354
    :cond_0
    return-void
.end method

.method protected setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 323
    if-eqz p1, :cond_1

    .line 325
    :try_start_0
    const-string v2, "thumb_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 326
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 327
    const-string v2, "recent_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    .line 328
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 335
    :goto_0
    const/4 v2, 0x1

    .line 342
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_1
    return v2

    .line 332
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    iget-object v4, p0, Lcom/lge/camera/CameraApp;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v4, "NullPointerException:"

    invoke-static {v2, v4, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 339
    goto :goto_1

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    move v2, v3

    .line 342
    goto :goto_1
.end method
