.class public Lcom/lge/camera/Camcorder;
.super Lcom/lge/camera/CameraActivity;
.source "Camcorder.java"


# instance fields
.field private mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/camera/CameraActivity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    .line 45
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 46
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct VIDEO app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private camcorderControllerInit()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 165
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->setLocalSetting()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->initController()V

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->camcorderUiControllerInit()V

    .line 172
    return-void
.end method

.method private camcorderUiControllerInit()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->initController()V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->initController()V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->initController()V

    .line 218
    :cond_3
    return-void
.end method


# virtual methods
.method protected changeLocalSetting()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public doPhoneStateListenerAction(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 300
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v1, "com.lge.camera.command.StopRecording"

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 306
    :cond_1
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
    .line 222
    sget v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    .line 223
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy VIDEO app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_CAMCORDER_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 225
    return-void
.end method

.method public getActivity()Lcom/lge/camera/CameraActivity;
    .locals 0

    .prologue
    .line 295
    return-object p0
.end method

.method public getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 229
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

    .line 230
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/lge/camera/CameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 238
    return-void

    .line 232
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/lge/camera/Camcorder;->resultForPostview(Landroid/content/Intent;)Z

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
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
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 56
    invoke-static {v8}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 57
    sput-boolean v6, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 71
    :cond_0
    new-instance v4, Lcom/lge/camera/CamcorderMediator;

    invoke-direct {v4, p0}, Lcom/lge/camera/CamcorderMediator;-><init>(Lcom/lge/camera/Camcorder;)V

    iput-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    .line 72
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->setKeepLastCameraMode()V

    .line 74
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->createPreviewController()V

    .line 75
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->onCreate()V

    .line 76
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->onCreate()V

    .line 78
    new-instance v1, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "inflater":Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCamcorderPreferenceResource()I

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
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4, v2}, Lcom/lge/camera/CamcorderMediator;->setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 86
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getFrontCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    .end local v2    # "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    .line 88
    .restart local v2    # "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    if-eqz v2, :cond_2

    .line 89
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4, v2}, Lcom/lge/camera/CamcorderMediator;->setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/lge/camera/setting/SettingVariant;->makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 93
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    iget-object v5, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBack3dCamcorderPreferenceResource()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v4}, Lcom/lge/camera/CamcorderMediator;->setBack3dPreference(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 98
    :cond_3
    new-instance v4, Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-direct {v4}, Lcom/lge/camera/listeners/OnKeyEventListener;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/Camcorder;->mOnKeyEventListener:Lcom/lge/camera/listeners/OnKeyEventListener;

    .line 99
    new-instance v4, Lcom/lge/camera/listeners/ExtraTouchEventListener;

    invoke-direct {v4}, Lcom/lge/camera/listeners/ExtraTouchEventListener;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/Camcorder;->mExtraTouchEventListener:Lcom/lge/camera/listeners/ExtraTouchEventListener;

    .line 101
    const v4, 0x7f030016

    invoke-virtual {p0, v4}, Lcom/lge/camera/Camcorder;->setContentView(I)V

    .line 103
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CamcorderMediator;->setKeepLastValue()V

    .line 104
    invoke-direct {p0}, Lcom/lge/camera/Camcorder;->camcorderControllerInit()V

    .line 105
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v4

    if-nez v4, :cond_4

    .line 106
    iget-object v4, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v5, "com.lge.camera.command.StartInit"

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Lcom/lge/camera/CamcorderMediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 110
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->setFullScreen(Landroid/app/Activity;)V

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/lge/camera/util/AppControlUtil;->setTransparentNavigationBar(Landroid/app/Activity;Z)V

    .line 113
    invoke-static {p0}, Lcom/lge/camera/util/AppControlUtil;->setTranslucentStatusBar(Landroid/app/Activity;)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/lge/camera/util/AppControlUtil;->setEnableRotateNaviataionBar(Landroid/app/Activity;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/AppControlUtil;->disableNavigationButton(Landroid/app/Activity;)V

    .line 117
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    const-string v4, "CameraApp"

    const-string v5, "onCreate()-end"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
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
    .line 158
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onDestroy()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    .line 160
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onPause()V

    .line 153
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->reduceBrightnessMode(Landroid/content/Context;Z)V

    .line 154
    return-void
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    const v0, 0x7f090008

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f090009

    invoke-static {p0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 126
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v2}, Lcom/lge/camera/util/CheckStatusManager;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end, checkEnterApplication"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {v2}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 138
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->getCheckEnterOutSecure()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 139
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->setCheckEnterOutSecure(I)V

    .line 140
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVTCallStatus(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 146
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 147
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->reduceBrightnessMode(Landroid/content/Context;Z)V

    .line 148
    :goto_1
    return-void

    .line 132
    :cond_2
    invoke-super {p0}, Lcom/lge/camera/CameraActivity;->onResume()V

    .line 133
    invoke-static {p0, v3}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CheckStatusManager;->checkCameraOut(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected releaseEachMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->UnblockAlarmInRecording(Landroid/app/Activity;)V

    .line 276
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setMuteNotificationStream(Landroid/content/Context;Z)V

    .line 277
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setMuteSystemStream(Landroid/content/Context;Z)V

    .line 278
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeMessages(I)V

    .line 279
    return-void
.end method

.method protected setLocalSetting()V
    .locals 6

    .prologue
    .line 181
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->readVideoIntentExtras()V

    .line 188
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getRequestedVideoSizeLimit()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.msg.camera.max.video.resolution"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "mmsResolution":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_2

    const-string v1, "640x480"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    const-string v2, "640x480"

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/SettingController;->setAttatchModeDefaultVideoSize(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    const-string v2, "320x240"

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/SettingController;->setAttatchModeDefaultVideoSize(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setStatusForAttach(Z)V
    .locals 2
    .param p1, "postview_mode"    # Z

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lge/camera/CamcorderMediator;->setVideoState(I)V

    .line 286
    :cond_0
    return-void
.end method

.method protected setThumbnailForPostviewReturn(Landroid/os/Bundle;)Z
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 246
    if-eqz p1, :cond_2

    .line 248
    :try_start_0
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 249
    .local v4, "videoUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 252
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/lge/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "savedPath":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "pathFromUri":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 255
    :cond_0
    const-string v7, "CameraApp"

    const-string v8, "Saved uri is not valid. Find most recent uri."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v4

    .line 258
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7, v4}, Lcom/lge/camera/CamcorderMediator;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    :goto_0
    iget-object v7, p0, Lcom/lge/camera/Camcorder;->mCamcorderMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 270
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "pathFromUri":Ljava/lang/String;
    .end local v3    # "savedPath":Ljava/lang/String;
    .end local v4    # "videoUri":Landroid/net/Uri;
    :goto_1
    return v5

    .line 260
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v2    # "pathFromUri":Ljava/lang/String;
    .restart local v3    # "savedPath":Ljava/lang/String;
    .restart local v4    # "videoUri":Landroid/net/Uri;
    :cond_1
    const-string v7, "thumb_data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 265
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "pathFromUri":Ljava/lang/String;
    .end local v3    # "savedPath":Ljava/lang/String;
    .end local v4    # "videoUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "CameraApp"

    const-string v7, "NullPointerException:"

    invoke-static {v5, v7, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 267
    goto :goto_1

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_2
    move v5, v6

    .line 270
    goto :goto_1
.end method
