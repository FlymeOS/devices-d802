.class public abstract Lcom/lge/camera/Mediator;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;
.implements Lcom/lge/camera/ControllerFunction;
.implements Lcom/lge/camera/LocationInfo$LocationInfoFunction;
.implements Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;
.implements Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;
.implements Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;
.implements Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;
.implements Lcom/lge/camera/util/MainHandler$HandlerFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/Mediator$ActivityBridge;
    }
.end annotation


# instance fields
.field private bShowCameraErrorPopup:Z

.field protected imageHandler:Lcom/lge/camera/util/ImageHandler;

.field protected imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

.field private isCameraKeyLongPressed:Z

.field private isEventIgnoreDuringSaving:Z

.field private isNeedProgressDuringCapture:Z

.field protected mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

.field private mActualBatteryLevel:I

.field protected mApplicationMode:I

.field private mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

.field private mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mBatteryLevel:I

.field protected mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

.field private mBlockTouchByCallPopUp:Z

.field protected mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

.field protected mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

.field protected mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

.field protected mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

.field private mCameraId:I

.field protected mCameraMode:I

.field protected mCaptureData:[B

.field private mChangingToOtherActivity:Z

.field public mCharging:Z

.field protected mCheckTemperature:Lcom/lge/camera/CheckTemperature;

.field protected mCommandManager:Lcom/lge/camera/command/CommandManager;

.field private mControllerInitialized:Z

.field public mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRecordingTime:J

.field protected mDialogController:Lcom/lge/camera/controller/DialogController;

.field protected mDidRegister:Z

.field private mErrorOccuredAndFinish:Z

.field private mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

.field protected mFocusController:Lcom/lge/camera/controller/FocusController;

.field protected mFocusMode:I

.field private mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

.field private mGoingAutoQuickReview:Z

.field protected mHandler:Lcom/lge/camera/util/MainHandler;

.field protected mImageRotationDegree:I

.field private mInCaptureProgress:Z

.field protected mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

.field private mIsBackKeyPressed:Z

.field public mIsClearView:Z

.field private mIsClearViewBeforeRecording:Z

.field private mIsEnableInput:Z

.field private mIsFlashOffByHighTemperature:Z

.field private mIsIAFlashOn:Z

.field private mIsSendBroadcastIntent:Z

.field private mIsSwapCameraProcessing:Z

.field protected mLocationInfo:Lcom/lge/camera/LocationInfo;

.field protected mMainCameraDimension:I

.field protected mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

.field protected mModule:Lcom/lge/camera/module/Module;

.field public mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

.field private mOpenLBSSetting:Z

.field protected mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

.field protected mOrientationInfo:Lcom/lge/camera/OrientationInfo;

.field private mParameteredRotation:I

.field protected mPausing:Z

.field private mPostRunnableLock:Ljava/lang/Object;

.field private mPostRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewController:Lcom/lge/camera/controller/PreviewController;

.field protected mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

.field protected mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

.field protected mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

.field protected mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

.field protected mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

.field private mRefreshMenuRunnable:Ljava/lang/Runnable;

.field private mRotateBatteryIndicatorwithHint:Z

.field protected mSaveUri:Landroid/net/Uri;

.field protected mSavedFileName:Ljava/lang/String;

.field protected mSavedImageUri:Landroid/net/Uri;

.field protected mSavedVideoUri:Landroid/net/Uri;

.field private mSetCameraMode:Z

.field private mSetTimeMachineComplete:Z

.field protected mSettingController:Lcom/lge/camera/controller/SettingController;

.field protected mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

.field protected mSoundController:Lcom/lge/camera/controller/SoundController;

.field protected mStatus:I

.field protected mStorageController:Lcom/lge/camera/controller/StorageController;

.field protected mSubMenuMode:I

.field private mToast:Landroid/widget/Toast;

.field protected mToastController:Lcom/lge/camera/controller/ToastController;

.field protected mUiThread:Ljava/lang/Thread;

.field private mVideoState:I

.field protected mZoomController:Lcom/lge/camera/controller/ZoomController;

.field private strLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator$ActivityBridge;)V
    .locals 4
    .param p1, "activity"    # Lcom/lge/camera/Mediator$ActivityBridge;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    .line 291
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 300
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    .line 301
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mCaptureData:[B

    .line 302
    iput v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 307
    iput v2, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    .line 308
    iput v2, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    .line 309
    iput v2, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    .line 313
    iput v2, p0, Lcom/lge/camera/Mediator;->mStatus:I

    .line 315
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    .line 316
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 317
    new-instance v0, Lcom/lge/camera/OrientationInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/OrientationInfo;-><init>(Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    .line 318
    new-instance v0, Lcom/lge/camera/LocationInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/LocationInfo;-><init>(Lcom/lge/camera/LocationInfo$LocationInfoFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    .line 320
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    .line 324
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mSetCameraMode:Z

    .line 325
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    .line 327
    new-instance v0, Lcom/lge/camera/util/ImageRotationOn;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOn;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 328
    new-instance v0, Lcom/lge/camera/util/ImageRotationOff;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOff;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

    .line 331
    iput-boolean v1, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    .line 333
    new-instance v0, Lcom/lge/camera/command/CommandManager;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/CommandManager;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    .line 334
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    invoke-direct {v0, p0}, Lcom/lge/camera/util/MainHandler;-><init>(Lcom/lge/camera/util/MainHandler$HandlerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 335
    new-instance v0, Lcom/lge/camera/CheckTemperature;

    invoke-direct {v0, p0}, Lcom/lge/camera/CheckTemperature;-><init>(Lcom/lge/camera/CheckTemperature$CheckTemperatureFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    .line 339
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 340
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    .line 342
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 343
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 344
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    .line 346
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnableLock:Ljava/lang/Object;

    .line 348
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    .line 349
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 350
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    .line 351
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mBlockTouchByCallPopUp:Z

    .line 352
    iput-boolean v1, p0, Lcom/lge/camera/Mediator;->mIsSendBroadcastIntent:Z

    .line 353
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    .line 354
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/Mediator;->mCurrentRecordingTime:J

    .line 357
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mSetTimeMachineComplete:Z

    .line 358
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed:Z

    .line 360
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->isNeedProgressDuringCapture:Z

    .line 361
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    .line 362
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsBackKeyPressed:Z

    .line 656
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 657
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 658
    iput-object v3, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 885
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    .line 886
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    .line 2011
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    .line 2021
    const-string v0, "en"

    iput-object v0, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    .line 2031
    new-instance v0, Lcom/lge/camera/Mediator$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$1;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    .line 2283
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->bShowCameraErrorPopup:Z

    .line 4015
    new-instance v0, Lcom/lge/olaworks/library/FaceBeauty;

    invoke-direct {v0}, Lcom/lge/olaworks/library/FaceBeauty;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    .line 5163
    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsFlashOffByHighTemperature:Z

    .line 377
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    .line 381
    new-instance v0, Lcom/lge/camera/module/ModuleFactory;

    const-string v1, "com.lge.camera.module"

    invoke-direct {v0, v1, p0}, Lcom/lge/camera/module/ModuleFactory;-><init>(Ljava/lang/String;Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 382
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 383
    return-void
.end method

.method private checkFreespace()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 5339
    const-string v6, "CameraApp"

    const-string v7, "CheckFreespace"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5340
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->getSavedUri()Landroid/net/Uri;

    move-result-object v4

    .line 5341
    .local v4, "savedUri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    .line 5343
    .local v1, "defaultFileExtension":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5344
    .local v2, "originalFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 5345
    .local v0, "checkFilePath":Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v7}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSavedFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5348
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cameraCaptureFilePath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5349
    new-instance v2, Ljava/io/File;

    .end local v2    # "originalFile":Ljava/io/File;
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5354
    .restart local v2    # "originalFile":Ljava/io/File;
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v6, :cond_0

    .line 5355
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5356
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FilePathFromRequestApp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->getRequestedAttachFileStorage()I

    move-result v3

    .line 5360
    .local v3, "requestAppStorageID":I
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 5361
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStorageController.getFreeSpace(RequestAppStorageID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v8, v3}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5364
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OriImage.length(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5365
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v6, v3}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 5367
    const/4 v5, 0x1

    .line 5372
    .end local v3    # "requestAppStorageID":I
    :cond_0
    return v5
.end method

.method private getButtonDefine(ZZZ)Landroid/util/SparseIntArray;
    .locals 14
    .param p1, "needModeButton"    # Z
    .param p2, "isIAon"    # Z
    .param p3, "addFlash"    # Z

    .prologue
    .line 2673
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 2674
    .local v1, "buttonDefine":Landroid/util/SparseIntArray;
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 2675
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v12

    const/4 v13, 0x6

    if-ne v12, v13, :cond_2

    .line 2676
    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2677
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2678
    const/4 v12, 0x7

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2679
    const/16 v12, 0x8

    const/4 v13, 0x3

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2734
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v12

    if-nez v12, :cond_10

    .line 2735
    const/16 v12, 0x9

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-eqz v12, :cond_1

    .line 2736
    const/16 v12, 0x9

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2740
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 2741
    .local v9, "tempArraySize":I
    const/4 v2, 0x2

    .line 2742
    .local v2, "half":I
    const/4 v5, 0x4

    .line 2743
    .local v5, "sizeOf4":I
    const/4 v6, 0x5

    .line 2744
    .local v6, "sizeOf5":I
    const/4 v7, 0x0

    .line 2746
    .local v7, "startIndex":I
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2747
    .local v0, "arraySize":I
    new-array v10, v9, [I

    .line 2748
    .local v10, "tempKey":[I
    new-array v11, v9, [I

    .line 2750
    .local v11, "tempValue":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_d

    .line 2751
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    aput v12, v10, v3

    .line 2752
    aget v12, v10, v3

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    aput v12, v11, v3

    .line 2750
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2682
    .end local v0    # "arraySize":I
    .end local v2    # "half":I
    .end local v3    # "i":I
    .end local v5    # "sizeOf4":I
    .end local v6    # "sizeOf5":I
    .end local v7    # "startIndex":I
    .end local v9    # "tempArraySize":I
    .end local v10    # "tempKey":[I
    .end local v11    # "tempValue":[I
    :cond_2
    const/16 v12, 0xa

    const/4 v13, 0x5

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2683
    const/16 v12, 0x9

    const/4 v13, 0x6

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2684
    const/4 v12, 0x7

    const/4 v13, 0x7

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2686
    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_5

    .line 2687
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportLightFrame()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2689
    const/16 v12, 0xb

    const/4 v13, 0x5

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2690
    const/16 v12, 0x9

    const/4 v13, 0x6

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2691
    const/4 v12, 0x7

    const/4 v13, 0x7

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2693
    :cond_4
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2694
    const/4 v12, 0x7

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 2696
    :cond_5
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    if-eqz p3, :cond_6

    .line 2697
    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2698
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2699
    const/4 v12, 0x7

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2700
    const/16 v12, 0x8

    const/4 v13, 0x3

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2701
    :cond_6
    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    if-nez p3, :cond_8

    .line 2702
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportLightFrame()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2704
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2705
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2706
    const/4 v12, 0x7

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2707
    const/16 v12, 0x8

    const/4 v13, 0x3

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2709
    :cond_7
    const/16 v12, 0x9

    const/4 v13, 0x5

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2710
    const/4 v12, 0x7

    const/4 v13, 0x6

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2711
    const/16 v12, 0x8

    const/4 v13, 0x7

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2713
    :cond_8
    if-nez p1, :cond_9

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 2714
    const/16 v12, 0xa

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2715
    const/16 v12, 0x9

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2716
    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    if-nez p3, :cond_a

    .line 2717
    const/16 v12, 0x9

    const/4 v13, 0x6

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2718
    :cond_a
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    if-eqz p3, :cond_b

    .line 2719
    const/16 v12, 0xa

    const/4 v13, 0x5

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2720
    const/16 v12, 0x9

    const/4 v13, 0x6

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2721
    const/16 v12, 0x8

    const/4 v13, 0x7

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2722
    :cond_b
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 2723
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v12

    if-nez v12, :cond_c

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportLightFrame()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2725
    const/16 v12, 0xb

    const/4 v13, 0x5

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2726
    const/16 v12, 0x9

    const/4 v13, 0x6

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2727
    const/16 v12, 0x8

    const/4 v13, 0x7

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2729
    :cond_c
    const/16 v12, 0x9

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2730
    const/16 v12, 0x8

    const/4 v13, 0x2

    invoke-virtual {v1, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 2755
    .restart local v0    # "arraySize":I
    .restart local v2    # "half":I
    .restart local v3    # "i":I
    .restart local v5    # "sizeOf4":I
    .restart local v6    # "sizeOf5":I
    .restart local v7    # "startIndex":I
    .restart local v9    # "tempArraySize":I
    .restart local v10    # "tempKey":[I
    .restart local v11    # "tempValue":[I
    :cond_d
    invoke-static {v11}, Ljava/util/Arrays;->sort([I)V

    .line 2757
    rem-int/lit8 v12, v0, 0x2

    if-eqz v12, :cond_e

    .line 2758
    rsub-int/lit8 v12, v0, 0x5

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v7, v12, 0x4

    .line 2763
    :goto_2
    const/4 v3, 0x0

    move v8, v7

    .end local v7    # "startIndex":I
    .local v8, "startIndex":I
    :goto_3
    if-ge v3, v0, :cond_10

    .line 2764
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, v0, :cond_11

    .line 2765
    aget v12, v11, v3

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    if-ne v12, v13, :cond_f

    .line 2766
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "startIndex":I
    .restart local v7    # "startIndex":I
    invoke-virtual {v1, v12, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2763
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7    # "startIndex":I
    .restart local v8    # "startIndex":I
    goto :goto_3

    .line 2760
    .end local v4    # "j":I
    .end local v8    # "startIndex":I
    .restart local v7    # "startIndex":I
    :cond_e
    rsub-int/lit8 v12, v0, 0x4

    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v7, v12, 0x0

    goto :goto_2

    .line 2764
    .end local v7    # "startIndex":I
    .restart local v4    # "j":I
    .restart local v8    # "startIndex":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2772
    .end local v0    # "arraySize":I
    .end local v2    # "half":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "sizeOf4":I
    .end local v6    # "sizeOf5":I
    .end local v8    # "startIndex":I
    .end local v9    # "tempArraySize":I
    .end local v10    # "tempKey":[I
    .end local v11    # "tempValue":[I
    :cond_10
    return-object v1

    .restart local v0    # "arraySize":I
    .restart local v2    # "half":I
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "sizeOf4":I
    .restart local v6    # "sizeOf5":I
    .restart local v8    # "startIndex":I
    .restart local v9    # "tempArraySize":I
    .restart local v10    # "tempKey":[I
    .restart local v11    # "tempValue":[I
    :cond_11
    move v7, v8

    .end local v8    # "startIndex":I
    .restart local v7    # "startIndex":I
    goto :goto_5
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5421
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 5422
    const-string v0, ".jpg"

    .line 5431
    .local v0, "fileExtension":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 5424
    .end local v0    # "fileExtension":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v1

    .line 5425
    .local v1, "videoFile":Lcom/lge/camera/VideoFile;
    if-eqz v1, :cond_1

    .line 5426
    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileExtension":Ljava/lang/String;
    goto :goto_0

    .line 5428
    .end local v0    # "fileExtension":Ljava/lang/String;
    :cond_1
    const-string v0, ".mp4"

    .restart local v0    # "fileExtension":Ljava/lang/String;
    goto :goto_0
.end method

.method private getRequestedAttachFileStorage()I
    .locals 3

    .prologue
    .line 5376
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5377
    .local v0, "requestedFilePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5378
    .local v1, "requestedStorage":I
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5379
    const/4 v1, 0x0

    .line 5385
    :goto_0
    return v1

    .line 5380
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v2

    iget-object v2, v2, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5381
    const/4 v1, 0x1

    goto :goto_0

    .line 5383
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getSavedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5412
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 5413
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 5415
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedVideoUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private preProcessSaveUri()V
    .locals 8

    .prologue
    .line 5208
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->getSavedUri()Landroid/net/Uri;

    move-result-object v3

    .line 5209
    .local v3, "savedUri":Landroid/net/Uri;
    const-string v5, "content"

    iget-object v6, p0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5210
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5211
    .local v1, "requestedPath":Ljava/lang/String;
    const/4 v5, 0x0

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5213
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested directory:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5215
    .local v0, "requestedDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5216
    const-string v5, "CameraApp"

    const-string v6, "Requested directory not exist, make it."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5217
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5227
    .end local v0    # "requestedDir":Ljava/io/File;
    .end local v1    # "requestedPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5220
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5221
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5222
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 5223
    .local v2, "ret":Z
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "temp file("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") deleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeOrgFile()V
    .locals 7

    .prologue
    .line 5389
    const-string v4, "CameraApp"

    const-string v5, "===>removeOrgFile!!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->getSavedUri()Landroid/net/Uri;

    move-result-object v3

    .line 5391
    .local v3, "savedUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 5392
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lge/camera/util/Common;->getFileFullPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 5393
    .local v1, "fullPath":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 5394
    const-string v4, "CameraApp"

    const-string v5, "FullPath == null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5409
    .end local v1    # "fullPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5398
    .restart local v1    # "fullPath":Ljava/lang/String;
    :cond_1
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===>removeOrgFile!! FullPath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5400
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5401
    .local v2, "orgFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5402
    const-string v4, "CameraApp"

    const-string v5, "===>removeOrgFile!! delete sucess "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5403
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5405
    .end local v2    # "orgFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 5406
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendResultIntent()V
    .locals 6

    .prologue
    .line 5323
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->getSavedUri()Landroid/net/Uri;

    move-result-object v2

    .line 5324
    .local v2, "savedUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 5325
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5326
    .local v1, "newExtras":Landroid/os/Bundle;
    const-string v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5327
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSavedImageUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5329
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5330
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5332
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/Mediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 5336
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "newExtras":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 5334
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->setResultAndFinish(I)V

    goto :goto_0
.end method

.method private setCameraIDForCamcorder()V
    .locals 4

    .prologue
    .line 4968
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4969
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->readVideoIntentExtras()V

    .line 4971
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4972
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_preview_size_on_device"

    const-string v2, "320x240"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4975
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_1

    .line 4976
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->initController()V

    .line 4978
    :cond_1
    return-void
.end method

.method private setCameraIDForCamera()V
    .locals 3

    .prologue
    .line 4981
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v1, :cond_0

    .line 4982
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->initController()V

    .line 4983
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4985
    const-string v1, "shotmode_front_beauty"

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4987
    const/4 v0, 0x1

    .line 4994
    :cond_0
    :goto_0
    return-void

    .line 4989
    :cond_1
    const/4 v0, 0x0

    .line 4990
    .local v0, "render":Z
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    goto :goto_0
.end method

.method private setPreviewEffectForBeautyShot()V
    .locals 5

    .prologue
    .line 1228
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "shotmode_front_beauty"

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_main_beauty"

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1234
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v3, :cond_2

    .line 1236
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1238
    .local v1, "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1241
    .local v2, "gPreviewExtra":Landroid/view/SurfaceView;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1242
    if-eqz v1, :cond_1

    .line 1243
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1245
    :cond_1
    if-eqz v2, :cond_2

    .line 1246
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    .end local v1    # "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2    # "gPreviewExtra":Landroid/view/SurfaceView;
    :cond_2
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public activityFinish()V
    .locals 3

    .prologue
    .line 403
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .param p1, "pg"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 5744
    return-void
.end method

.method public addQuickButton(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonType"    # I
    .param p3, "location"    # I

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->addQuickButton(Landroid/content/Context;II)V

    .line 2573
    return-void
.end method

.method public addQuickButton(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonType"    # I
    .param p3, "orientation"    # I
    .param p4, "location"    # I

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/camera/controller/QuickButtonController;->addQuickButton(Landroid/content/Context;III)V

    .line 2577
    return-void
.end method

.method public afterOnDismissForSelectVideoLength()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3804
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->quickFunctionControllerInitMenu()V

    .line 3805
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->quickFunctionControllerRefresh(Z)V

    .line 3806
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 3807
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->enableCommand(Z)V

    .line 3808
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->checkStorage(Z)V

    .line 3809
    return-void
.end method

.method public allSettingMenuSelectedChild(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "useCurrentSettingValue"    # Z

    .prologue
    .line 2392
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v0

    .line 2395
    .local v0, "chlidSettingIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 2396
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraMainSettingMenu()Lcom/lge/camera/setting/CameraMainSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/CameraMainSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    .line 2397
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2398
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getCameraFrontSettingMenu()Lcom/lge/camera/setting/CameraFrontSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    .line 2408
    :cond_0
    :goto_1
    return-void

    .line 2392
    .end local v0    # "chlidSettingIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v0

    goto :goto_0

    .line 2402
    .restart local v0    # "chlidSettingIndex":I
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoMainSettingMenu()Lcom/lge/camera/setting/VideoMainSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    .line 2403
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2404
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getVideoFrontSettingMenu()Lcom/lge/camera/setting/VideoFrontSettingMenu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/camera/setting/VideoFrontSettingMenu;->setSelectedChild(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public applyCameraChange()V
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->applyCameraChange()V

    .line 2493
    return-void
.end method

.method public audioCallbackRestartEngine()V
    .locals 4

    .prologue
    .line 2095
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getDialogID()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    .line 2098
    new-instance v0, Lcom/lge/camera/Mediator$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$2;-><init>(Lcom/lge/camera/Mediator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 2106
    :cond_0
    return-void
.end method

.method public audioCallbackTakePicture()V
    .locals 1

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->audioCallbackTakePicture()V

    .line 2113
    :cond_0
    return-void
.end method

.method public beDirectlyGoingToCropGallery()Z
    .locals 1

    .prologue
    .line 5911
    const/4 v0, 0x0

    return v0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 4581
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->cancelAutoFocus()V

    .line 4582
    return-void
.end method

.method public changeButtonResource(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "resId"    # I

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(II)V

    .line 2605
    return-void
.end method

.method public changeButtonResource(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "resId"    # I
    .param p3, "descriptionId"    # I

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->changeButtonResource(III)V

    .line 2609
    return-void
.end method

.method public changeLiveSnapshotMaxFileSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 6019
    return-void
.end method

.method public changePreviewModeOnUiThread(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 4365
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->changePreviewModeOnUiThread(II)V

    .line 4366
    return-void
.end method

.method public changeQuickPreviewMode(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 4369
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->changeQuickPreviewMode(II)V

    .line 4370
    return-void
.end method

.method public changeShutterSound(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3685
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->changeShutterSound(I)V

    .line 3687
    :cond_0
    return-void
.end method

.method public checkActivity()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAndCloseChildView()Z
    .locals 1

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->checkAndCloseChildView()Z

    move-result v0

    return v0
.end method

.method public checkAutoReviewForQuickView()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2999
    const-string v12, "key_camera_auto_review"

    invoke-virtual {p0, v12}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3001
    .local v0, "autoReview":Ljava/lang/String;
    const-string v12, "on_delay_2sec"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-wide/16 v4, 0x7d0

    .line 3002
    .local v4, "duration":J
    :goto_0
    const-string v12, "on_delay_5sec"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-wide/16 v2, 0x1388

    .line 3004
    .local v2, "autoReviewDuration":J
    :goto_1
    cmp-long v12, v2, v8

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v12

    if-nez v12, :cond_5

    .line 3005
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->setGoingAutoReviewForQuickView(Z)V

    .line 3006
    invoke-virtual {p0, v11}, Lcom/lge/camera/Mediator;->setInCaptureProgress(Z)V

    .line 3007
    invoke-virtual {p0, v11}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 3008
    const-string v12, "key_camera_shot_mode"

    invoke-virtual {p0, v12}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3010
    .local v7, "shotMode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3011
    invoke-virtual {p0, v13, v11}, Lcom/lge/camera/Mediator;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 3012
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3013
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v11, "fromJpegCallback"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3014
    const-string v11, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v11, v1, v8, v9}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 3034
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_2
    new-instance v8, Lcom/lge/camera/Mediator$4;

    invoke-direct {v8, p0, v2, v3}, Lcom/lge/camera/Mediator$4;-><init>(Lcom/lge/camera/Mediator;J)V

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    move v8, v10

    .line 3047
    .end local v7    # "shotMode":Ljava/lang/String;
    :goto_3
    return v8

    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_1
    move-wide v4, v8

    .line 3001
    goto :goto_0

    .restart local v4    # "duration":J
    :cond_2
    move-wide v2, v4

    .line 3002
    goto :goto_1

    .line 3015
    .restart local v2    # "autoReviewDuration":J
    .restart local v7    # "shotMode":Ljava/lang/String;
    :cond_3
    const-string v12, "shotmode_full_continuous"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3016
    new-instance v12, Lcom/lge/camera/Mediator$3;

    invoke-direct {v12, p0}, Lcom/lge/camera/Mediator$3;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v12}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3022
    invoke-virtual {p0, v13, v11}, Lcom/lge/camera/Mediator;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 3023
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3024
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v11, "from JpegCallback Full Frame Continuous shot"

    invoke-virtual {v1, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3025
    const-string v11, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v11, v1, v8, v9}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 3027
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v6

    .line 3028
    .local v6, "imageListUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 3029
    invoke-virtual {v6, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 3032
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v6    # "imageListUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    const-string v8, "com.lge.camera.command.OnDelayOff"

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_2

    .end local v7    # "shotMode":Ljava/lang/String;
    :cond_5
    move v8, v11

    .line 3047
    goto :goto_3
.end method

.method public checkAutoReviewOff(Z)Z
    .locals 6
    .param p1, "needToCheckMore"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1958
    const-string v4, "key_camera_auto_review"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1959
    .local v0, "autoReview":Ljava/lang/String;
    const-string v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "not found"

    const-string v5, "key_camera_auto_review"

    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1963
    if-eqz p1, :cond_1

    .line 1964
    const-string v4, "key_camera_shot_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1965
    .local v1, "shotMode":Ljava/lang/String;
    const-string v4, "0"

    const-string v5, "key_camera_timer"

    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "shotmode_normal"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "shotmode_hdr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "not found"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "shotmode_main_beauty"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1979
    .end local v1    # "shotMode":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "shotMode":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 1973
    goto :goto_0

    .end local v1    # "shotMode":Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 1979
    goto :goto_0
.end method

.method public checkCamcorderStop(IZ)Z
    .locals 1
    .param p1, "repeatCount"    # I
    .param p2, "useBackKey"    # Z

    .prologue
    .line 5565
    const/4 v0, 0x1

    return v0
.end method

.method public checkCameraShutterSoundLoaded()Z
    .locals 1

    .prologue
    .line 3733
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3734
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->checkCameraShutterSoundLoaded()Z

    move-result v0

    .line 3736
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkCurrentShotModeForModule()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1393
    const-string v1, "not found"

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return v0

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->checkCurrentShotMode()Z

    move-result v0

    goto :goto_0

    .line 1402
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFocusController()Z
    .locals 1

    .prologue
    .line 4529
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFsWritable()Z
    .locals 1

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    .line 3873
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    .line 3875
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkGPSSettingValue()Z
    .locals 2

    .prologue
    .line 2327
    const-string v0, "off"

    const-string v1, "key_camera_tag_location"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2328
    const/4 v0, 0x0

    .line 2330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkManualFocusController()Z
    .locals 1

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPreviewController()Z
    .locals 1

    .prologue
    .line 4080
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPreviewPanelController()Z
    .locals 1

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSceneMode(Lcom/lge/hardware/LGCamera$LGParameters;ZLjava/lang/String;)V
    .locals 4
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "showToast"    # Z
    .param p3, "toastMessage"    # Ljava/lang/String;

    .prologue
    .line 5063
    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5064
    .local v0, "previeousSceneMode":Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "not found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5067
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 5068
    .local v1, "supportedScenemode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 5069
    const-string v2, "key_scene_mode"

    const-string v3, "auto"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5071
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 5072
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5073
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/Mediator;->setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 5074
    const-string v2, "shotmode_dual_camera"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shotmode_front_beauty"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shotmode_main_beauty"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Smart shutter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "night"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5084
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/lge/camera/Mediator;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 5090
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 5091
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 5093
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setQuickFunctionControllerAllMenuIcons()V

    .line 5095
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isIndicatorControllerInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5096
    new-instance v2, Lcom/lge/camera/Mediator$13;

    invoke-direct {v2, p0}, Lcom/lge/camera/Mediator$13;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5107
    .end local v1    # "supportedScenemode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 5087
    .restart local v1    # "supportedScenemode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v2, "com.lge.camera.command.setting.SetSceneMode"

    invoke-virtual {p0, v2, p1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "shotMode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2202
    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2205
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkShotModeForMultiWindowAF()Z
    .locals 1

    .prologue
    .line 5027
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->checkShotModeForMultiWindowAF()Z

    move-result v0

    return v0
.end method

.method public checkShotModeForZoomInOut()Z
    .locals 1

    .prologue
    .line 5442
    const/4 v0, 0x1

    return v0
.end method

.method public checkSlowMotionMode()Z
    .locals 1

    .prologue
    .line 5438
    const/4 v0, 0x0

    return v0
.end method

.method public checkStorage(Z)V
    .locals 1
    .param p1, "showToast"    # Z

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 3869
    return-void
.end method

.method public checkStorageController()Z
    .locals 1

    .prologue
    .line 3856
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSurfaceHolder()Z
    .locals 1

    .prologue
    .line 4084
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkTouchFocusArea(I)Z
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 4617
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v1, v1, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    if-ge p1, v0, :cond_1

    .line 4620
    :cond_0
    const/4 v0, 0x0

    .line 4622
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkUpdateThumbnail()Z
    .locals 1

    .prologue
    .line 5740
    const/4 v0, 0x1

    return v0
.end method

.method public clearFocusState()V
    .locals 1

    .prologue
    .line 4545
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->clearFocusState()V

    .line 4546
    return-void
.end method

.method public clearQuickFunctionSubMenu()V
    .locals 1

    .prologue
    .line 3468
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->clearSubMenu()V

    .line 3469
    return-void
.end method

.method public clearScreen()V
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 877
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 878
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->hideIndicator()V

    .line 879
    return-void
.end method

.method public clearSettingBarControll()V
    .locals 1

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    if-eqz v0, :cond_0

    .line 3361
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->clearSettingZoom()V

    .line 3363
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    if-eqz v0, :cond_1

    .line 3364
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->clearSettingBeautyshotBar()V

    .line 3366
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    if-eqz v0, :cond_2

    .line 3367
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->clearSettingBrightnessBar()V

    .line 3369
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    if-eqz v0, :cond_3

    .line 3370
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->clearSettingDepth3DBar()V

    .line 3372
    :cond_3
    return-void
.end method

.method public clearSettingMenuAndSubMenu()V
    .locals 1

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2963
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenu()V

    .line 2965
    :cond_0
    return-void
.end method

.method public clearSubMenu()V
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->clearSubMenu(Z)V

    .line 883
    return-void
.end method

.method public clearSubMenu(Z)V
    .locals 4
    .param p1, "includeManualFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1009
    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/ZoomController;->showControl(Z)V

    .line 1012
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/BrightnessController;->showControl(Z)V

    .line 1013
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/BeautyshotController;->showControl(Z)V

    .line 1014
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/Camera3dDepthController;->showControl(Z)V

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->clearQuickFunctionSubMenu()V

    .line 1018
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingControllerShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeQuickFunctionSettingView()V

    .line 1022
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isShotModeMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1023
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1024
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "immediately"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1025
    const-string v1, "com.lge.camera.command.HideModeMenu"

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1028
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSettingControllerVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1029
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeSettingView()V

    .line 1032
    :cond_3
    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 1033
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1034
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->updateThumbnailButtonVisibility()V

    .line 1037
    :cond_4
    if-eqz p1, :cond_5

    .line 1038
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/ManualFocusController;->showControl(Z)V

    .line 1040
    :cond_5
    return-void
.end method

.method public clearViewOff(Z)V
    .locals 4
    .param p1, "useAnimation"    # Z

    .prologue
    const/4 v3, 0x0

    .line 916
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    if-eqz v0, :cond_0

    .line 923
    iput-boolean v3, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    .line 924
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->slideQFLIn(Z)V

    .line 925
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->slideIndicatorIn(Z)V

    .line 926
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    const/16 v1, 0x64

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/lge/camera/controller/QuickButtonController;->setVisible(IIZ)V

    .line 927
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->slidePanelIn()V

    .line 929
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetTimeClearScreen()V

    goto :goto_0
.end method

.method public clearViewOn(Z)V
    .locals 4
    .param p1, "useAnimation"    # Z

    .prologue
    const/4 v3, 0x1

    .line 897
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    if-nez v0, :cond_0

    .line 905
    const-string v0, "com.lge.camera.command.ClearScreen"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->slideQFLOut(Z)V

    .line 907
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    const/16 v1, 0x64

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/controller/QuickButtonController;->setVisible(IIZ)V

    .line 908
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->slideIndicatorOut(Z)V

    .line 909
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->slidePanelOut()V

    .line 912
    :cond_2
    iput-boolean v3, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    goto :goto_0
.end method

.method public clearViewOnAtStartRec()V
    .locals 1

    .prologue
    .line 934
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->clearViewOn(Z)V

    goto :goto_0
.end method

.method public clearViewRestoreAtStopRec()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 944
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->clearViewOn(Z)V

    goto :goto_0

    .line 952
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->clearViewOff(Z)V

    goto :goto_0
.end method

.method public closeCamera()V
    .locals 2

    .prologue
    .line 4054
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 4055
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 4059
    :goto_0
    return-void

    .line 4057
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeGalleryQuickView(Z)V
    .locals 1
    .param p1, "deleteImage"    # Z

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2969
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->closeGalleryQuickView(Z)V

    .line 2971
    :cond_0
    return-void
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 731
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    new-instance v0, Lcom/lge/camera/controller/PreviewPanel3DController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanel3DController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    .line 736
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v0, Lcom/lge/camera/controller/BrightnessController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BrightnessController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    .line 739
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v0, Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BrightnessControllerExpand;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    .line 742
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v0, Lcom/lge/camera/controller/BeautyshotController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/BeautyshotController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    .line 745
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    new-instance v0, Lcom/lge/camera/controller/SettingRotatableExpandableController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SettingRotatableExpandableController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    .line 748
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v0, Lcom/lge/camera/controller/ZoomController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ZoomController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    .line 751
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v0, Lcom/lge/camera/controller/ManualFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ManualFocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    .line 754
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v0, Lcom/lge/camera/controller/DialogController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/DialogController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    .line 757
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v0, Lcom/lge/camera/controller/SoundController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    .line 760
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v0, Lcom/lge/camera/controller/ToastController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    .line 763
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionDragController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    .line 766
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance v0, Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickFunctionSettingController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    .line 769
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v0, Lcom/lge/camera/controller/QuickButtonController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/QuickButtonController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    .line 772
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    new-instance v0, Lcom/lge/camera/controller/OptionMenuController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/OptionMenuController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    .line 775
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    new-instance v0, Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/Camera3dDepthController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    .line 779
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_0
    return-void

    .line 734
    :cond_1
    new-instance v0, Lcom/lge/camera/controller/PreviewPanel2DController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanel2DController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    goto/16 :goto_0
.end method

.method public debugStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-static {p1}, Lcom/lge/camera/util/Util;->debugStackTrace(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method public deleteClearShotImages()Z
    .locals 1

    .prologue
    .line 5861
    const/4 v0, 0x1

    return v0
.end method

.method public deleteProgressDialog()V
    .locals 2

    .prologue
    .line 3828
    const-string v0, "CameraApp"

    const-string v1, "deleteProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3829
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3830
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->deleteProgressDialog()V

    .line 3832
    :cond_0
    return-void
.end method

.method public deleteRefocusShotImages()Z
    .locals 1

    .prologue
    .line 5866
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSavingProgressDialog()V
    .locals 2

    .prologue
    .line 3842
    const-string v0, "CameraApp"

    const-string v1, "deleteProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3844
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->deleteSavingProgressDialog()V

    .line 3846
    :cond_0
    return-void
.end method

.method public deleteTimeMachineImages()Z
    .locals 1

    .prologue
    .line 5857
    const/4 v0, 0x1

    return v0
.end method

.method public dialogControllerOnDismiss()V
    .locals 1

    .prologue
    .line 3849
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismiss()V

    .line 3850
    return-void
.end method

.method public disableObjectTrackingForSmartZoom()V
    .locals 1

    .prologue
    .line 4248
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->disableObjectTrackingForSmartZoom()V

    .line 4249
    return-void
.end method

.method public displayQuickFunctionSettingView(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3401
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionSettingController;->displaySettingView(Ljava/lang/String;)V

    .line 3402
    return-void
.end method

.method public displaySettingView()V
    .locals 1

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->displaySettingView()V

    .line 3904
    return-void
.end method

.method public doAfterSaveImageSavers()V
    .locals 0

    .prologue
    .line 5990
    return-void
.end method

.method public abstract doAttach()V
.end method

.method protected doAttachSaveUri()V
    .locals 17

    .prologue
    .line 5230
    const/4 v10, 0x0

    .line 5231
    .local v10, "fos":Ljava/io/FileOutputStream;
    const-string v4, "CameraApp"

    const-string v5, "doAttachSaveUri()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5232
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/Mediator;->preProcessSaveUri()V

    .line 5233
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/Mediator;->checkFreespace()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5234
    const-string v4, "CameraApp"

    const-string v5, "===>Not Enough sotrage space!!!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5235
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/Mediator;->getRequestedAttachFileStorage()I

    move-result v14

    .line 5236
    .local v14, "requestedStorage":I
    const/16 v16, 0x0

    .line 5238
    .local v16, "storageFullNotifyingMessage":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 5239
    const v4, 0x7f0a006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 5246
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v4, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 5249
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->setResultAndFinish(I)V

    .line 5320
    .end local v14    # "requestedStorage":I
    .end local v16    # "storageFullNotifyingMessage":Ljava/lang/String;
    :goto_1
    return-void

    .line 5242
    .restart local v14    # "requestedStorage":I
    .restart local v16    # "storageFullNotifyingMessage":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0a0068

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 5254
    .end local v14    # "requestedStorage":I
    .end local v16    # "storageFullNotifyingMessage":Ljava/lang/String;
    :cond_1
    :try_start_0
    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 5255
    .local v12, "imguri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5256
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===>URL Is Not correct we will return URI :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5258
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/Mediator;->sendResultIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5310
    invoke-static {v10}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 5261
    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v10, v0

    .line 5262
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5263
    if-nez v10, :cond_3

    .line 5264
    const-string v4, "CameraApp"

    const-string v5, "===>outputStream null! cancel"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5265
    const-string v4, "CameraApp"

    const-string v5, "doAttach CANCELED"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5266
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->setResultAndFinish(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5310
    invoke-static {v10}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 5269
    :cond_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/Mediator;->mCaptureData:[B

    if-eqz v4, :cond_5

    .line 5270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/Mediator;->mCaptureData:[B

    invoke-virtual {v10, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 5302
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isRemoveOrgFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5303
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/Mediator;->removeOrgFile()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5310
    :cond_4
    invoke-static {v10}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 5312
    const-string v4, "CameraApp"

    const-string v5, "doAttach OK"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5313
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_7

    .line 5314
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->setResultAndFinish(I)V

    goto/16 :goto_1

    .line 5272
    :cond_5
    :try_start_3
    const-string v4, "CameraApp"

    const-string v5, "doAttach mCaptureData is null! so we recopy video data to mSaveUri"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5276
    const/4 v13, 0x0

    .line 5277
    .local v13, "mFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 5279
    .local v9, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/Mediator;->getSavedFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/Mediator;->getFileExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 5283
    .local v11, "fullfilename":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    .end local v13    # "mFile":Ljava/io/File;
    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5284
    .restart local v13    # "mFile":Ljava/io/File;
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5287
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 5288
    .local v3, "inChannel":Ljava/nio/channels/FileChannel;
    if-eqz v3, :cond_6

    .line 5289
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 5290
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file copy done - from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5299
    :cond_6
    :try_start_5
    invoke-static {v9}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 5305
    .end local v3    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fullfilename":Ljava/lang/String;
    .end local v12    # "imguri":Landroid/net/Uri;
    .end local v13    # "mFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 5306
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outputStream error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5307
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->setResultAndFinish(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5310
    invoke-static {v10}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 5293
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fullfilename":Ljava/lang/String;
    .restart local v12    # "imguri":Landroid/net/Uri;
    .restart local v13    # "mFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 5294
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 5295
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/Mediator;->setResultAndFinish(I)V

    .line 5296
    const-string v4, "CameraApp"

    const-string v5, "doAttach CANCELED"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5299
    :try_start_8
    invoke-static {v9}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 5310
    invoke-static {v10}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 5299
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :try_start_9
    invoke-static {v9}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 5310
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fullfilename":Ljava/lang/String;
    .end local v12    # "imguri":Landroid/net/Uri;
    .end local v13    # "mFile":Ljava/io/File;
    :catchall_1
    move-exception v4

    invoke-static {v10}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 5316
    .restart local v12    # "imguri":Landroid/net/Uri;
    :cond_7
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 5317
    .local v15, "resultIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/Mediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5318
    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/lge/camera/Mediator;->setResultAndFinish(ILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public doCamcorderContinuousFocusCallback(Z)V
    .locals 0
    .param p1, "focusedState"    # Z

    .prologue
    .line 5562
    return-void
.end method

.method public doCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/command/CommandManager;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;J)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 587
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/Mediator;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 588
    return-void
.end method

.method public doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delay"    # J

    .prologue
    .line 591
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/lge/camera/Mediator;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 592
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommandNoneParameter(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;)V

    .line 540
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 551
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method public doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/command/CommandManager;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "delay"    # J
    .param p4, "period"    # J

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;JJ)V

    .line 596
    return-void
.end method

.method public doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V
    .locals 9
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delay"    # J
    .param p5, "period"    # J

    .prologue
    .line 599
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/lge/camera/command/CommandManager;->doCommandWithFixedRate(Ljava/lang/String;Ljava/lang/Object;JJ)V

    .line 600
    return-void
.end method

.method public doFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 4573
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->doFocus(Z)V

    .line 4574
    return-void
.end method

.method public doFocusOnCaf()V
    .locals 1

    .prologue
    .line 4577
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->doFocusOnCaf()V

    .line 4578
    return-void
.end method

.method public doModuleAfterCaptureForB2Model()V
    .locals 0

    .prologue
    .line 5899
    return-void
.end method

.method public doSettingFlashHandler()V
    .locals 1

    .prologue
    .line 2299
    const-string v0, "com.lge.camera.command.setting.SetFlashMode"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 2300
    return-void
.end method

.method public doSmartCameraModeCallback([I)V
    .locals 0
    .param p1, "data"    # [I

    .prologue
    .line 5953
    return-void
.end method

.method public doTakePictureCommand()Z
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->takePicture()Z

    move-result v0

    return v0
.end method

.method public abstract doTouchbyAF(II)V
.end method

.method public doVoiceShutterIndicatorUpdateHandler()V
    .locals 0

    .prologue
    .line 5569
    return-void
.end method

.method public effectCameraStopPreview()V
    .locals 1

    .prologue
    .line 4310
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->effectCameraStopPreviewByCallFrom(I)V

    .line 4311
    return-void
.end method

.method public effectCameraStopPreviewByCallFrom(I)V
    .locals 1
    .param p1, "calledFrom"    # I

    .prologue
    .line 4322
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsCamera;->stopPreview(I)V

    .line 4323
    return-void
.end method

.method public effectRecorderStopPreview()V
    .locals 1

    .prologue
    .line 4306
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->effectRecorderStopPreviewByCallFrom(I)V

    .line 4307
    return-void
.end method

.method public effectRecorderStopPreviewByCallFrom(I)V
    .locals 1
    .param p1, "calledFrom"    # I

    .prologue
    .line 4318
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    .line 4319
    return-void
.end method

.method public enableCommand(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 2800
    return-void
.end method

.method public enableInput(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 863
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableInput("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    .line 865
    return-void
.end method

.method public enegineProcessorSetEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;
    .locals 1
    .param p1, "engine"    # Lcom/lge/olaworks/library/BaseEngine;

    .prologue
    .line 4126
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    return-object v0
.end method

.method public enegineProcessorStart()V
    .locals 1

    .prologue
    .line 4130
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    .line 4131
    return-void
.end method

.method public facePreviewInitController()V
    .locals 0

    .prologue
    .line 5772
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public findPreferenceIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findScheduledCommand(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->findScheduledCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Lcom/lge/camera/CameraActivity;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v0}, Lcom/lge/camera/Mediator$ActivityBridge;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    return-object v0
.end method

.method public getActualBatteryLevel()I
    .locals 1

    .prologue
    .line 1327
    iget v0, p0, Lcom/lge/camera/Mediator;->mActualBatteryLevel:I

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationMode()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    return v0
.end method

.method public getApplicationModeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1059
    iget v0, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1060
    const-string v0, "Camcorder"

    .line 1062
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Camera"

    goto :goto_0
.end method

.method public getAudiozoomStart()Z
    .locals 1

    .prologue
    .line 5596
    const/4 v0, 0x1

    return v0
.end method

.method public getAudiozoomStartInRecording()Z
    .locals 1

    .prologue
    .line 5603
    const/4 v0, 0x0

    return v0
.end method

.method public getAudiozoomvalue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5976
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getAvailablePictureCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBack3dPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getBackKeyRecStop()Z
    .locals 1

    .prologue
    .line 5761
    const/4 v0, 0x0

    return v0
.end method

.method public getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getBackupCurrentMenuIndex()I
    .locals 1

    .prologue
    .line 4001
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getBackupCurrentMenuIndex()I

    move-result v0

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 1319
    iget v0, p0, Lcom/lge/camera/Mediator;->mBatteryLevel:I

    return v0
.end method

.method public getBeautyshotController()Lcom/lge/camera/controller/BeautyshotController;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    return-object v0
.end method

.method public getBeautyshotProgress()Z
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getBeautyshotProgress()Z

    move-result v0

    return v0
.end method

.method public getBlockTouchByCallPopUp()Z
    .locals 1

    .prologue
    .line 5001
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mBlockTouchByCallPopUp:Z

    return v0
.end method

.method public getBrightnessController()Lcom/lge/camera/controller/BrightnessController;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    return-object v0
.end method

.method public getBrightnessControllerExpand()Lcom/lge/camera/controller/BrightnessControllerExpand;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    return-object v0
.end method

.method public getCafOnGoing()Z
    .locals 1

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->getCafOnGoing()Z

    move-result v0

    return v0
.end method

.method public getCamera3dDepthController()Lcom/lge/camera/controller/Camera3dDepthController;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 4062
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getCameraDimension()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1101
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1102
    iget v2, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    if-ne v2, v0, :cond_0

    .line 1109
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1106
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1109
    goto :goto_0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 859
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    return v0
.end method

.method public getCameraMode()I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    return v0
.end method

.method public getChildIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3965
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getChildIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCommandManager()Lcom/lge/camera/command/CommandManager;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 3768
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIAMode()I
    .locals 1

    .prologue
    .line 6012
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2323
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMenuKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentModule()Lcom/lge/camera/module/Module;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    return-object v0
.end method

.method public getCurrentModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    if-nez v0, :cond_0

    .line 1378
    const/4 v0, 0x0

    .line 1380
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    invoke-virtual {v0}, Lcom/lge/camera/module/ModuleFactory;->getCurrentModuleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPIPMask()I
    .locals 1

    .prologue
    .line 3521
    sget v0, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    return v0
.end method

.method public getCurrentRecordingTime()J
    .locals 2

    .prologue
    .line 5019
    iget-wide v0, p0, Lcom/lge/camera/Mediator;->mCurrentRecordingTime:J

    return-wide v0
.end method

.method public getCurrentSelectedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4768
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->getCurrentSelectedTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSettingMenuIndex()I
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentSettingMenuIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenuIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentSettingMenuName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3977
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentStorage()I
    .locals 1

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v0

    return v0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "lgParam"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 5031
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDegree()I
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    iget v1, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/OrientationInfo;->getDeviceDegree(I)I

    move-result v0

    return v0
.end method

.method public getDialogController()Lcom/lge/camera/controller/DialogController;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    return-object v0
.end method

.method public getDialogID()I
    .locals 1

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v0

    return v0
.end method

.method public getDimension(I)F
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDualCameraPictureSize()[I
    .locals 1

    .prologue
    .line 6005
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableInput()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsEnableInput:Z

    return v0
.end method

.method public getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;
    .locals 1

    .prologue
    .line 4108
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;
    .locals 1

    .prologue
    .line 4018
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    return-object v0
.end method

.method public getFlashEnableForShotMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5133
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 5134
    const-string v3, "on"

    const-string v4, "key_smart_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5135
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5136
    .local v0, "shotMode":Ljava/lang/String;
    const-string v3, "shotmode_panorama"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_continuous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_clear_shot"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_dual_camera"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "shotmode_refocus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5159
    .end local v0    # "shotMode":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 5149
    .restart local v0    # "shotMode":Ljava/lang/String;
    :cond_1
    const-string v3, "shotmode_normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v3

    if-nez v3, :cond_3

    .line 5153
    :cond_2
    const-string v3, "night"

    const-string v4, "key_scene_mode"

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "shotMode":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 5159
    goto :goto_0
.end method

.method public getFocusAreaHeight()I
    .locals 1

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    return v0
.end method

.method public getFocusAreaLeftMargin()I
    .locals 1

    .prologue
    .line 4634
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    return v0
.end method

.method public getFocusAreaWidth()I
    .locals 1

    .prologue
    .line 4626
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    iget v0, v0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    return v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v0

    return v0
.end method

.method public getFreePanoramaEngineStatus()I
    .locals 1

    .prologue
    .line 5526
    const/4 v0, 0x0

    return v0
.end method

.method public getFreePanoramaResultSize()[I
    .locals 1

    .prologue
    .line 5518
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFreePanoramaStatus()I
    .locals 1

    .prologue
    .line 5522
    const/4 v0, 0x0

    return v0
.end method

.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getGestureShutterController()Lcom/lge/camera/controller/GestureShutterController;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    return-object v0
.end method

.method public getGoingAutoReviewForQuickView()Z
    .locals 3

    .prologue
    .line 801
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGoingAutoReviewForQuickView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    return v0
.end method

.method public getHandler()Lcom/lge/camera/util/MainHandler;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    return-object v0
.end method

.method public getHeadsetstate()I
    .locals 1

    .prologue
    .line 5628
    const/4 v0, 0x0

    return v0
.end method

.method public getIAFlashStatus()Z
    .locals 1

    .prologue
    .line 2273
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    return v0
.end method

.method public getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "degree"    # I
    .param p3, "mirror"    # Z

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImageHandler()Lcom/lge/camera/util/ImageHandler;
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;

    move-result-object v0

    return-object v0
.end method

.method public getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;
    .locals 1
    .param p1, "isRotationOn"    # Z

    .prologue
    .line 818
    if-eqz p1, :cond_0

    .line 819
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 821
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

    goto :goto_0
.end method

.method public getImageListRotation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5919
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageListUri()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5582
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageRotationDegree()I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    return v0
.end method

.method public getInCaptureProgress()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    return v0
.end method

.method public getIndexMenuKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "menuPosition"    # I

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    return-object v0
.end method

.method public getIsCharging()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    return v0
.end method

.method public getIsFileSizeLimitReached()Z
    .locals 1

    .prologue
    .line 5717
    const/4 v0, 0x0

    return v0
.end method

.method public getLG()Lcom/lge/hardware/LGCamera;
    .locals 1

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    return-object v0
.end method

.method public getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;
    .locals 1

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4151
    :cond_0
    const/4 v0, 0x0

    .line 4153
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.end method

.method public getListPreference(I)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4182
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLiveEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveEffectList()Ljava/util/ArrayList;
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
    .line 4186
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLocationOn()Z
    .locals 1

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->getLocationOn()Z

    move-result v0

    return v0
.end method

.method public getMainBarAlphaValue()I
    .locals 1

    .prologue
    .line 2823
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getMainBarAlphaValue()I

    move-result v0

    return v0
.end method

.method public getMainCameraDimension()I
    .locals 1

    .prologue
    .line 1097
    iget v0, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    return v0
.end method

.method public getManualFocusController()Lcom/lge/camera/controller/ManualFocusController;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    return-object v0
.end method

.method public getManualFocusValue()I
    .locals 1

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->getManualFocusValue()I

    move-result v0

    return v0
.end method

.method public getMaxVideoDurationInMs()I
    .locals 1

    .prologue
    .line 5747
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaUSBConnectAtStartRecord()Z
    .locals 1

    .prologue
    .line 5671
    const/4 v0, 0x1

    return v0
.end method

.method public getMediator()Lcom/lge/camera/Mediator;
    .locals 0

    .prologue
    .line 390
    return-object p0
.end method

.method public getMenuCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3993
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getCommand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentThumbnailUri(ZI)Landroid/net/Uri;
    .locals 1
    .param p1, "isUseLinkedThumbnailList"    # Z
    .param p2, "inclusion"    # I

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getNeedProgressDuringCapture()Z
    .locals 1

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->isNeedProgressDuringCapture:Z

    return v0
.end method

.method public getObjectTrackingState()I
    .locals 1

    .prologue
    .line 4638
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->getObjectTrackingState()I

    move-result v0

    return v0
.end method

.method public getOpenLBSSetting()Z
    .locals 1

    .prologue
    .line 1994
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    return v0
.end method

.method public getOptionMenuController()Lcom/lge/camera/controller/OptionMenuController;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x0

    .line 1120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public getOrientationDegree()I
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-nez v0, :cond_0

    .line 1131
    const/4 v0, 0x0

    .line 1133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientationDegree()I

    move-result v0

    goto :goto_0
.end method

.method public getPIPController()Lcom/lge/camera/controller/PIPController;
    .locals 1

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    return-object v0
.end method

.method public getParameteredRotation()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/lge/camera/Mediator;->mParameteredRotation:I

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 4146
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPicturesRemaining()J
    .locals 2

    .prologue
    .line 4404
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->getPicturesRemaining()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlanePanoramaResultSize()[I
    .locals 1

    .prologue
    .line 5551
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlanePanoramaStatus()I
    .locals 1

    .prologue
    .line 5558
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDimension()I

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 668
    :goto_0
    return-object v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    return-object v0
.end method

.method public getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    return-object v0
.end method

.method public getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4332
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeOnScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousEffectType()I
    .locals 1

    .prologue
    .line 4138
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviousEffectType()I

    move-result v0

    return v0
.end method

.method public getPreviousPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5825
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousRecordModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5832
    const-string v0, ""

    return-object v0
.end method

.method public getPreviousResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPreviousResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousShotModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5818
    const-string v0, ""

    return-object v0
.end method

.method public getQFIndexListItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "menuIndex"    # I

    .prologue
    .line 3973
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->getQfIndexList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQFLMenuEnable()[Z
    .locals 1

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->getQFLMenuEnable()[Z

    move-result-object v0

    return-object v0
.end method

.method public getQfIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    return v0
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
    .line 3969
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->getQfIndexList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 5798
    const/4 v0, 0x0

    return v0
.end method

.method public getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    return-object v0
.end method

.method public getQuickFunctionControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3480
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getQuickFunctionControllerMenuView(I)Landroid/view/View;

    move-result-object v0

    .line 3481
    .local v0, "quickFunctionControllerMenuView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 3482
    const/4 v1, 0x0

    .line 3484
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    goto :goto_0
.end method

.method public getQuickFunctionControllerMenuView(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionDragController()Lcom/lge/camera/controller/QuickFunctionDragController;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    return-object v0
.end method

.method public getQuickFunctionDragControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3620
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->getDragView(I)Landroid/view/View;

    move-result-object v0

    .line 3621
    .local v0, "quickFunctionDragView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 3622
    const/4 v1, 0x0

    .line 3624
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/setting/ListPreference;

    goto :goto_0
.end method

.method public getQuickFunctionSettingController()Lcom/lge/camera/controller/QuickFunctionSettingController;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    return-object v0
.end method

.method public getRecentMessageType()I
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->getRecentMessageType()I

    move-result v0

    return v0
.end method

.method public getRecordLocation()Z
    .locals 1

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->getRecordLocation()Z

    move-result v0

    return v0
.end method

.method public getRecordingDegree()I
    .locals 3

    .prologue
    .line 1141
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->getOrientationHint()I

    move-result v0

    .line 1142
    .local v0, "degree":I
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    add-int/lit16 v1, v0, 0xb4

    rem-int/lit16 v0, v1, 0x168

    .line 1151
    :goto_0
    return v0

    .line 1145
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 1146
    :cond_1
    add-int/lit8 v1, v0, 0x5a

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0

    .line 1148
    :cond_2
    add-int/lit16 v1, v0, 0x10e

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public getRecordingDurationLimit()J
    .locals 2

    .prologue
    .line 5728
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 5724
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRefocusPictures()Z
    .locals 1

    .prologue
    .line 5877
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestedVideoSizeLimit()J
    .locals 2

    .prologue
    .line 5664
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRotateBatteryIndicatorwithHint()Z
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    return v0
.end method

.method public getSaveURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5915
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSavedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1

    .prologue
    .line 3961
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedChildCount(I)I
    .locals 1
    .param p1, "currentSelectIndex"    # I

    .prologue
    .line 2419
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSelectedChildIndex()I
    .locals 1

    .prologue
    .line 2384
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChildIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedQuickFunctionMenuKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3492
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->getSelectedMenuKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingController()Lcom/lge/camera/controller/SettingController;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    return-object v0
.end method

.method public getSettingIndex(I)I
    .locals 1
    .param p1, "settingIndex"    # I

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(I)I

    move-result v0

    return v0
.end method

.method public getSettingIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/Setting;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public getSettingMenuCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3989
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getSettingMenuCommand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingMenuCount()I
    .locals 1

    .prologue
    .line 2415
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getMenuCount()I

    move-result v0

    return v0
.end method

.method public getSettingMenuEnable(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2431
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/camera/setting/SettingMenuItem;->enable:Z

    return v0
.end method

.method public getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2423
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(I)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2427
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->getMenu(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getSettingParameterValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3997
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getParameterValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShotModeMenuController()Lcom/lge/camera/controller/ShotModeMenuController;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    return-object v0
.end method

.method public getShowCameraErrorPopup()Z
    .locals 1

    .prologue
    .line 2290
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->bShowCameraErrorPopup:Z

    return v0
.end method

.method public getSmartModeForPictureSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5972
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmartZoomFocusViewMode()I
    .locals 1

    .prologue
    .line 4256
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->getSmartZoomFocusViewMode()I

    move-result v0

    return v0
.end method

.method public getSnapshotRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getSoundController()Lcom/lge/camera/controller/SoundController;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 5703
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/lge/camera/Mediator;->mStatus:I

    return v0
.end method

.method public getStorageBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getBucketId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStorageBucketId(I)Ljava/lang/String;
    .locals 1
    .param p1, "storageType"    # I

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->getBucketId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStorageController()Lcom/lge/camera/controller/StorageController;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    return-object v0
.end method

.method public getStorageMessageId()I
    .locals 1

    .prologue
    .line 3860
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getMessageId()I

    move-result v0

    return v0
.end method

.method public getStoragePopupMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3864
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageState()I
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCameraModeRunning()Z
    .locals 1

    .prologue
    .line 1315
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mSetCameraMode:Z

    return v0
.end method

.method public getSubMenuMode()I
    .locals 1

    .prologue
    .line 1307
    iget v0, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailAndUpdateButton()V
    .locals 1

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton()V

    .line 2921
    return-void
.end method

.method public getThumbnailControllerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbController()Lcom/lge/camera/components/ThumbnailController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTimeMachineComplete()Z
    .locals 1

    .prologue
    .line 2928
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mSetTimeMachineComplete:Z

    return v0
.end method

.method public getTimeMachinePictures()Z
    .locals 1

    .prologue
    .line 5842
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeMachineStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimerCaptureDelay()I
    .locals 1

    .prologue
    .line 5811
    const/4 v0, 0x0

    return v0
.end method

.method public getToastController()Lcom/lge/camera/controller/ToastController;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    return-object v0
.end method

.method public getVideoFile()Lcom/lge/camera/VideoFile;
    .locals 1

    .prologue
    .line 5736
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoFileSize()J
    .locals 2

    .prologue
    .line 5732
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 1357
    iget v0, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    return v0
.end method

.method public getZoomBarValue()I
    .locals 1

    .prologue
    .line 3336
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBarValue()I

    move-result v0

    return v0
.end method

.method public getZoomController()Lcom/lge/camera/controller/ZoomController;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    return-object v0
.end method

.method public getZoomCursorMaxStep()I
    .locals 1

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getCursorMaxStep()I

    move-result v0

    return v0
.end method

.method public getZoomMaxValue()F
    .locals 1

    .prologue
    .line 3320
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v0

    return v0
.end method

.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomRatio()F

    move-result v0

    return v0
.end method

.method public gotoHelpActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyString"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->gotoHelpActivity(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public hasSaveURI()Z
    .locals 1

    .prologue
    .line 5586
    const/4 v0, 0x0

    return v0
.end method

.method public hideChildCustomView(Z)V
    .locals 3
    .param p1, "useAnim"    # Z

    .prologue
    .line 3350
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp hideChildCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->hideSettingZoomControl(Z)V

    .line 3352
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BrightnessController;->hideSettingBrightnessControl(Z)V

    .line 3353
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BeautyshotController;->hideSettingBeautyShotControl(Z)V

    .line 3354
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3355
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->hideSettingDepth3DControl(Z)V

    .line 3357
    :cond_0
    return-void
.end method

.method public hideFocus()Z
    .locals 1

    .prologue
    .line 4605
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    move-result v0

    return v0
.end method

.method public hideForPhotoStory()Z
    .locals 1

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->hideForPhotoStory()Z

    move-result v0

    return v0
.end method

.method public hideFreePanoramaTakingGuide()V
    .locals 0

    .prologue
    .line 5515
    return-void
.end method

.method public hideGestureGuide()V
    .locals 0

    .prologue
    .line 6031
    return-void
.end method

.method public hideIndicatorController()V
    .locals 1

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->hideIndicator()V

    .line 4417
    return-void
.end method

.method public hideOptionMenu()V
    .locals 1

    .prologue
    .line 4739
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4740
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->hideOptionMenu()V

    .line 4742
    :cond_0
    return-void
.end method

.method public abstract hideOsd()V
.end method

.method public hideOsdByForce()V
    .locals 0

    .prologue
    .line 5668
    return-void
.end method

.method public hidePopupAnimation(I)V
    .locals 5
    .param p1, "ViewId"    # I

    .prologue
    .line 2007
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 2008
    .local v0, "rl":Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 2009
    return-void
.end method

.method public hidePreviewPanelController()V
    .locals 2

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setPreviewPanelVisibility(Z)V

    .line 2953
    :cond_0
    return-void
.end method

.method public hidePreviewPanelLiveSnapshotButton()V
    .locals 1

    .prologue
    .line 2936
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->hideLiveSnapshotButton()V

    .line 2937
    return-void
.end method

.method public hideQuickFunctionController()V
    .locals 1

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 3477
    return-void
.end method

.method public hideQuickFunctionDragController(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->hide(Z)V

    .line 3637
    return-void
.end method

.method public hideRecoridngStopButton()V
    .locals 0

    .prologue
    .line 5758
    return-void
.end method

.method public hideShotModeMenu(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 4764
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ShotModeMenuController;->hide(Z)V

    .line 4765
    return-void
.end method

.method public hideSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->hideSmartZoomFocusView()V

    .line 4237
    return-void
.end method

.method public hideSubWindowResizeHandler()V
    .locals 1

    .prologue
    .line 4213
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->hideSubWindowResizeHandler()V

    .line 4214
    return-void
.end method

.method public inflateMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 482
    return-void
.end method

.method public inflateStub(I)Landroid/view/View;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 443
    .local v1, "viewStub":Landroid/view/ViewStub;
    const/4 v0, 0x0

    .line 444
    .local v0, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 446
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflated view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :goto_0
    return-object v0

    .line 448
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "inflated stubView is null."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public inflateView(I)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 438
    .local v0, "li":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public initAudioShutterEngine()V
    .locals 3

    .prologue
    .line 2065
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-nez v0, :cond_0

    .line 2067
    new-instance v0, Lcom/lge/voiceshutter/library/AudioRecogEngine;

    new-instance v1, Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    invoke-direct {v1, p0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;-><init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback$AudioCallbackFunction;)V

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->voiceShutterKind()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lge/voiceshutter/library/AudioRecogEngine;-><init>(Lcom/lge/voiceshutter/library/AudioRecogEngine$Callback;I)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 2072
    :cond_0
    return-void
.end method

.method public initControllers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1534
    const-string v0, "CameraApp"

    const-string v1, "initController start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->initController()V

    .line 1537
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->initController()V

    .line 1538
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->initController()V

    .line 1539
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->initController()V

    .line 1540
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->initController()V

    .line 1541
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->initController()V

    .line 1542
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->initController()V

    .line 1543
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->initController()V

    .line 1544
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->initController()V

    .line 1545
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->initController()V

    .line 1547
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->initController()V

    .line 1551
    :cond_0
    iput-boolean v3, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 1553
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_1

    .line 1554
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lcom/lge/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/lge/camera/LocationInfo;->setLocationManager(Landroid/location/LocationManager;)V

    .line 1556
    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v2, "key_camera_tag_location"

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1557
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0, v3}, Lcom/lge/camera/LocationInfo;->setRecordLocation(Z)V

    .line 1558
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->startReceivingLocationUpdates()V

    .line 1563
    :cond_1
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "initController end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    return-void

    .line 1560
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/LocationInfo;->setRecordLocation(Z)V

    goto :goto_0
.end method

.method public initFaceDetectInfo()V
    .locals 0

    .prologue
    .line 5775
    return-void
.end method

.method public initFocusAreas()V
    .locals 1

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->initFocusAreas()V

    .line 4602
    return-void
.end method

.method public initMultiWindowAFView()V
    .locals 1

    .prologue
    .line 5035
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->initMultiWindowAFView()V

    .line 5036
    return-void
.end method

.method public initQuickFunctionEnabled()V
    .locals 1

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initEnabled()V

    .line 3465
    return-void
.end method

.method public initSettingBrightnessBar()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessControllerExpand;->initSettingBrightnessBar()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public initSettingMenu()V
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initSettingMenu()V

    .line 2448
    return-void
.end method

.method public initSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 4244
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->initSmartZoomFocusView()V

    .line 4245
    return-void
.end method

.method public initializeRecordingDual(Ljava/lang/String;JIJ)V
    .locals 7
    .param p1, "filepath_name"    # Ljava/lang/String;
    .param p2, "mMaxFileSize"    # J
    .param p4, "mMaxDurationTime"    # I
    .param p5, "freeSpace"    # J

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/controller/PreviewController;->initializeRecordingEffect(Ljava/lang/String;JIJ)V

    .line 4202
    return-void
.end method

.method public initializeRecordingEffect(Ljava/lang/String;JIJ)V
    .locals 7
    .param p1, "filepath_name"    # Ljava/lang/String;
    .param p2, "mMaxFileSize"    # J
    .param p4, "mMaxDurationTime"    # I
    .param p5, "freeSpace"    # J

    .prologue
    .line 4327
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/controller/PreviewController;->initializeRecordingEffect(Ljava/lang/String;JIJ)V

    .line 4329
    return-void
.end method

.method public abstract isAttachIntent()Z
.end method

.method public abstract isAttachMode()Z
.end method

.method public isAudiozoom_ExceptionCase(Z)Z
    .locals 1
    .param p1, "checkRotation"    # Z

    .prologue
    .line 5983
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableResumeVideo()Z
    .locals 1

    .prologue
    .line 5713
    const/4 v0, 0x1

    return v0
.end method

.method public isBackKeyPressed()Z
    .locals 1

    .prologue
    .line 5190
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsBackKeyPressed:Z

    return v0
.end method

.method public isBlockingFaceTrFocusing()Z
    .locals 1

    .prologue
    .line 4585
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isBlockingFaceTrFocusing()Z

    move-result v0

    return v0
.end method

.method public isBurstShotStop()Z
    .locals 1

    .prologue
    .line 5962
    const/4 v0, 0x0

    return v0
.end method

.method public isCafSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1983
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1984
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterFocusLongKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1990
    :cond_0
    :goto_0
    return v0

    .line 1988
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCamcorderRotation(Z)Z
    .locals 1
    .param p1, "checkWithPause"    # Z

    .prologue
    .line 4941
    const/4 v0, 0x1

    return v0
.end method

.method public isCameraKeyLongPressed()Z
    .locals 1

    .prologue
    .line 2831
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed:Z

    return v0
.end method

.method public isChangeMode()Z
    .locals 1

    .prologue
    .line 4266
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isChangeMode()Z

    move-result v0

    return v0
.end method

.method public isChangingToOtherActivity()Z
    .locals 1

    .prologue
    .line 2014
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    return v0
.end method

.method public isClearView()Z
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    return v0
.end method

.method public isClearViewBeforeRecording()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsClearViewBeforeRecording:Z

    return v0
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 4092
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->isCompleteProcessFrame()Z

    move-result v0

    return v0
.end method

.method public isConfigurationChanging()Z
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->isConfigurationChanging()Z

    move-result v0

    return v0
.end method

.method public isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public isContinuousFocusActivating()Z
    .locals 1

    .prologue
    .line 4561
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isContinuousFocusActivating()Z

    move-result v0

    return v0
.end method

.method public isContinuousShotAlived()Z
    .locals 1

    .prologue
    .line 5888
    const/4 v0, 0x0

    return v0
.end method

.method public isControllerInitialized()Z
    .locals 1

    .prologue
    .line 1567
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    return v0
.end method

.method public isCurrnetModuleRunning()Z
    .locals 1

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isDualCameraActive()Z
    .locals 1

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v0

    return v0
.end method

.method public isDualRecordingActive()Z
    .locals 1

    .prologue
    .line 4191
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isDualRecordingActive()Z

    move-result v0

    return v0
.end method

.method public isEffectsCamcorderActive()Z
    .locals 1

    .prologue
    .line 4166
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v0

    return v0
.end method

.method public isEffectsCameraActive()Z
    .locals 1

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v0

    return v0
.end method

.method public isEnteringViewShowing()Z
    .locals 1

    .prologue
    .line 2222
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/EnteringViewController;->isEnteringViewShowing()Z

    move-result v0

    return v0
.end method

.method public isErrorOccuredAndFinish()Z
    .locals 1

    .prologue
    .line 1418
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    return v0
.end method

.method public isExitIgnoreDuringSaving()Z
    .locals 3

    .prologue
    .line 5010
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExitIgnoreDuringSaving :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5011
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    return v0
.end method

.method public isExternalStorageRemoved()Z
    .locals 1

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isExternalStorageRemoved()Z

    move-result v0

    return v0
.end method

.method public isFinishingActivity()Z
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public isFlashOffByHighTemperature()Z
    .locals 1

    .prologue
    .line 5166
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsFlashOffByHighTemperature:Z

    return v0
.end method

.method public isFocusViewVisible()Z
    .locals 1

    .prologue
    .line 4541
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isFocusViewVisible()Z

    move-result v0

    return v0
.end method

.method public isGalleryLaunching()Z
    .locals 1

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isGalleryLaunching()Z

    move-result v0

    return v0
.end method

.method public isGestureShotActivated()Z
    .locals 1

    .prologue
    .line 6037
    const/4 v0, 0x0

    return v0
.end method

.method public isIndicatorControllerInitialized()Z
    .locals 1

    .prologue
    .line 4482
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isLiveEffectActive()Z
    .locals 1

    .prologue
    .line 4174
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isLiveEffectActive()Z

    move-result v0

    return v0
.end method

.method public isLiveEffectDrawerOpened()Z
    .locals 2

    .prologue
    .line 3556
    const v1, 0x7f0d00f0

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 3557
    .local v0, "liveEffectDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-nez v0, :cond_0

    .line 3558
    const/4 v1, 0x0

    .line 3560
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v1

    goto :goto_0
.end method

.method public isLiveEffectDrawerShown()Z
    .locals 1

    .prologue
    .line 3565
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public abstract isMMSIntent()Z
.end method

.method public isMMSRecording()Z
    .locals 1

    .prologue
    .line 5654
    const/4 v0, 0x0

    return v0
.end method

.method public isManualFocusBarVisible()Z
    .locals 1

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->isBarVisible()Z

    move-result v0

    return v0
.end method

.method public isMediaScanning()Z
    .locals 1

    .prologue
    .line 3880
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isMediaScanning()Z

    move-result v0

    return v0
.end method

.method public isNullQuickFunctionSettingView()Z
    .locals 1

    .prologue
    .line 3919
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isNullSettingView()Z

    move-result v0

    return v0
.end method

.method public isNullSettingView()Z
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v0

    return v0
.end method

.method public isObjectTrackingEnabledForSmartZoom()Z
    .locals 1

    .prologue
    .line 4252
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->isObjectTrackingEnabledForSmartZoom()Z

    move-result v0

    return v0
.end method

.method public isOptionMenuShowing()Z
    .locals 1

    .prologue
    .line 4745
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4746
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->isOptionMenuShowing()Z

    move-result v0

    .line 4748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPIPFrameDrawerOpened()Z
    .locals 2

    .prologue
    .line 3543
    const v1, 0x7f0d0123

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 3544
    .local v0, "pipFrameDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    if-nez v0, :cond_0

    .line 3545
    const/4 v1, 0x0

    .line 3547
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isOpened()Z

    move-result v1

    goto :goto_0
.end method

.method public isPIPFrameDrawerShown()Z
    .locals 1

    .prologue
    .line 3552
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public isPanoramaStarted()Z
    .locals 1

    .prologue
    .line 5469
    const/4 v0, 0x0

    return v0
.end method

.method public isPanoramaUIShown()Z
    .locals 1

    .prologue
    .line 5477
    const/4 v0, 0x1

    return v0
.end method

.method public isPanoramaUpdatebutton()Z
    .locals 1

    .prologue
    .line 5484
    const/4 v0, 0x0

    return v0
.end method

.method public isPausing()Z
    .locals 1

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    return v0
.end method

.method public abstract isPlayRingMode()Z
.end method

.method public isPressedShutterButton()Z
    .locals 1

    .prologue
    .line 2839
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isPressedShutterButton()Z

    move-result v0

    return v0
.end method

.method public isPreviewOnGoing()Z
    .locals 1

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewOnGoing()Z

    move-result v0

    return v0
.end method

.method public isPreviewRendered()Z
    .locals 1

    .prologue
    .line 4356
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->beRendered()Z

    move-result v0

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 4070
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickFunctionDragControllerVisible()Z
    .locals 1

    .prologue
    .line 3628
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isQuickFunctionList(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2471
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuickFunctionSettingControllerShowing()Z
    .locals 1

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isQuickFunctionSettingRemoving()Z
    .locals 1

    .prologue
    .line 3911
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->isQuickFunctionSettingViewRemoving()Z

    move-result v0

    return v0
.end method

.method public isReadyEngineProcessor()Z
    .locals 1

    .prologue
    .line 4100
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor()Z

    move-result v0

    return v0
.end method

.method public isRecordedLengthTooShort()Z
    .locals 1

    .prologue
    .line 5768
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordingControllerInit()Z
    .locals 1

    .prologue
    .line 5638
    const/4 v0, 0x1

    return v0
.end method

.method public isRefocusShotHasPictures()Z
    .locals 1

    .prologue
    .line 5873
    const/4 v0, 0x0

    return v0
.end method

.method public isRotateDialogVisible()Z
    .locals 1

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v0

    return v0
.end method

.method public isSendBroadcastIntent()Z
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsSendBroadcastIntent:Z

    return v0
.end method

.method public isSensorSupportBackdropper()Z
    .locals 1

    .prologue
    .line 4314
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isSensorSupportBackdropper()Z

    move-result v0

    return v0
.end method

.method public isSettingControllerVisible()Z
    .locals 1

    .prologue
    .line 3923
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isSettingViewRemoving()Z
    .locals 1

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->isSettingViewRemoving()Z

    move-result v0

    return v0
.end method

.method public isShotModeMenuVisible()Z
    .locals 1

    .prologue
    .line 4756
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isShowingQuickView()Z
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2974
    const-string v0, "off"

    .line 2975
    .local v0, "autoReview":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v10

    if-nez v10, :cond_1

    .line 2976
    const-string v10, "key_camera_auto_review"

    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2981
    :cond_0
    :goto_0
    const-string v10, "on_delay_2sec"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-wide/16 v4, 0x7d0

    .line 2982
    .local v4, "duration":J
    :goto_1
    const-string v10, "on_delay_5sec"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-wide/16 v2, 0x1388

    .line 2984
    .local v2, "autoReviewDuration":J
    :goto_2
    cmp-long v6, v2, v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2985
    const v6, 0x7f0d009b

    invoke-virtual {p0, v6}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2986
    .local v1, "mQuickViewThumbLayout":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2987
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 2988
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v6, v6, Lcom/lge/camera/controller/PreviewPanelController;->mHideQuickViewRunable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/lge/camera/Mediator;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2989
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    iput-boolean v9, v6, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2990
    iget-object v6, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v6, v9, v9}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    move v6, v8

    .line 2995
    .end local v1    # "mQuickViewThumbLayout":Landroid/view/View;
    :goto_3
    return v6

    .line 2977
    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v10

    if-ne v10, v8, :cond_0

    .line 2978
    const-string v10, "key_video_auto_review"

    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-wide v4, v6

    .line 2981
    goto :goto_1

    .restart local v4    # "duration":J
    :cond_3
    move-wide v2, v4

    .line 2982
    goto :goto_2

    .restart local v2    # "autoReviewDuration":J
    :cond_4
    move v6, v9

    .line 2995
    goto :goto_3
.end method

.method public isShutterButtonEnable()Z
    .locals 1

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v0

    return v0
.end method

.method public isShutterButtonLongKey()Z
    .locals 1

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonLongKey()Z

    move-result v0

    return v0
.end method

.method public isShutterFocusLongKey()Z
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterFocusLongKey()Z

    move-result v0

    return v0
.end method

.method public isSmartZoomRecordingActive()Z
    .locals 1

    .prologue
    .line 4224
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isSmartZoomRecordingActive()Z

    move-result v0

    return v0
.end method

.method public isSnapOnFinish()Z
    .locals 1

    .prologue
    .line 4650
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->isSnapOnFinish()Z

    move-result v0

    return v0
.end method

.method public isStopRecordingByMountedAction()Z
    .locals 1

    .prologue
    .line 5678
    const/4 v0, 0x0

    return v0
.end method

.method public isStorageControllerInitialized()Z
    .locals 1

    .prologue
    .line 2509
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2511
    const/4 v0, 0x1

    .line 2513
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageFull()Z
    .locals 2

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2519
    :cond_0
    const/4 v0, 0x1

    .line 2521
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageToastShowing()Z
    .locals 1

    .prologue
    .line 4716
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->isStorageToastShowing()Z

    move-result v0

    return v0
.end method

.method public isSwapCameraProcessing()Z
    .locals 1

    .prologue
    .line 1888
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    return v0
.end method

.method public isSwitcherLeverEnable()Z
    .locals 1

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 3059
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isSwitcherLeverEnable()Z

    move-result v0

    .line 3061
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitcherLeverPressed()Z
    .locals 1

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->isSwitcherLeverPressed()Z

    move-result v0

    return v0
.end method

.method public isSynthesisInProgress()Z
    .locals 1

    .prologue
    .line 5473
    const/4 v0, 0x0

    return v0
.end method

.method public isTimeMachineModeOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2116
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2117
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return v0

    .line 2121
    :cond_1
    const-string v2, "shotmode_timemachine"

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "on"

    const-string v3, "key_time_machine"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 2123
    goto :goto_0
.end method

.method public isTimemachineHasPictures()Z
    .locals 1

    .prologue
    .line 5849
    const/4 v0, 0x0

    return v0
.end method

.method public isTimerShotCountdown()Z
    .locals 1

    .prologue
    .line 5446
    const/4 v0, 0x0

    return v0
.end method

.method public isToastControllerShowing()Z
    .locals 1

    .prologue
    .line 4704
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isfacePreviewInitialized()Z
    .locals 1

    .prologue
    .line 5784
    const/4 v0, 0x1

    return v0
.end method

.method public keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 1451
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v1, :cond_0

    .line 1453
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile : mActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :goto_0
    return-void

    .line 1457
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    .line 1458
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1459
    const-string v1, "CameraApp"

    const-string v2, "keepScreenOnAwhile : getActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1462
    :cond_1
    const-string v1, "com.lge.camera.command.ExitInteraction"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1464
    const-string v1, "com.lge.camera.command.ExitInteraction"

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public needProgressBar()Z
    .locals 1

    .prologue
    .line 5751
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1578
    new-instance v0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;-><init>(Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;Z)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    .line 1579
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->registerReceiver()V

    .line 1581
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->initOsManager()V

    .line 1583
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 1584
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, v5}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1585
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->initailizeOrientation()V

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/lge/camera/listeners/LocationListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/lge/camera/listeners/LocationListener;

    const-string v4, "gps"

    invoke-direct {v3, p0, v4}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;Ljava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/lge/camera/listeners/LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/listeners/LocationListener$LocationListenerFunction;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/camera/LocationInfo;->setLocationListener([Lcom/lge/camera/listeners/LocationListener;)V

    .line 1597
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->initAudioShutterEngine()V

    .line 1598
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3743
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/DialogController;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1783
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_0

    .line 1784
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1785
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->releaseOrientationListener()V

    .line 1786
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->unbind()V

    .line 1787
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    .line 1789
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v2, :cond_1

    .line 1790
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v2, v4}, Lcom/lge/camera/LocationInfo;->setLocationListener([Lcom/lge/camera/listeners/LocationListener;)V

    .line 1791
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v2, v4}, Lcom/lge/camera/LocationInfo;->setLocationManager(Landroid/location/LocationManager;)V

    .line 1792
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/LocationInfo;->unbind()V

    .line 1793
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    .line 1795
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v2, :cond_2

    .line 1796
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    .line 1798
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeScheduledAllCommand()V

    .line 1799
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removePostAllRunnables()V

    .line 1801
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->unregisterReceivers()V

    .line 1802
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    if-eqz v2, :cond_3

    .line 1803
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v2}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->unbindReceiver()V

    .line 1804
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    .line 1807
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1808
    .local v0, "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    goto :goto_0

    .line 1811
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    if-eqz v2, :cond_5

    .line 1812
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    invoke-virtual {v2}, Lcom/lge/camera/module/ModuleFactory;->unbind()V

    .line 1813
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 1816
    :cond_5
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 1817
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    .line 1818
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    .line 1820
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    .line 1821
    iput-object v4, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 1822
    iput-object v4, p0, Lcom/lge/camera/Mediator;->imageHandlerRotationOff:Lcom/lge/camera/util/ImageHandler;

    .line 1823
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    .line 1824
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 1825
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    .line 1826
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 1827
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    .line 1828
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    .line 1829
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 1830
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    .line 1831
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    .line 1832
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    .line 1833
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    .line 1834
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    .line 1835
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    .line 1836
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 1837
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 1838
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    .line 1839
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    .line 1840
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    .line 1841
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    .line 1842
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    .line 1843
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v2, :cond_6

    .line 1844
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v2}, Lcom/lge/camera/util/MainHandler;->unbind()V

    .line 1845
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 1847
    :cond_6
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    .line 1848
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    .line 1849
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mFaceBeauty:Lcom/lge/olaworks/library/FaceBeauty;

    .line 1851
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v2, :cond_7

    .line 1852
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 1853
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1855
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v2, :cond_8

    .line 1856
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 1857
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1859
    :cond_8
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-eqz v2, :cond_9

    .line 1860
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v2}, Lcom/lge/camera/setting/PreferenceGroup;->close()V

    .line 1861
    iput-object v4, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1863
    :cond_9
    return-void
.end method

.method public onDismissRotateDialog()V
    .locals 1

    .prologue
    .line 3760
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    .line 3761
    return-void
.end method

.method public onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V
    .locals 0
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 5996
    return-void
.end method

.method public onOptionItemViewClick()V
    .locals 1

    .prologue
    .line 4727
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4728
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/OptionMenuController;->hideOptionMenu()V

    .line 4730
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1719
    const-string v2, "CameraApp"

    const-string v3, "onPause-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->restoreAutoReviewValue()V

    .line 1723
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1724
    iput-boolean v6, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 1725
    iput-boolean v6, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 1727
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v2, :cond_0

    .line 1728
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    invoke-virtual {v2}, Lcom/lge/camera/CheckTemperature;->releaseCheckTemperature()V

    .line 1730
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v2, :cond_1

    .line 1731
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->stopPreviewForMediatorOnPause()V

    .line 1734
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1735
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v2, :cond_2

    .line 1736
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v2}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->stop()V

    .line 1737
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    .line 1740
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_3

    .line 1741
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2, v6}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1742
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->releaseOrientationListener()V

    .line 1745
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1746
    .local v0, "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0

    .line 1749
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_4
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/lge/camera/controller/BubblePopupController;->removeBubblePopup(Lcom/lge/camera/Mediator;J)V

    .line 1750
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/BubblePopupController;->unbind()V

    .line 1752
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentStorage()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/util/FileNamer;->close(Landroid/content/Context;I)V

    .line 1754
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/EnteringViewController;->hideOnPauseEnteringGuide(Landroid/app/Activity;)V

    .line 1755
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/EnteringViewController;->unbind()V

    .line 1757
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 1758
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeScheduledAllCommand()V

    .line 1759
    iput-boolean v6, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    .line 1760
    iput-boolean v6, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    .line 1762
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 1763
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 1765
    const-string v2, "CameraApp"

    const-string v3, "onPause-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/DialogController;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 3748
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 1640
    const-string v0, "CameraApp"

    const-string v1, "onResume()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    sput-boolean v10, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 1642
    iput-boolean v10, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1643
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->setBackKeyPressed(Z)V

    .line 1644
    iput-boolean v10, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 1646
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setPreviousAutoReviewValue()V

    .line 1647
    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->showDefaultQuickButton(Z)V

    .line 1648
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->updateModeMenuIndicator()V

    .line 1650
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_1

    .line 1651
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v9

    .line 1652
    .local v9, "sizeOnScreenString":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1653
    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v8

    .line 1654
    .local v8, "previewSizeOnScreen":[I
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    aget v1, v8, v10

    aget v2, v8, v5

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewController;->changePreviewMode(II)V

    .line 1657
    .end local v8    # "previewSizeOnScreen":[I
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/lge/camera/components/OpenGLSurfaceView;->setActivityPausing(Z)V

    .line 1662
    .end local v9    # "sizeOnScreenString":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v0, :cond_2

    .line 1663
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    invoke-virtual {v0}, Lcom/lge/camera/CheckTemperature;->checkTemperatureForKddi()V

    .line 1665
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v0}, Lcom/lge/camera/util/ImageHandler;->resetRotation()V

    .line 1667
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1668
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() mOrientationChangeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->initOsManager()V

    .line 1673
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 1674
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, v5}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1677
    :cond_3
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentStorage()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startFileNamer(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 1680
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->setPreviewEffectForBeautyShot()V

    .line 1681
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->initAudioShutterEngine()V

    .line 1683
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/controller/Controller;

    .line 1684
    .local v6, "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v6}, Lcom/lge/camera/controller/Controller;->onResume()V

    goto :goto_0

    .line 1687
    .end local v6    # "control":Lcom/lge/camera/controller/Controller;
    :cond_4
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    if-nez v0, :cond_8

    .line 1688
    const-string v0, "com.lge.camera.command.StartInit"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findScheduledCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1689
    const-string v0, "CameraApp"

    const-string v1, "!findScheduledCommand(Command.START_INIT)"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v0, "com.lge.camera.command.StartInit"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 1696
    :cond_5
    :goto_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1697
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    .line 1700
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 1702
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->hideOsd()V

    .line 1706
    :goto_2
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->setBlockTouchByCallPopUp(Z)V

    .line 1707
    invoke-virtual {p0, v10}, Lcom/lge/camera/Mediator;->setQuickFunctionMenuForcedDisable(Z)V

    .line 1708
    const-string v0, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1710
    iput-boolean v10, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    .line 1712
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    return-void

    .line 1693
    :cond_8
    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->showQuickMenuEnteringGuide(Z)V

    goto :goto_1

    .line 1704
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->showOsd()V

    goto :goto_2
.end method

.method public onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 1
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2945
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 2947
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1604
    const-string v3, "CameraApp"

    const-string v6, "onStart()-start"

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1608
    invoke-static {v5}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1617
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1618
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/AppControlUtil;->setQuickWindowCameraFromIntent(Landroid/content/Intent;)V

    .line 1619
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->isSecureCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    move v3, v5

    :goto_1
    invoke-static {v2, v4, v3}, Lcom/lge/camera/util/Common;->configureWindowFlag(Landroid/view/Window;ZZ)V

    .line 1622
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/CameraActivity;->getRequestedOrientation()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 1623
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 1626
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_2

    .line 1627
    const-string v3, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1630
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1631
    .local v0, "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStart()V

    goto :goto_2

    .line 1609
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "window":Landroid/view/Window;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1611
    invoke-static {v4}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    goto :goto_0

    .line 1613
    :cond_4
    invoke-static {v4}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1614
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    goto :goto_0

    .restart local v2    # "window":Landroid/view/Window;
    :cond_5
    move v3, v4

    .line 1619
    goto :goto_1

    .line 1633
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v3, "CameraApp"

    const-string v4, "onStart()-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1772
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->toastControllerHide(Z)V

    .line 1773
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1774
    .local v0, "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStop()V

    goto :goto_0

    .line 1776
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1490
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->keepScreenOnAwhile()V

    goto :goto_0
.end method

.method public pauseAndResumeRecording(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 4298
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->pauseAndResumeRecording(Z)V

    .line 4299
    return-void
.end method

.method public pauseRecording()V
    .locals 0

    .prologue
    .line 5691
    return-void
.end method

.method public perfLockAcquire()V
    .locals 5

    .prologue
    .line 5174
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is8974Chipset()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5187
    :goto_0
    return-void

    .line 5177
    :cond_0
    new-instance v3, Lcom/lge/systemservice/core/LGContext;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lge/systemservice/core/LGContext;-><init>(Landroid/content/Context;)V

    const-string v4, "lgpowermanagerhelper"

    invoke-virtual {v3, v4}, Lcom/lge/systemservice/core/LGContext;->getLGSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/systemservice/core/LGPowerManagerHelper;

    .line 5180
    .local v2, "service":Lcom/lge/systemservice/core/LGPowerManagerHelper;
    const/16 v0, 0xb

    .line 5182
    .local v0, "boostId":I
    :try_start_0
    const-string v3, "CameraApp"

    const-string v4, "Boost CPU clock!!, "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5183
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/lge/systemservice/core/LGPowerManagerHelper;->boost(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5184
    :catch_0
    move-exception v1

    .line 5185
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public playAFSound(Z)V
    .locals 1
    .param p1, "seccess"    # Z

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playAFSound(Z)V

    .line 3669
    :cond_0
    return-void
.end method

.method public playBurstShotShutterSound(Z)V
    .locals 1
    .param p1, "repeat"    # Z

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3697
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playBurstShotShutterSound(Z)V

    .line 3699
    :cond_0
    return-void
.end method

.method public playClearShotShutterSound(Z)V
    .locals 1
    .param p1, "repeat"    # Z

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3722
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playClearShotShutterSound(Z)V

    .line 3724
    :cond_0
    return-void
.end method

.method public playContinuousShutterSound()V
    .locals 1

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3691
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playContinuousShutterSound()V

    .line 3693
    :cond_0
    return-void
.end method

.method public playFreePanoramaShutterSound()V
    .locals 1

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3703
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playFreePanoramaShutterSound()V

    .line 3705
    :cond_0
    return-void
.end method

.method public playRecordingSound(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    .line 3663
    :cond_0
    return-void
.end method

.method public playShutterSound()V
    .locals 1

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playShutterSound()V

    .line 3681
    :cond_0
    return-void
.end method

.method public playTimerSound(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 3672
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playTimerSound(I)V

    .line 3675
    :cond_0
    return-void
.end method

.method public playVoiceCommandSound(I)V
    .locals 1
    .param p1, "soundIndex"    # I

    .prologue
    .line 3647
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3648
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopVoiceCommandSound()V

    .line 3649
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SoundController;->playVoiceCommandSound(I)V

    .line 3651
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 565
    :cond_0
    return-void

    .line 562
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 568
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    :cond_0
    return-void

    .line 571
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract postviewRequestInit()Z
.end method

.method public putPreviewFrameForGesture([BLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 6034
    return-void
.end method

.method public qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "duration"    # I
    .param p3, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickFunctionController;->qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    .line 3586
    return-void
.end method

.method public qflSettingAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "aniView"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionSettingController;->qflSettingAnimation(Landroid/view/View;Z)V

    .line 3410
    return-void
.end method

.method public quickFunctionAllMenuSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuSelected(Z)V

    .line 3440
    return-void
.end method

.method public quickFunctionControllerInitMenu()V
    .locals 1

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 3436
    return-void
.end method

.method public quickFunctionControllerRefresh(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 3443
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    const-string v0, "on"

    const-string v2, "key_smart_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/QuickFunctionController;->quickFunctionControllerRefresh(Z)V

    .line 3445
    return-void

    .line 3443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readVideoIntentExtras()V
    .locals 0

    .prologue
    .line 5661
    return-void
.end method

.method public recordingControllerHide()V
    .locals 0

    .prologue
    .line 5642
    return-void
.end method

.method public recordingControllerShow()V
    .locals 0

    .prologue
    .line 5645
    return-void
.end method

.method public refresh3dDepthController()V
    .locals 1

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->refreshController()V

    .line 3313
    return-void
.end method

.method public refresh3dDepthSettingBars()V
    .locals 1

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->refreshSettingBars()V

    .line 3214
    return-void
.end method

.method public refreshBeautyshotController()V
    .locals 1

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->refreshController()V

    .line 3305
    return-void
.end method

.method public refreshBeautyshotSettingBars()V
    .locals 1

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->refreshSettingBars()V

    .line 3210
    return-void
.end method

.method public refreshBrightnessController()V
    .locals 1

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->refreshController()V

    .line 3301
    return-void
.end method

.method public refreshBrightnessExpandSettingBars()V
    .locals 1

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessControllerExpand;->refreshSettingBars()V

    .line 3206
    return-void
.end method

.method public refreshBrightnessSettingBars()V
    .locals 1

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->refreshSettingBars()V

    .line 3202
    return-void
.end method

.method public refreshManualFocusController()V
    .locals 1

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->refreshController()V

    .line 3309
    return-void
.end method

.method public refreshMenuForVolumeShutterPress()V
    .locals 4

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2056
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2057
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mRefreshMenuRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2059
    :cond_0
    return-void
.end method

.method public refreshQuickButton()V
    .locals 1

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->refreshQuickButton()V

    .line 2625
    return-void
.end method

.method public refreshZoomController()V
    .locals 1

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->refreshController()V

    .line 3297
    return-void
.end method

.method public refreshZoomSettingBars()V
    .locals 1

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->refreshSettingBars()V

    .line 3198
    return-void
.end method

.method public registerFaceTrackingCallback()V
    .locals 1

    .prologue
    .line 4669
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->registerFaceTrackingCallback()V

    .line 4670
    return-void
.end method

.method public registerObjectCallback()V
    .locals 1

    .prologue
    .line 4659
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->registerObjectCallback()V

    .line 4660
    return-void
.end method

.method protected registerReceiver()V
    .locals 1

    .prologue
    .line 1869
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    if-nez v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerReceiver()V

    .line 1871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 1873
    :cond_0
    return-void
.end method

.method public releaseAllEngine()V
    .locals 2

    .prologue
    .line 4112
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4113
    const-string v0, "CameraApp"

    const-string v1, "releaseAllEngine call..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 4116
    :cond_0
    return-void
.end method

.method public releaseControllerForReInitialize()V
    .locals 4

    .prologue
    .line 1495
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1496
    .local v0, "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0

    .line 1498
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1499
    .restart local v0    # "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStop()V

    goto :goto_1

    .line 1501
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_2

    .line 1502
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1503
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->releaseOrientationListener()V

    .line 1505
    :cond_2
    return-void
.end method

.method public releaseEngine(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 4119
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4120
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEngine ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] call..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->releaseEngine(Ljava/lang/String;)V

    .line 4123
    :cond_0
    return-void
.end method

.method public releaseEngine(Z)V
    .locals 1
    .param p1, "checkEngineTag"    # Z

    .prologue
    .line 4381
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 4382
    return-void
.end method

.method public releaseGestureEngine()V
    .locals 0

    .prologue
    .line 6025
    return-void
.end method

.method public removeAllImageList()V
    .locals 0

    .prologue
    .line 5590
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 643
    :cond_0
    return-void
.end method

.method public removeFreePanoramaBlackBg()V
    .locals 0

    .prologue
    .line 5491
    return-void
.end method

.method public removeFreePanoramaView()V
    .locals 0

    .prologue
    .line 5497
    return-void
.end method

.method public removePanoramaView()V
    .locals 0

    .prologue
    .line 5463
    return-void
.end method

.method public removePlanePanoramaView()V
    .locals 0

    .prologue
    .line 5548
    return-void
.end method

.method public removePostAllRunnables()V
    .locals 4

    .prologue
    .line 627
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 628
    const-string v2, "CameraApp"

    const-string v3, "mPostRunnables is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 632
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 634
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mPostRunnableLock:Ljava/lang/Object;

    monitor-enter v3

    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 636
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removePostRunnable(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 611
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 612
    const-string v1, "CameraApp"

    const-string v2, "mPostRunnables is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 616
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mPostRunnableLock:Ljava/lang/Object;

    monitor-enter v2

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 618
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 619
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 622
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePreviewCallback()V
    .locals 1

    .prologue
    .line 4286
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->removePreviewCallback()V

    .line 4287
    return-void
.end method

.method public removeQuickButton(I)V
    .locals 1
    .param p1, "buttonType"    # I

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButton(I)V

    .line 2589
    return-void
.end method

.method public removeQuickButtonAll()V
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->removeQuickButtonAll()V

    .line 2585
    return-void
.end method

.method public removeQuickFunctionSettingView()V
    .locals 1

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionSettingController;->removeSettingView()V

    .line 3406
    return-void
.end method

.method public removeScheduledAllCommand()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0}, Lcom/lge/camera/command/CommandManager;->removeScheduledAllCommand()V

    .line 608
    return-void
.end method

.method public removeScheduledCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCommandManager:Lcom/lge/camera/command/CommandManager;

    invoke-virtual {v0, p1}, Lcom/lge/camera/command/CommandManager;->removeScheduledCommand(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public removeSettingView()V
    .locals 1

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->removeSettingView()V

    .line 2357
    return-void
.end method

.method public removeSettingViewAll()V
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->removeSettingViewAll()V

    .line 2361
    return-void
.end method

.method public reset3dDepthController()V
    .locals 1

    .prologue
    .line 3193
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 3194
    return-void
.end method

.method public resetAudioZoomMenu()V
    .locals 0

    .prologue
    .line 5619
    return-void
.end method

.method public resetBarController(I)V
    .locals 2
    .param p1, "mBarType"    # I

    .prologue
    const/4 v1, 0x1

    .line 3135
    packed-switch p1, :pswitch_data_0

    .line 3160
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3137
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 3138
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->reset()V

    goto :goto_0

    .line 3142
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->reset()V

    goto :goto_0

    .line 3145
    :pswitch_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->reset()V

    goto :goto_0

    .line 3151
    :pswitch_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDimension()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3153
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->reset()V

    goto :goto_0

    .line 3157
    :pswitch_5
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->reset()V

    goto :goto_0

    .line 3135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public resetBeautyshotController()V
    .locals 1

    .prologue
    .line 3185
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 3186
    return-void
.end method

.method public resetBrightnessController()V
    .locals 1

    .prologue
    .line 3181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 3182
    return-void
.end method

.method public resetController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3163
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetZoomController()V

    .line 3164
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetBrightnessController()V

    .line 3165
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetBeautyshotController()V

    .line 3166
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetManualFocusController()V

    .line 3167
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->reset3dDepthController()V

    .line 3169
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3171
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/QuickFunctionController;->setLimitationToLiveeffect(Z)V

    .line 3173
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->reset()V

    .line 3174
    return-void
.end method

.method public resetControllerForReInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1508
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1509
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume() mOrientationChangeEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v4}, Lcom/lge/camera/OrientationInfo;->getOrientationListenerEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 1514
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v2, v5}, Lcom/lge/camera/OrientationInfo;->setOrientationListenerEnable(Z)V

    .line 1517
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->onCreate()V

    .line 1519
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1520
    .local v0, "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->reInitialize()V

    .line 1521
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->initController()V

    goto :goto_0

    .line 1523
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1524
    .restart local v0    # "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onStart()V

    goto :goto_1

    .line 1526
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/Controller;

    .line 1527
    .restart local v0    # "control":Lcom/lge/camera/controller/Controller;
    invoke-virtual {v0}, Lcom/lge/camera/controller/Controller;->onResume()V

    goto :goto_2

    .line 1529
    .end local v0    # "control":Lcom/lge/camera/controller/Controller;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/lge/camera/Mediator;->showDefaultQuickButton(Z)V

    .line 1530
    const-string v2, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1531
    return-void
.end method

.method public resetControllerInitialized()V
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mControllerInitialized:Z

    .line 1572
    return-void
.end method

.method public resetDisplayTimeout3dDepth()V
    .locals 1

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/Camera3dDepthController;->resetDisplayTimeout()V

    .line 3293
    return-void
.end method

.method public resetDisplayTimeoutBeautyshot()V
    .locals 1

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BeautyshotController;->resetDisplayTimeout()V

    .line 3285
    return-void
.end method

.method public resetDisplayTimeoutBrightness()V
    .locals 1

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/BrightnessController;->resetDisplayTimeout()V

    .line 3281
    return-void
.end method

.method public resetDisplayTimeoutManualFocus()V
    .locals 1

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ManualFocusController;->resetDisplayTimeout()V

    .line 3289
    return-void
.end method

.method public resetDisplayTimeoutZoom()V
    .locals 1

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->resetDisplayTimeout()V

    .line 3277
    return-void
.end method

.method public resetManualFocusController()V
    .locals 1

    .prologue
    .line 3189
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 3190
    return-void
.end method

.method public resetQFIndex()V
    .locals 1

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->clearQFIndex()V

    .line 2477
    return-void
.end method

.method public resetScreenTimeout()V
    .locals 3

    .prologue
    .line 1437
    const-string v1, "CameraApp"

    const-string v2, "resetScreenTimeout"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    if-nez v1, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1442
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    .line 1443
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1444
    const-string v1, "CameraApp"

    const-string v2, "resetScreenTimeout : getActivity is null!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public resetSettingMenu()V
    .locals 2

    .prologue
    .line 3927
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_1

    .line 3928
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initSettingMenu()V

    .line 3929
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCameraActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviousResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3931
    const-string v0, "key_preview_size_on_device"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 3934
    :cond_1
    return-void
.end method

.method public resetSwitcherLever()V
    .locals 1

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->resetSwitcherLever()V

    .line 3074
    :cond_0
    return-void
.end method

.method public resetTimeClearScreen()V
    .locals 4

    .prologue
    .line 1000
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 1004
    :cond_0
    const-string v0, "com.lge.camera.command.ClearScreen"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1005
    const-string v0, "com.lge.camera.command.ClearScreen"

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public resetZoomController()V
    .locals 1

    .prologue
    .line 3177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->resetBarController(I)V

    .line 3178
    return-void
.end method

.method public restartFreePanorama()V
    .locals 0

    .prologue
    .line 5512
    return-void
.end method

.method public restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 2
    .param p1, "lgParameter"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "useCallBack"    # Z

    .prologue
    .line 4038
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 4039
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 4043
    :goto_0
    return-void

    .line 4041
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract restoreAutoReviewValue()V
.end method

.method public restoreLiveEffectSubMenu()V
    .locals 1

    .prologue
    .line 3597
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->restoreLiveEffectSubMenu()V

    .line 3598
    return-void
.end method

.method public restoreSubWindow()V
    .locals 1

    .prologue
    .line 4385
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->restoreSubWindow()V

    .line 4386
    return-void
.end method

.method public resumeRecording()V
    .locals 0

    .prologue
    .line 5694
    return-void
.end method

.method public resumeUpdateReordingTime()V
    .locals 0

    .prologue
    .line 5710
    return-void
.end method

.method public rotateAllController(IZ)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const v5, 0x7f0d003b

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0d0057

    const v1, 0x7f0d0039

    .line 4775
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDimension()I

    move-result v0

    if-ne v0, v4, :cond_2

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    .line 4776
    :cond_0
    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 4894
    :cond_1
    :goto_0
    return-void

    .line 4779
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 4780
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->startRotation(I)V

    .line 4781
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startSubMenuRotation(I)V

    .line 4782
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isLiveEffectActive()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const v0, 0x7f0d00f0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4786
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startLiveEffectDrawerSubMenuRotation(I)V

    .line 4788
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    invoke-virtual {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4792
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startPIPFrameSubMenuRotation(I)V

    .line 4794
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startAudiozoomMenuRotation(I)V

    .line 4796
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSettingViewRemoving()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isQuickFunctionSettingRemoving()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4797
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isDualCameraActive()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4798
    :cond_6
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->setPIPRotate(I)V

    .line 4799
    const-string v0, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 4803
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4804
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4806
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->updateOrientation()V

    .line 4810
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4811
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setOrientation(I)V

    .line 4813
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 4814
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraPreview;->setOrientation(I)V

    .line 4817
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ToastController;->rotate()V

    .line 4818
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/DialogController;->startRotation(I)V

    .line 4820
    const v0, 0x7f0d019b

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4821
    const v0, 0x7f0d019d

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4822
    const v0, 0x7f0d019f

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4823
    const v0, 0x7f0d01a1

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4824
    const v0, 0x7f0d01a3

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4826
    const v0, 0x7f0d005b

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4827
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4828
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4829
    const v0, 0x7f0d005a

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4830
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4831
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4832
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4833
    const v0, 0x7f0d0044

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4834
    const v0, 0x7f0d0041

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4835
    const v0, 0x7f0d0059

    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4836
    invoke-virtual {p0, v5, p1, v2, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4838
    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->isCamcorderRotation(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4839
    const v0, 0x7f0d0042

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4840
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4841
    const v0, 0x7f0d0040

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4842
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4843
    const v0, 0x7f0d003c

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4844
    const v0, 0x7f0d003d

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4845
    const v0, 0x7f0d0044

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4846
    const v0, 0x7f0d0041

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4847
    const v0, 0x7f0d003e

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4848
    const v0, 0x7f0d003f

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4849
    invoke-virtual {p0, v5, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4852
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->startRotation(IZ)V

    .line 4853
    invoke-static {}, Lcom/lge/camera/controller/BubblePopupController;->get()Lcom/lge/camera/controller/BubblePopupController;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/lge/camera/controller/BubblePopupController;->startRotation(Lcom/lge/camera/Mediator;IZ)V

    .line 4854
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/controller/EnteringViewController;->enteringGuideRotate(Landroid/app/Activity;I)V

    .line 4856
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportZoomOnRecord()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->isCamcorderRotation(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 4862
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/BrightnessController;->startRotation(IZ)V

    .line 4863
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/BeautyshotController;->startRotation(IZ)V

    .line 4864
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ManualFocusController;->startRotation(IZ)V

    .line 4866
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4867
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/Camera3dDepthController;->startRotation(IZ)V

    .line 4870
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, v3}, Lcom/lge/camera/controller/IndicatorController;->startRotation(IZ)V

    .line 4872
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_e

    .line 4874
    const v0, 0x7f0d0096

    const v1, 0x7f0d008d

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4876
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/module/Module;->startRotation(I)V

    .line 4877
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/Mediator;->startFreePanoramaRotation(IZ)V

    .line 4878
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/Mediator;->startPlanePanoramaRotation(IZ)V

    .line 4884
    :goto_2
    const v0, 0x7f0d0232

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4885
    const v0, 0x7f0d0231

    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 4887
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionDragController;->startRotation(IZ)V

    .line 4888
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionSettingController:Lcom/lge/camera/controller/QuickFunctionSettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionSettingController;->startRotation(I)V

    .line 4889
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/OptionMenuController;->startRotation(I)V

    .line 4890
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ShotModeMenuController;->startRotation(IZ)V

    .line 4891
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    if-eqz v0, :cond_1

    .line 4892
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mGestureShutterController:Lcom/lge/camera/controller/GestureShutterController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/GestureShutterController;->startRotation(IZ)V

    goto/16 :goto_0

    .line 4860
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ZoomController;->startRotation(IZ)V

    goto :goto_1

    .line 4880
    :cond_e
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->startRecordingControllerRotation(I)V

    .line 4881
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->startAudioZoomContollerRotation(I)V

    goto :goto_2
.end method

.method public rotateSettingBar(II)V
    .locals 1
    .param p1, "mBarType"    # I
    .param p2, "degree"    # I

    .prologue
    .line 3118
    packed-switch p1, :pswitch_data_0

    .line 3132
    :goto_0
    return-void

    .line 3120
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingZoom(I)V

    goto :goto_0

    .line 3123
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingBrightness(I)V

    goto :goto_0

    .line 3126
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingBeautyShot(I)V

    goto :goto_0

    .line 3129
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/SettingController;->rotateSettingCamera3dDepth(I)V

    goto :goto_0

    .line 3118
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public runGestureEngine(Z)V
    .locals 0
    .param p1, "useCallback"    # Z

    .prologue
    .line 6022
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 578
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_1

    .line 579
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public saveClearShotPicture([BI)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "timeMachineTempFileCount"    # I

    .prologue
    .line 5930
    const/4 v0, 0x1

    return v0
.end method

.method public saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "degree"    # I
    .param p4, "isSetLastThumb"    # Z
    .param p5, "isBurstFirst"    # Z

    .prologue
    .line 5794
    const/4 v0, 0x1

    return v0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;ZI)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "useTimeMachine"    # Z
    .param p4, "timeMachineTempFileCount"    # I

    .prologue
    .line 5789
    const/4 v0, 0x1

    return v0
.end method

.method public saveQFLIndex()V
    .locals 1

    .prologue
    .line 4009
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getSetting()Lcom/lge/camera/setting/Setting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/setting/Setting;->saveQFLIndex()V

    .line 4010
    return-void
.end method

.method public saveRefocusShotMap([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 5940
    return-void
.end method

.method public saveRefocusShotPicture([BI)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "timeMachineTempFileCount"    # I

    .prologue
    .line 5936
    const/4 v0, 0x1

    return v0
.end method

.method public saveTimeMachinePicture([BI)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "timeMachineTempFileCount"    # I

    .prologue
    .line 5926
    const/4 v0, 0x1

    return v0
.end method

.method public set3DSwitchImage()V
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->set3DSwitchImage()V

    .line 2860
    return-void
.end method

.method public set3DSwitchVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->set3DSwitchVisible(Z)V

    .line 2856
    return-void
.end method

.method public setActualBatteryLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1331
    iput p1, p0, Lcom/lge/camera/Mediator;->mActualBatteryLevel:I

    .line 1332
    return-void
.end method

.method public setAllChildMenuEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 3937
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu;->setAllChildMenuEnabled(Ljava/lang/String;Z)V

    .line 3938
    return-void
.end method

.method public setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/SettingController;->setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V

    .line 2503
    :cond_0
    return-void
.end method

.method public setApplicationMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1071
    iput p1, p0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    .line 1072
    return-void
.end method

.method public setAudioRecogEngineStart()V
    .locals 2

    .prologue
    .line 2084
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v0, :cond_0

    const-string v0, "key_voiceshutter"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    const-string v0, "CameraApp"

    const-string v1, "setAudioRecogEngineStart"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->start()V

    .line 2091
    :cond_0
    return-void
.end method

.method public setAudioRecogEngineStop()V
    .locals 2

    .prologue
    .line 2075
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    const-string v0, "CameraApp"

    const-string v1, "setAudioRecogEngineStop"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mAudioRecogEngine:Lcom/lge/voiceshutter/library/AudioRecogEngine;

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/AudioRecogEngine;->stop()V

    .line 2081
    :cond_0
    return-void
.end method

.method public setAudioZoomGuideViewLayout(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "marginLeft"    # I

    .prologue
    .line 5622
    return-void
.end method

.method public setAudiozoomStart(Z)V
    .locals 0
    .param p1, "mAudiozoomStart"    # Z

    .prologue
    .line 5600
    return-void
.end method

.method public setAudiozoomStartInRecording(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 5607
    return-void
.end method

.method public setAudiozoom_ExceptionCase(Z)V
    .locals 0
    .param p1, "isOccured"    # Z

    .prologue
    .line 5987
    return-void
.end method

.method public setAudiozoombuttonstate()V
    .locals 0

    .prologue
    .line 5635
    return-void
.end method

.method public setAudiozoomvalue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5980
    return-void
.end method

.method public setBack3dPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .param p1, "pref"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mBack3dPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 694
    return-void
.end method

.method public setBackKeyPressed(Z)V
    .locals 0
    .param p1, "backKeyPressed"    # Z

    .prologue
    .line 5194
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsBackKeyPressed:Z

    .line 5195
    return-void
.end method

.method public setBackKeyRecStop(Z)V
    .locals 0
    .param p1, "con"    # Z

    .prologue
    .line 5700
    return-void
.end method

.method public setBackPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .param p1, "pref"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 690
    return-void
.end method

.method public setBackgroundColorBlack()V
    .locals 1

    .prologue
    .line 4393
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->setBackgroundColorBlack()V

    .line 4394
    return-void
.end method

.method public setBackgroundColorWhite()V
    .locals 1

    .prologue
    .line 4397
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->setBackgroundColorWhite()V

    .line 4398
    return-void
.end method

.method public setBackupCurrentMenuIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4005
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->setBackupCurrentMenuIndex(I)V

    .line 4006
    return-void
.end method

.method public setBatteryIndicator(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 4486
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    if-eqz v0, :cond_0

    .line 4487
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 4489
    :cond_0
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1323
    iput p1, p0, Lcom/lge/camera/Mediator;->mBatteryLevel:I

    .line 1324
    return-void
.end method

.method public setBatteryTemper(I)V
    .locals 1
    .param p1, "temper"    # I

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCheckTemperature:Lcom/lge/camera/CheckTemperature;

    invoke-virtual {v0, p1}, Lcom/lge/camera/CheckTemperature;->setBatteryTemper(I)V

    .line 1338
    :cond_0
    return-void
.end method

.method public setBatteryVisibility(I)V
    .locals 1
    .param p1, "batteryLevel"    # I

    .prologue
    .line 4492
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    if-eqz v0, :cond_0

    .line 4493
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setBatteryVisibility(I)V

    .line 4495
    :cond_0
    return-void
.end method

.method public setBeautyshotProgress(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setBeautyshotProgress(Z)V

    .line 4374
    return-void
.end method

.method public setBlockTouchByCallPopUp(Z)V
    .locals 0
    .param p1, "block"    # Z

    .prologue
    .line 4997
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mBlockTouchByCallPopUp:Z

    .line 4998
    return-void
.end method

.method public setBlockingFaceTrFocusing(Z)V
    .locals 1
    .param p1, "beBlocked"    # Z

    .prologue
    .line 4589
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setBlockingFaceTrFocusing(Z)V

    .line 4590
    return-void
.end method

.method public setBurstShotStop(Z)V
    .locals 0
    .param p1, "stop"    # Z

    .prologue
    .line 5959
    return-void
.end method

.method public setButtonRemainEnabled(IZ)V
    .locals 1
    .param p1, "buttonType"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainEnabled(IZ)V

    .line 2617
    return-void
.end method

.method public setButtonRemainEnabled(IZZ)V
    .locals 1
    .param p1, "buttonType"    # I
    .param p2, "enable"    # Z
    .param p3, "useDefaultIcon"    # Z

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainEnabled(IZZ)V

    .line 2621
    return-void
.end method

.method public setButtonRemainRefresh()V
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickButtonController;->setButtonRemainRefresh()V

    .line 2613
    return-void
.end method

.method public setCafOnGoing(Z)V
    .locals 1
    .param p1, "cafOnGoing"    # Z

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V

    .line 2897
    return-void
.end method

.method public setCameraId(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 855
    iput p1, p0, Lcom/lge/camera/Mediator;->mCameraId:I

    .line 856
    return-void
.end method

.method public setCameraIdBeforeStartInit()V
    .locals 2

    .prologue
    .line 4945
    const-string v0, "CameraApp"

    const-string v1, "SetCameraIdBeforeStartInit-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4947
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v0, :cond_0

    .line 4948
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->initController()V

    .line 4950
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 4951
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->setCameraIDForCamera()V

    .line 4955
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_1

    .line 4956
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->initController()V

    .line 4958
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v0, :cond_2

    .line 4959
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initController()V

    .line 4961
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    if-eqz v0, :cond_3

    .line 4962
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 4964
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "SetCameraIdBeforeStartInit-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4965
    return-void

    .line 4953
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/Mediator;->setCameraIDForCamcorder()V

    goto :goto_0
.end method

.method public setCameraKeyLongPressed(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 2835
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->isCameraKeyLongPressed:Z

    .line 2836
    return-void
.end method

.method public setCameraMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1086
    iput p1, p0, Lcom/lge/camera/Mediator;->mCameraMode:I

    .line 1087
    return-void
.end method

.method public setCaptureData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 5993
    return-void
.end method

.method public setChangeMode()V
    .locals 1

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->setChangeMode()V

    .line 4263
    return-void
.end method

.method public setChangingToOtherActivity(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2018
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mChangingToOtherActivity:Z

    .line 2019
    return-void
.end method

.method public setCheckClickTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 3605
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckClickTime(J)V

    .line 3606
    return-void
.end method

.method public setCheckToggleTime(I)Z
    .locals 1
    .param p1, "usage"    # I

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setCheckToggleTime(I)Z

    move-result v0

    return v0
.end method

.method public setClearFocusAnimation()V
    .locals 1

    .prologue
    .line 4549
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->setClearFocusAnimation()V

    .line 4550
    return-void
.end method

.method public setContinuousFocusActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 4565
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setContinuousFocusActive(Z)V

    .line 4566
    return-void
.end method

.method public setContinuousShotAlived(Z)V
    .locals 0
    .param p1, "alived"    # Z

    .prologue
    .line 5923
    return-void
.end method

.method public setCurrentIAMode(I)V
    .locals 0
    .param p1, "currentIAMode"    # I

    .prologue
    .line 6009
    return-void
.end method

.method public setCurrentPIPMask(I)V
    .locals 0
    .param p1, "maskIndex"    # I

    .prologue
    .line 3525
    sput p1, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    .line 3526
    return-void
.end method

.method public setCurrentRecordingTime(J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 5015
    iput-wide p1, p0, Lcom/lge/camera/Mediator;->mCurrentRecordingTime:J

    .line 5016
    return-void
.end method

.method public setCurrentSettingMenu(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->setCurrentMenu(I)Z

    move-result v0

    return v0
.end method

.method public setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 3945
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3946
    return-void
.end method

.method public setCurrentSettingMenuEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 3941
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 3942
    return-void
.end method

.method public setCurrentSettingMenuOnly(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3985
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->setCurrentMenuOnly(I)Z

    move-result v0

    return v0
.end method

.method public setCurrentStorage(I)V
    .locals 1
    .param p1, "storageType"    # I

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 2530
    return-void
.end method

.method public setDefaultPIPMask()V
    .locals 1

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3531
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->setDefaultPIPMask()V

    .line 3533
    :cond_0
    return-void
.end method

.method public setDegree(IIIZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "degree"    # I
    .param p3, "parentResId"    # I
    .param p4, "animation"    # Z

    .prologue
    .line 4901
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 4902
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 4938
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 4906
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_2

    .line 4907
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4908
    .local v0, "parentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4913
    .end local v0    # "parentView":Landroid/view/View;
    :cond_2
    instance-of v2, v1, Lcom/lge/camera/components/RotateImageButton;

    if-eqz v2, :cond_4

    .line 4914
    if-nez p3, :cond_3

    .line 4915
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0

    .line 4917
    :cond_3
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    goto :goto_0

    .line 4920
    :cond_4
    instance-of v2, v1, Lcom/lge/camera/components/RotateImageView;

    if-eqz v2, :cond_6

    .line 4921
    if-nez p3, :cond_5

    .line 4922
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageView;->setDegree(IZ)V

    goto :goto_0

    .line 4924
    :cond_5
    invoke-virtual {p0, p3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    check-cast v2, Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/RotateImageView;->setDegree(IZ)V

    goto :goto_0

    .line 4927
    :cond_6
    instance-of v2, v1, Lcom/lge/camera/components/SwitcherLever;

    if-eqz v2, :cond_7

    .line 4928
    check-cast v1, Lcom/lge/camera/components/SwitcherLever;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p2, p4}, Lcom/lge/camera/components/SwitcherLever;->setDegree(IZ)V

    goto :goto_0

    .line 4929
    .restart local v1    # "view":Landroid/view/View;
    :cond_7
    instance-of v2, v1, Lcom/lge/camera/components/Switcher;

    if-eqz v2, :cond_8

    .line 4930
    check-cast v1, Lcom/lge/camera/components/Switcher;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p2, p4}, Lcom/lge/camera/components/Switcher;->setDegree(IZ)V

    goto :goto_0

    .line 4931
    .restart local v1    # "view":Landroid/view/View;
    :cond_8
    instance-of v2, v1, Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v2, :cond_9

    move-object v2, v1

    .line 4932
    check-cast v2, Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/SwitcherLeverVertical;->setDegree(IZ)V

    .line 4933
    check-cast v1, Lcom/lge/camera/components/SwitcherLeverVertical;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/lge/camera/components/SwitcherLeverVertical;->startRotation(I)V

    goto :goto_0

    .line 4934
    .restart local v1    # "view":Landroid/view/View;
    :cond_9
    instance-of v2, v1, Lcom/lge/camera/components/SwitcherLeverHorizon;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 4935
    check-cast v2, Lcom/lge/camera/components/SwitcherLeverHorizon;

    invoke-virtual {v2, p2, p4}, Lcom/lge/camera/components/SwitcherLeverHorizon;->setDegree(IZ)V

    .line 4936
    check-cast v1, Lcom/lge/camera/components/SwitcherLeverHorizon;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/lge/camera/components/SwitcherLeverHorizon;->startRotation(I)V

    goto :goto_0
.end method

.method public setDegree(IIZ)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "degree"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 4897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lge/camera/Mediator;->setDegree(IIIZ)V

    .line 4898
    return-void
.end method

.method public setEffectCameraOrientationHint()V
    .locals 4

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCameraActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 1220
    .local v0, "orientationCompensation":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsCamera;->getOrientationHint()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1221
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientationCompensation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v1, v0}, Lcom/lge/camera/EffectsCamera;->setOrientationHint(I)V

    .line 1225
    .end local v0    # "orientationCompensation":I
    :cond_0
    return-void

    .line 1218
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public setEffectRecorderOrientationHint()V
    .locals 4

    .prologue
    .line 1200
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1203
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 1206
    .local v0, "orientationCompensation":I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->getOrientationHint()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1207
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientationCompensation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/lge/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1211
    .end local v0    # "orientationCompensation":I
    :cond_0
    return-void

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method public setEffectRecorderPausing(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 4389
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setEffectRecorderPausing(Z)V

    .line 4390
    return-void
.end method

.method public setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z
    .locals 1
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "lock"    # Z

    .prologue
    .line 4348
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    move-result v0

    return v0
.end method

.method public setEndTime(J)V
    .locals 0
    .param p1, "endTime"    # J

    .prologue
    .line 5707
    return-void
.end method

.method public setEngineProcessor()V
    .locals 1

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->setEngineProcessor()V

    .line 4105
    return-void
.end method

.method public setErrorOccuredAndFinish(Z)V
    .locals 0
    .param p1, "error"    # Z

    .prologue
    .line 1422
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mErrorOccuredAndFinish:Z

    .line 1423
    return-void
.end method

.method public setExitIgnoreDuringSaving(Z)V
    .locals 3
    .param p1, "isIgnore"    # Z

    .prologue
    .line 5005
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExitIgnoreDuringSaving :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5006
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->isEventIgnoreDuringSaving:Z

    .line 5007
    return-void
.end method

.method public setFaceBeutyShotParameter(I)V
    .locals 0
    .param p1, "mValue"    # I

    .prologue
    .line 5808
    return-void
.end method

.method public setFlashOffByHighTemperature(Z)V
    .locals 0
    .param p1, "setFlashOff"    # Z

    .prologue
    .line 5170
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsFlashOffByHighTemperature:Z

    .line 5171
    return-void
.end method

.method public setFocalLength(F)V
    .locals 0
    .param p1, "focalLength"    # F

    .prologue
    .line 5966
    return-void
.end method

.method public setFocusAreaWindow(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftMargin"    # I

    .prologue
    .line 4569
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/FocusController;->setFocusAreaWindow(III)V

    .line 4570
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_focus"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2485
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4593
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setFocusPosition(I)V

    .line 4594
    return-void
.end method

.method public setFocusRectangleInitialize()V
    .locals 1

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->setFocusRectangleInitialize()V

    .line 4526
    return-void
.end method

.method public setFocusState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 4537
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setFocusState(I)V

    .line 4538
    return-void
.end method

.method public setForced_audiozoom(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 5616
    return-void
.end method

.method public setFrontPreference(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .param p1, "pref"    # Lcom/lge/camera/setting/PreferenceGroup;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 686
    return-void
.end method

.method public setFullFrameContinuousShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "bufferNum"    # I

    .prologue
    .line 5885
    return-void
.end method

.method public setGalleryLaunching(Z)V
    .locals 1
    .param p1, "isLaunching"    # Z

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 2909
    return-void
.end method

.method public setGestureShotActivated(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 6041
    return-void
.end method

.method public setGoingAutoReviewForQuickView(Z)V
    .locals 3
    .param p1, "isGoing"    # Z

    .prologue
    .line 796
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGoingAutoReviewForQuickView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mGoingAutoQuickReview:Z

    .line 798
    return-void
.end method

.method public setHeadsetstate(I)V
    .locals 0
    .param p1, "nConnect"    # I

    .prologue
    .line 5625
    return-void
.end method

.method public setIAFlashStatus(Z)V
    .locals 3
    .param p1, "flashStatus"    # Z

    .prologue
    .line 2277
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    .line 2278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2279
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isIAFlashOn"

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsIAFlashOn:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2280
    const-string v1, "com.lge.camera.command.setting.SetSmartCameraFlashMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2281
    return-void
.end method

.method public setImageRotationDegree(I)V
    .locals 3
    .param p1, "degree"    # I

    .prologue
    .line 834
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageRotationDegree ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iput p1, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 836
    return-void
.end method

.method public setInCaptureProgress(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    .line 793
    return-void
.end method

.method public setIndicatorLayout(I)V
    .locals 1
    .param p1, "leftMargin"    # I

    .prologue
    .line 4518
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setIndicatorLayout(I)V

    .line 4519
    return-void
.end method

.method public setIsCharging(Z)V
    .locals 0
    .param p1, "bState"    # Z

    .prologue
    .line 716
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mCharging:Z

    .line 717
    return-void
.end method

.method public setIsFileSizeLimitReached(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 5721
    return-void
.end method

.method public setIsSendBroadcastIntent(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .prologue
    .line 1430
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsSendBroadcastIntent:Z

    .line 1431
    return-void
.end method

.method public setIsSwapCameraProcessing(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1892
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mIsSwapCameraProcessing:Z

    .line 1893
    return-void
.end method

.method public setKeepLastCameraMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1896
    const-string v4, "CameraApp"

    const-string v5, "setKeepLastCameraMode()-start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1898
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v4

    const-string v5, "Main_CameraAppConfig"

    invoke-virtual {v4, v5, v7}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1900
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/lge/camera/setting/Setting;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1901
    .local v0, "cameraModeOfCamera":I
    const-string v4, "mainCameraDimension"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1902
    .local v2, "mainCameraDimension":I
    const-string v4, "mainCameraDimension"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1904
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeepLastCameraMode CameraID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1907
    const-string v4, "CameraApp"

    const-string v5, "setKeepLastCameraMode SmartCoverClose! CameraID : 0"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    const/4 v0, 0x0

    .line 1911
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraMode(I)V

    .line 1912
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setCameraId(I)V

    .line 1913
    invoke-static {v3, v0}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1915
    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->setMainCameraDimension(I)V

    .line 1917
    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->isSecureCameraIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1918
    invoke-static {v8}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1926
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeepLastCameraMode()-end, cammode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    return-void

    .line 1919
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v8, v8}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1921
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    goto :goto_0

    .line 1923
    :cond_2
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setSecureCamera(Z)V

    .line 1924
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    goto :goto_0
.end method

.method public setKeepLastValue()V
    .locals 7

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1933
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "keepLastValue"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1935
    .local v2, "keepLastValue":Z
    const-string v5, "isFirst"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1955
    :cond_0
    return-void

    .line 1939
    :cond_1
    if-eqz v2, :cond_0

    .line 1940
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v4

    .line 1941
    .local v4, "pSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 1942
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mBackPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1943
    .local v3, "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_2

    .line 1944
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->keepLastValue()V

    .line 1941
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1947
    .end local v3    # "listPref":Lcom/lge/camera/setting/ListPreference;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v4

    .line 1948
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    .line 1949
    iget-object v5, p0, Lcom/lge/camera/Mediator;->mFrontPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1950
    .restart local v3    # "listPref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_4

    .line 1951
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->keepLastValue()V

    .line 1948
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setKeepScreenOn()V
    .locals 2

    .prologue
    .line 1473
    const-string v0, "CameraApp"

    const-string v1, "setKeepScreenOn"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v0, "com.lge.camera.command.ExitInteraction"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1476
    return-void
.end method

.method public setLanguageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mlanguage"    # Ljava/lang/String;

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/lge/camera/Mediator;->strLanguage:Ljava/lang/String;

    .line 2029
    return-void
.end method

.method public setLastPictureThumb([BLandroid/net/Uri;Z)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isPicture"    # Z

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/PreviewPanelController;->setLastPictureThumb([BLandroid/net/Uri;Z)V

    .line 2941
    return-void
.end method

.method public setLastThumb(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isPicture"    # Z

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setLastThumb(Landroid/net/Uri;Z)V

    .line 2868
    return-void
.end method

.method public setLimitationToLiveeffect(Z)V
    .locals 1
    .param p1, "beSet"    # Z

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setLimitationToLiveeffect(Z)V

    .line 3602
    return-void
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 1
    .param p1, "effect"    # Ljava/lang/String;

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setLiveEffect(Ljava/lang/String;)V

    .line 4179
    return-void
.end method

.method public setLiveeffectLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->setLiveeffectLimit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocationOn(Z)V
    .locals 1
    .param p1, "setting"    # Z

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/LocationInfo;->setLocationOn(Z)V

    .line 2347
    return-void
.end method

.method public setLockChangeConfiguration(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 498
    return-void
.end method

.method public setLockScreenPreventPreview(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4352
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setLockScreenPreventPreview(Z)V

    .line 4353
    return-void
.end method

.method public setMainBarAlpha(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 2820
    return-void
.end method

.method public setMainButtonDisable()V
    .locals 1

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 2792
    return-void
.end method

.method public setMainButtonEnable()V
    .locals 1

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 2784
    return-void
.end method

.method public setMainButtonEnable(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockKey"    # Ljava/lang/String;

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 2788
    return-void
.end method

.method public setMainButtonVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 2796
    return-void
.end method

.method public setMainCameraDimension(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1093
    iput p1, p0, Lcom/lge/camera/Mediator;->mMainCameraDimension:I

    .line 1094
    return-void
.end method

.method public setManualFocusValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3424
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ManualFocusController;->setManualFocusValue(I)V

    .line 3425
    return-void
.end method

.method public setMediaScanning(Z)V
    .locals 1
    .param p1, "scanning"    # Z

    .prologue
    .line 3884
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->setMediaScanning(Z)V

    .line 3885
    return-void
.end method

.method public setMediaUSBConnectAtStartRecord(Z)V
    .locals 0
    .param p1, "Connect"    # Z

    .prologue
    .line 5675
    return-void
.end method

.method public setMenuEnableForSceneMode(I)V
    .locals 4
    .param p1, "setting"    # I

    .prologue
    .line 5110
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 5111
    const/4 v0, 0x0

    .line 5112
    .local v0, "enable":Z
    const-string v2, "auto"

    const-string v3, "key_scene_mode"

    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5113
    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5114
    .local v1, "shotMode":Ljava/lang/String;
    const-string v2, "shotmode_hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_dual_camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5116
    const/4 v0, 0x1

    .line 5120
    .end local v1    # "shotMode":Ljava/lang/String;
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 5121
    const-string v2, "key_camera_whitebalance"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 5123
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 5124
    const-string v2, "key_camera_coloreffect"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 5126
    :cond_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    .line 5127
    const-string v2, "key_iso"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 5130
    .end local v0    # "enable":Z
    :cond_3
    return-void
.end method

.method public setMessageIndicatorReceived(IZ)V
    .locals 1
    .param p1, "msgReceived"    # I
    .param p2, "isReadAllMsg"    # Z

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(IZ)V

    .line 4499
    return-void
.end method

.method public setModeMenuVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 4510
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setModeMenuVisibility(I)V

    .line 4511
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1388
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediator setModule : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    invoke-virtual {v0, p1}, Lcom/lge/camera/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/lge/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 1390
    return-void
.end method

.method public setMultiWindowAFView([I)V
    .locals 1
    .param p1, "previewSizeOnScreen"    # [I

    .prologue
    .line 5023
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setMultiWindowAFView([I)V

    .line 5024
    return-void
.end method

.method public setNeedProgressDuringCapture(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 1410
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->isNeedProgressDuringCapture:Z

    .line 1411
    return-void
.end method

.method public setOpenLBSSetting(Z)V
    .locals 0
    .param p1, "setting"    # Z

    .prologue
    .line 1998
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mOpenLBSSetting:Z

    .line 1999
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/OrientationInfo;->setOrientation(I)V

    .line 1127
    :cond_0
    return-void
.end method

.method public setOrientationForced(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1162
    const-string v0, "CameraApp"

    const-string v1, "setOrientationForced"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    .line 1165
    const/4 p1, 0x1

    .line 1172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/OrientationInfo;->setOrientationForced(I)V

    .line 1175
    :cond_1
    return-void

    .line 1166
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1167
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setOrientationListener()V
    .locals 2

    .prologue
    .line 1155
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/OrientationInfo;->setOrientationListener()V

    .line 1159
    :cond_0
    return-void
.end method

.method public setOrientationListenerRotate(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isControllerInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1191
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "animation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1192
    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1196
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1194
    :cond_0
    const-string v1, "com.lge.camera.command.Rotate"

    invoke-virtual {p0, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPIPMask(I)Z
    .locals 2
    .param p1, "pipFrameSelectedMenu"    # I

    .prologue
    .line 3512
    const/4 v0, 0x0

    .line 3513
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3515
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/PIPController;->setPIPMask(I)Z

    move-result v0

    .line 3517
    :cond_0
    return v0
.end method

.method public setPIPRotate(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 3536
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3538
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PIPController;->setPIPRotate(I)V

    .line 3540
    :cond_0
    return-void
.end method

.method public setPanoramaEngine()V
    .locals 0

    .prologue
    .line 5896
    return-void
.end method

.method public setParameteredRotation(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 810
    iput p1, p0, Lcom/lge/camera/Mediator;->mParameteredRotation:I

    .line 811
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 4157
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4158
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 4159
    .local v0, "cameraDevice":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 4160
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4163
    .end local v0    # "cameraDevice":Landroid/hardware/Camera;
    :cond_0
    return-void
.end method

.method public setPausing(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1353
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    .line 1354
    return-void
.end method

.method public setPicturesRemaining(J)V
    .locals 1
    .param p1, "remain"    # J

    .prologue
    .line 4408
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->setPicturesRemaining(J)V

    .line 4409
    return-void
.end method

.method public setPreferenceMenuEnable(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "menu"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "onlySetIcon"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2134
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2170
    :cond_0
    :goto_0
    return-void

    .line 2139
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2141
    const-string v1, "key_camera_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_video_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2143
    :cond_2
    const/4 p2, 0x0

    .line 2148
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 2150
    .local v0, "menuIndex":I
    if-eqz p3, :cond_4

    .line 2151
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2152
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1, p1}, Lcom/lge/camera/controller/SettingController;->getSetting(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->setQuickFunctionControllerMenuIcon(II)V

    goto :goto_0

    .line 2157
    :cond_4
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2158
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/Mediator;->setQFLMenuEnabled(IZ)V

    .line 2160
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2161
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/Mediator;->setCurrentSettingMenuEnable(Ljava/lang/String;Z)V

    .line 2163
    :cond_6
    const-string v1, "key_flash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2164
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p2, p2}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    .line 2166
    :cond_7
    const-string v1, "key_light"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2167
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p2, p2}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    .line 2169
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->setQuickFunctionControllerAllMenuIcons()V

    goto :goto_0
.end method

.method public setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "menu"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2174
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2198
    :cond_0
    :goto_0
    return-void

    .line 2179
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2181
    const-string v1, "key_camera_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "key_video_auto_review"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2183
    :cond_2
    const/4 p2, 0x0

    .line 2188
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getQfIndex(Ljava/lang/String;)I

    move-result v0

    .line 2189
    .local v0, "menuIndex":I
    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->isQuickFunctionList(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2190
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/Mediator;->setQFLMenuEnabled(IZ)V

    .line 2192
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2193
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/Mediator;->setCurrentSettingMenuEnable(Ljava/lang/String;Z)V

    .line 2195
    :cond_5
    const-string v1, "key_flash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2196
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p2, p2}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    goto :goto_0
.end method

.method public setPrevResolutionWithStoredValue()V
    .locals 1

    .prologue
    .line 4282
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->setPrevResolutionWithStoredValue()V

    .line 4283
    return-void
.end method

.method public setPreviewEffectForBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 8
    .param p1, "lgParameters"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "isRendered"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1256
    const-string v4, "CameraApp"

    const-string v5, "setPreviewEffectForBeautyShotMode - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v3

    .line 1259
    .local v3, "sPreview":Lcom/lge/camera/components/CameraPreview;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1260
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1262
    if-eqz p2, :cond_1

    .line 1263
    const-string v4, "CameraApp"

    const-string v5, "setPreviewEffectForBeautyShotMode - shot mode is beautyshot"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1267
    .local v1, "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1269
    .local v2, "gPreviewExtra":Landroid/view/SurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1270
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1271
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1272
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1273
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1275
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    .end local v1    # "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2    # "gPreviewExtra":Landroid/view/SurfaceView;
    .end local v3    # "sPreview":Lcom/lge/camera/components/CameraPreview;
    :cond_0
    :goto_0
    const-string v4, "CameraApp"

    const-string v5, "setPreviewEffectForBeautyShotMode - end"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void

    .line 1277
    .restart local v3    # "sPreview":Lcom/lge/camera/components/CameraPreview;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreviewExtra()Landroid/view/SurfaceView;

    move-result-object v2

    .line 1279
    .restart local v2    # "gPreviewExtra":Landroid/view/SurfaceView;
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v1

    .line 1281
    .restart local v1    # "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1282
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1283
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1284
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1285
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1286
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1288
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1290
    .end local v1    # "gPreview":Lcom/lge/camera/components/OpenGLSurfaceView;
    .end local v2    # "gPreviewExtra":Landroid/view/SurfaceView;
    .end local v3    # "sPreview":Lcom/lge/camera/components/CameraPreview;
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1292
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v4, :cond_0

    .line 1293
    iget-object v4, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v4, v7, v6}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto :goto_0
.end method

.method public setPreviewRendered(Z)V
    .locals 3
    .param p1, "render"    # Z

    .prologue
    .line 4360
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewRendered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setRendered(Z)V

    .line 4362
    return-void
.end method

.method public setPreviewVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 4340
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->getCameraPreview()Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 4341
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 4074
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 4075
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setPreviewing(Z)V

    .line 4077
    :cond_0
    return-void
.end method

.method public abstract setPreviousAutoReviewValue()V
.end method

.method public setPreviousPictureSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 5829
    return-void
.end method

.method public setPreviousRecordModeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "strRecordMode"    # Ljava/lang/String;

    .prologue
    .line 5836
    return-void
.end method

.method public setPreviousResolution(Ljava/lang/String;)V
    .locals 1
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->setPreviousResolution(Ljava/lang/String;)V

    .line 4275
    return-void
.end method

.method public setPreviousShotModeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "strShotMode"    # Ljava/lang/String;

    .prologue
    .line 5822
    return-void
.end method

.method public setQFLMenuEnabled(IZ)V
    .locals 1
    .param p1, "menuIndex"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 3456
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuEnabled(IZ)V

    .line 3457
    return-void
.end method

.method public setQFLMenuSelected(IZ)V
    .locals 1
    .param p1, "menuIndex"    # I
    .param p2, "selected"    # Z

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuSelected(IZ)V

    .line 3461
    return-void
.end method

.method public setQuickButtonForcedDisable(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickButtonController;->setQuickButtonForcedDisable(Z)V

    .line 2601
    return-void
.end method

.method public setQuickButtonMenuEnable(IZZ)V
    .locals 1
    .param p1, "buttonType"    # I
    .param p2, "enable"    # Z
    .param p3, "dimByEnable"    # Z

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->setMenuEnable(IZZ)V

    .line 2597
    return-void
.end method

.method public setQuickButtonMenuEnable(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "dimByEnable"    # Z

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickButtonController;->setAllMenuEnable(ZZ)V

    .line 2593
    return-void
.end method

.method public setQuickButtonMode(Z)V
    .locals 12
    .param p1, "isIAon"    # Z

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x6

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2229
    const/4 v4, 0x1

    .line 2230
    .local v4, "needModeButton":Z
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "not found"

    const-string v8, "key_camera_shot_mode"

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-ne v7, v5, :cond_2

    const-string v7, "not found"

    const-string v8, "key_video_record_mode"

    invoke-virtual {p0, v8}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2234
    :cond_1
    const/4 v4, 0x0

    .line 2236
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v7

    if-nez v7, :cond_4

    move v0, v5

    .line 2239
    .local v0, "addFlash":Z
    :goto_0
    invoke-direct {p0, v4, p1, v0}, Lcom/lge/camera/Mediator;->getButtonDefine(ZZZ)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 2241
    .local v2, "buttonDefine":Landroid/util/SparseIntArray;
    if-eqz v2, :cond_a

    .line 2242
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v7, 0xc

    if-ge v3, v7, :cond_9

    .line 2243
    invoke-virtual {v2, v3, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2244
    .local v1, "butLoc":I
    if-le v1, v9, :cond_8

    .line 2245
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7, v3, v1}, Lcom/lge/camera/Mediator;->addQuickButton(Landroid/content/Context;II)V

    .line 2246
    if-eqz p1, :cond_7

    .line 2247
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    if-ne v7, v10, :cond_6

    .line 2249
    if-ne v3, v11, :cond_5

    .line 2250
    invoke-virtual {p0, v3, v6, v5}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    .line 2263
    :cond_3
    :goto_2
    invoke-virtual {p0, v3, v6, v6}, Lcom/lge/camera/Mediator;->setQuickButtonVisible(IIZ)V

    .line 2242
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "addFlash":Z
    .end local v1    # "butLoc":I
    .end local v2    # "buttonDefine":Landroid/util/SparseIntArray;
    .end local v3    # "i":I
    :cond_4
    move v0, v6

    .line 2236
    goto :goto_0

    .line 2252
    .restart local v0    # "addFlash":Z
    .restart local v1    # "butLoc":I
    .restart local v2    # "buttonDefine":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    :cond_5
    invoke-virtual {p0, v3, v5, v5}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    goto :goto_2

    .line 2255
    :cond_6
    invoke-virtual {p0, v3, v5, v5}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    goto :goto_2

    .line 2258
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v7

    if-ne v7, v10, :cond_3

    if-ne v3, v11, :cond_3

    .line 2261
    invoke-virtual {p0, v3, v5, v5}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZZ)V

    goto :goto_2

    .line 2265
    :cond_8
    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->removeQuickButton(I)V

    goto :goto_3

    .line 2268
    .end local v1    # "butLoc":I
    :cond_9
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2270
    .end local v3    # "i":I
    :cond_a
    return-void
.end method

.method public setQuickButtonVisible(IIZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "visible"    # I
    .param p3, "animation"    # Z

    .prologue
    .line 2580
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickButtonController:Lcom/lge/camera/controller/QuickButtonController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/QuickButtonController;->setVisible(IIZ)V

    .line 2581
    return-void
.end method

.method public setQuickFunctionAllMenuEnabled(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "dimByEnable"    # Z

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 3449
    return-void
.end method

.method public setQuickFunctionControllerAllMenuIcons()V
    .locals 1

    .prologue
    .line 3496
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 3497
    return-void
.end method

.method public setQuickFunctionControllerMenu(I)V
    .locals 1
    .param p1, "menuIndex"    # I

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setMenu(I)V

    .line 3574
    return-void
.end method

.method public setQuickFunctionControllerMenuIcon(II)V
    .locals 1
    .param p1, "menuIndex"    # I
    .param p2, "iconIndex"    # I

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    .line 3570
    return-void
.end method

.method public setQuickFunctionControllerMmsLimit()V
    .locals 1

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit()V

    .line 3578
    return-void
.end method

.method public setQuickFunctionControllerMmsLimit(Z)V
    .locals 1
    .param p1, "mmsVideo"    # Z

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setMmsLimit(Z)V

    .line 3582
    return-void
.end method

.method public setQuickFunctionControllerVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3589
    if-eqz p1, :cond_0

    .line 3590
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflShow()V

    .line 3594
    :goto_0
    return-void

    .line 3592
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->qflHide()V

    goto :goto_0
.end method

.method public setQuickFunctionDragControllerSelectIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionDragController;->setSelectIndex(I)V

    .line 3641
    return-void
.end method

.method public setQuickFunctionMenuForcedDisable(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 3613
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->setQuickFunctionMenuForcedDisable(Z)V

    .line 3614
    return-void
.end method

.method public setRecIndicatorLayout(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftMargin"    # I

    .prologue
    .line 5765
    return-void
.end method

.method public setRecordLocation(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/LocationInfo;->setRecordLocation(Z)V

    .line 2339
    return-void
.end method

.method public setRecordingTime_realduration(J)V
    .locals 0
    .param p1, "duration"    # J

    .prologue
    .line 5947
    return-void
.end method

.method public setRefocusShotHasPictures(Z)V
    .locals 0
    .param p1, "has"    # Z

    .prologue
    .line 5870
    return-void
.end method

.method public setRefocusShotPreviewGuideVisibility(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 5943
    return-void
.end method

.method public setRemoveFreePanoramaBlackBg(Z)V
    .locals 0
    .param p1, "remove"    # Z

    .prologue
    .line 5530
    return-void
.end method

.method protected setResultAndFinish(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 5203
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/CameraActivity;->setResult(I)V

    .line 5204
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 5205
    return-void
.end method

.method protected setResultAndFinish(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5198
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 5199
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 5200
    return-void
.end method

.method public setResultCancelForAttachMode()V
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    .line 475
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 476
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 478
    :cond_0
    return-void
.end method

.method public setRotateBatteryIndicatorwithHint(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1345
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mRotateBatteryIndicatorwithHint:Z

    .line 1346
    return-void
.end method

.method public setSavedFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 852
    return-void
.end method

.method public setSavedImageUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 844
    return-void
.end method

.method public setScaleWidthHeight(F)V
    .locals 0
    .param p1, "ScaleWidthHeight"    # F

    .prologue
    .line 5658
    return-void
.end method

.method public setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "sceneMode"    # Ljava/lang/String;

    .prologue
    .line 5950
    return-void
.end method

.method public setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "saveSetting"    # Z

    .prologue
    .line 3949
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3950
    return-void
.end method

.method public setSelectedChild(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(I)Z

    move-result v0

    return v0
.end method

.method public setSelectedChild(II)Z
    .locals 1
    .param p1, "menuIndex"    # I
    .param p2, "index"    # I

    .prologue
    .line 3953
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(II)Z

    move-result v0

    return v0
.end method

.method public setSetting(II)Z
    .locals 1
    .param p1, "settingIndex"    # I
    .param p2, "settingValue"    # I

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(II)Z

    move-result v0

    return v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "needSave"    # Z

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/SettingController;->setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setSettingControllerMmsLimit(Z)V
    .locals 1
    .param p1, "mmsVideo"    # Z

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->setMmsLimit(Z)V

    .line 3900
    return-void
.end method

.method public setSettingForDualCamera(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->setSettingForDualCamera(Z)V

    .line 2468
    return-void
.end method

.method public setSettingParameter(II)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/SettingController;->setSetting(II)Z

    .line 2489
    return-void
.end method

.method public setShowCameraErrorPopup(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 2286
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->bShowCameraErrorPopup:Z

    .line 2287
    return-void
.end method

.method public setShutterButtonClicked(Z)V
    .locals 1
    .param p1, "clicked"    # Z

    .prologue
    .line 4553
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->setShutterButtonClicked(Z)V

    .line 4554
    return-void
.end method

.method public setShutterButtonImage(ZI)V
    .locals 1
    .param p1, "buttonEnable"    # Z
    .param p2, "degree"    # I

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 2816
    return-void
.end method

.method public setShutterFocusLongKey(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterFocusLongKey(Z)V

    .line 2848
    return-void
.end method

.method public setSlimPortDegree(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOrientationInfo:Lcom/lge/camera/OrientationInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/OrientationInfo;->setSlimPortDegree(I)V

    .line 1181
    :cond_0
    return-void
.end method

.method public setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 0
    .param p1, "lgParams"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "enable"    # Z

    .prologue
    .line 5956
    return-void
.end method

.method public setSmartModeForPictureSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "PictureSize"    # Ljava/lang/String;

    .prologue
    .line 5969
    return-void
.end method

.method public setSmartZoomFocusViewPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4240
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->setSmartZoomFocusViewPosition(II)V

    .line 4241
    return-void
.end method

.method public setStartrecordingdegree(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 5593
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 712
    iput p1, p0, Lcom/lge/camera/Mediator;->mStatus:I

    .line 713
    return-void
.end method

.method public setStorageInitForFileNamingHelper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->setStorageInitForFileNamingHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setSubButton(II)V
    .locals 1
    .param p1, "loc"    # I
    .param p2, "resId"    # I

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 2905
    return-void
.end method

.method public setSubCameraModeRunning(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 1311
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mSetCameraMode:Z

    .line 1312
    return-void
.end method

.method public setSubMenuMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1303
    iput p1, p0, Lcom/lge/camera/Mediator;->mSubMenuMode:I

    .line 1304
    return-void
.end method

.method public setSwitcherVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 2852
    return-void
.end method

.method public setSwithcerEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 3066
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwithcerEnable(Z)V

    .line 3068
    :cond_0
    return-void
.end method

.method public setThumbnailButtonVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 2876
    return-void
.end method

.method public setTimeMachineComplete(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 2924
    iput-boolean p1, p0, Lcom/lge/camera/Mediator;->mSetTimeMachineComplete:Z

    .line 2925
    return-void
.end method

.method public setTimeMachineLimit(Z)V
    .locals 1
    .param p1, "set"    # Z

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V

    .line 2481
    return-void
.end method

.method public setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl_buffer"    # I

    .prologue
    .line 5839
    return-void
.end method

.method public setTimemachineHasPictures(Z)V
    .locals 0
    .param p1, "has"    # Z

    .prologue
    .line 5846
    return-void
.end method

.method public setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "timer"    # Z
    .param p3, "scene"    # Z
    .param p4, "enable"    # Z

    .prologue
    .line 5893
    return-void
.end method

.method public setTimerSetting(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 5453
    return-void
.end method

.method public setTimerShotCountdown(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 5450
    return-void
.end method

.method public setVideoFlash(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 6016
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1361
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set video state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iput p1, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 1363
    const-string v0, "com.lge.camera.command.UpdateCaptureButton"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1364
    const-string v0, "com.lge.camera.command.UpdateRecIndicator"

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    .line 1365
    return-void
.end method

.method public setVideoStateOnly(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1368
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set video state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iput p1, p0, Lcom/lge/camera/Mediator;->mVideoState:I

    .line 1370
    return-void
.end method

.method public setVisible(IZ)Z
    .locals 5
    .param p1, "resId"    # I
    .param p2, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 508
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 510
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 511
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 511
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 513
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View not found in setVisible resId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVoiceMailIndicator(I)V
    .locals 1
    .param p1, "msgReceived"    # I

    .prologue
    .line 4502
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 4503
    return-void
.end method

.method public setZoomMaxValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->setZoomMaxValue(F)V

    .line 3325
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 3328
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->setZoomRatio(F)V

    .line 3329
    return-void
.end method

.method public show3dDepthController(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->showControl(Z)V

    .line 3273
    return-void
.end method

.method public showBeautyShotBarForNewUx(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3381
    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_front_beauty"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_camera_shot_mode"

    const-string v1, "shotmode_main_beauty"

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->showBeautyshotController(Z)V

    .line 3387
    :cond_1
    return-void
.end method

.method public showBeautyshotController(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3251
    new-instance v0, Lcom/lge/camera/Mediator$7;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$7;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3260
    return-void
.end method

.method public showBrightnessController(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3242
    new-instance v0, Lcom/lge/camera/Mediator$6;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$6;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3248
    return-void
.end method

.method public showBubblePopupVisibility(IJZ)V
    .locals 0
    .param p1, "popupType"    # I
    .param p2, "duration"    # J
    .param p4, "show"    # Z

    .prologue
    .line 5854
    return-void
.end method

.method public showCameraErrorAndFinish()V
    .locals 2

    .prologue
    .line 3776
    const-string v0, "CameraApp"

    const-string v1, "Error!!! showCameraErrorAndFinish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 3778
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setErrorOccuredAndFinish(Z)V

    .line 3779
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    .line 3780
    return-void
.end method

.method public showCameraStoppedAndFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3783
    const-string v0, "CameraApp"

    const-string v1, "Error!!! showCameraStoppedAndFinish"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3784
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->resetScreenTimeout()V

    .line 3785
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->setErrorOccuredAndFinish(Z)V

    .line 3786
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3787
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3788
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3790
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0a022f

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    .line 3792
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x31

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090019

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 3795
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3796
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraActivity;->finish()V

    .line 3801
    :goto_0
    return-void

    .line 3798
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    goto :goto_0
.end method

.method public showChildCustomView(Z)V
    .locals 3
    .param p1, "useAnim"    # Z

    .prologue
    .line 3340
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp showChildCustomView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->showSettingZoomControl(Z)V

    .line 3342
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BrightnessController;->showSettingBrightnessControl(Z)V

    .line 3343
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BeautyshotController;->showSettingBeautyShotControl(Z)V

    .line 3344
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->showSetting3dDepthControl(Z)V

    .line 3347
    :cond_0
    return-void
.end method

.method public abstract showControllerForHideSettingMenu(ZZ)V
.end method

.method public showDefaultQuickButton(Z)V
    .locals 12
    .param p1, "show"    # Z

    .prologue
    const/4 v11, 0x7

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2628
    if-eqz p1, :cond_b

    .line 2629
    const/4 v5, 0x1

    .line 2630
    .local v5, "needModeButton":Z
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "not found"

    const-string v9, "key_camera_shot_mode"

    invoke-virtual {p0, v9}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    if-ne v8, v6, :cond_2

    const-string v8, "not found"

    const-string v9, "key_video_record_mode"

    invoke-virtual {p0, v9}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2636
    :cond_1
    const/4 v5, 0x0

    .line 2638
    :cond_2
    const-string v8, "on"

    const-string v9, "key_smart_mode"

    invoke-virtual {p0, v9}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2639
    .local v4, "isIAon":Z
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v8

    if-nez v8, :cond_4

    move v0, v6

    .line 2642
    .local v0, "addFlash":Z
    :goto_0
    invoke-direct {p0, v5, v4, v0}, Lcom/lge/camera/Mediator;->getButtonDefine(ZZZ)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 2644
    .local v2, "buttonDefine":Landroid/util/SparseIntArray;
    if-eqz v2, :cond_a

    .line 2645
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v8, 0xc

    if-ge v3, v8, :cond_6

    .line 2646
    invoke-virtual {v2, v3, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2647
    .local v1, "butLoc":I
    if-le v1, v10, :cond_5

    .line 2648
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v8, v3, v1}, Lcom/lge/camera/Mediator;->addQuickButton(Landroid/content/Context;II)V

    .line 2649
    if-eqz v0, :cond_3

    const/16 v8, 0xa

    if-ne v3, v8, :cond_3

    .line 2650
    const-string v8, "key_flash"

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFlashEnableForShotMode()Z

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/lge/camera/Mediator;->setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V

    .line 2645
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "addFlash":Z
    .end local v1    # "butLoc":I
    .end local v2    # "buttonDefine":Landroid/util/SparseIntArray;
    .end local v3    # "i":I
    :cond_4
    move v0, v7

    .line 2639
    goto :goto_0

    .line 2654
    .restart local v0    # "addFlash":Z
    .restart local v1    # "butLoc":I
    .restart local v2    # "buttonDefine":Landroid/util/SparseIntArray;
    .restart local v3    # "i":I
    :cond_5
    invoke-virtual {p0, v3}, Lcom/lge/camera/Mediator;->removeQuickButton(I)V

    goto :goto_2

    .line 2657
    .end local v1    # "butLoc":I
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2659
    :cond_8
    invoke-virtual {p0, v11, v7, v6}, Lcom/lge/camera/Mediator;->setQuickButtonMenuEnable(IZZ)V

    .line 2660
    invoke-virtual {p0, v11, v7}, Lcom/lge/camera/Mediator;->setButtonRemainEnabled(IZ)V

    .line 2662
    :cond_9
    const/16 v6, 0x64

    invoke-virtual {p0, v6, v7, v7}, Lcom/lge/camera/Mediator;->setQuickButtonVisible(IIZ)V

    .line 2663
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2668
    .end local v0    # "addFlash":Z
    .end local v2    # "buttonDefine":Landroid/util/SparseIntArray;
    .end local v3    # "i":I
    .end local v4    # "isIAon":Z
    .end local v5    # "needModeButton":Z
    :cond_a
    :goto_3
    return-void

    .line 2666
    :cond_b
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->removeQuickButtonAll()V

    goto :goto_3
.end method

.method public showDialogPopup(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 3751
    new-instance v0, Lcom/lge/camera/Mediator$9;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$9;-><init>(Lcom/lge/camera/Mediator;I)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3757
    return-void
.end method

.method public showFocus()Z
    .locals 1

    .prologue
    .line 4609
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v0

    return v0
.end method

.method public showFocus(Z)Z
    .locals 1
    .param p1, "justDoIt"    # Z

    .prologue
    .line 4613
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/FocusController;->showFocus(Z)Z

    move-result v0

    return v0
.end method

.method public showFreePanoramaBlackBg()V
    .locals 0

    .prologue
    .line 5488
    return-void
.end method

.method public showFreePanoramaView()V
    .locals 0

    .prologue
    .line 5494
    return-void
.end method

.method public showGalleryQuickViewWindow(ZJ)Z
    .locals 2
    .param p1, "useLongKey"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 3052
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewWindow(ZJ)Z

    move-result v0

    .line 3054
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showGestureGuide()V
    .locals 0

    .prologue
    .line 6028
    return-void
.end method

.method public showHeatingwarning()V
    .locals 0

    .prologue
    .line 5908
    return-void
.end method

.method public showHelpGuidePopup(Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "shotModeHelp"    # Ljava/lang/String;
    .param p2, "dialogId"    # I
    .param p3, "useCheckBox"    # Z

    .prologue
    .line 3813
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3814
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/DialogController;->showHelpGuidePopup(Ljava/lang/String;IZ)Z

    move-result v0

    .line 3817
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showIndicatorController()V
    .locals 1

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->showIndicator()V

    .line 4413
    return-void
.end method

.method public showManualFocusController(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3263
    new-instance v0, Lcom/lge/camera/Mediator$8;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$8;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3269
    return-void
.end method

.method public showOptionMenu(I)V
    .locals 1
    .param p1, "menuType"    # I

    .prologue
    .line 4733
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    if-eqz v0, :cond_0

    .line 4734
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mOptionMenuController:Lcom/lge/camera/controller/OptionMenuController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/OptionMenuController;->showOptionMenu(I)V

    .line 4736
    :cond_0
    return-void
.end method

.method public abstract showOsd()V
.end method

.method public showPanoramaView()V
    .locals 0

    .prologue
    .line 5460
    return-void
.end method

.method public showPopupAnimation(I)V
    .locals 5
    .param p1, "ViewId"    # I

    .prologue
    .line 2002
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 2003
    .local v0, "rl":Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 2004
    return-void
.end method

.method public showPreview()V
    .locals 1

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 4345
    return-void
.end method

.method public showPreviewPanelController()V
    .locals 2

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    if-eqz v0, :cond_0

    .line 2957
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setPreviewPanelVisibility(Z)V

    .line 2959
    :cond_0
    return-void
.end method

.method public showPreviewPanelLiveSnapShotButton()V
    .locals 1

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->showLiveSnapshotButton()V

    .line 2933
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 3821
    const-string v0, "CameraApp"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3823
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->showProgressDialog()V

    .line 3825
    :cond_0
    return-void
.end method

.method public showQuickFunctionController()V
    .locals 1

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 3473
    return-void
.end method

.method public showQuickFunctionDragController()V
    .locals 1

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionDragController:Lcom/lge/camera/controller/QuickFunctionDragController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionDragController;->show()V

    .line 3633
    return-void
.end method

.method public showQuickMenuEnteringGuide(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 2212
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    :cond_0
    :goto_0
    return-void

    .line 2215
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportHelpSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    invoke-static {}, Lcom/lge/camera/controller/EnteringViewController;->get()Lcom/lge/camera/controller/EnteringViewController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/lge/camera/controller/EnteringViewController;->showQuickMenuEnteringGuide(Landroid/app/Activity;Lcom/lge/camera/controller/QuickFunctionController;ZI)V

    goto :goto_0
.end method

.method public showRecoridngStopButton()V
    .locals 0

    .prologue
    .line 5755
    return-void
.end method

.method public showRequestedSizeLimit()V
    .locals 0

    .prologue
    .line 5575
    return-void
.end method

.method public showSavingProgressDialog()V
    .locals 2

    .prologue
    .line 3835
    const-string v0, "CameraApp"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3836
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 3837
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->showSavingProgressDialog()V

    .line 3839
    :cond_0
    return-void
.end method

.method public showSetting3dDepthControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/Camera3dDepthController;->showSetting3dDepthControl(Z)V

    .line 3230
    return-void
.end method

.method public showSettingBeautyShotControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BeautyshotController;->showSettingBeautyShotControl(Z)V

    .line 3222
    return-void
.end method

.method public showSettingBrightnessControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/BrightnessController;->showSettingBrightnessControl(Z)V

    .line 3218
    return-void
.end method

.method public showSettingZoomControl(Z)V
    .locals 1
    .param p1, "useAnim"    # Z

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ZoomController;->showSettingZoomControl(Z)V

    .line 3226
    return-void
.end method

.method public showShotModeMenu()V
    .locals 1

    .prologue
    .line 4760
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mShotModeMenuController:Lcom/lge/camera/controller/ShotModeMenuController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ShotModeMenuController;->show()V

    .line 4761
    return-void
.end method

.method public showSmartZoomFocusView()V
    .locals 1

    .prologue
    .line 4232
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->showSmartZoomFocusView()V

    .line 4233
    return-void
.end method

.method public showStorageHint(I)V
    .locals 1
    .param p1, "storageState"    # I

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/StorageController;->showStorageHint(I)V

    .line 2550
    return-void
.end method

.method public showSubButtonInit(Z)V
    .locals 1
    .param p1, "updateThumb"    # Z

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 2901
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4205
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->showSubWindowResizeHandler(FF)V

    .line 4206
    return-void
.end method

.method public showZoomController(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 3233
    new-instance v0, Lcom/lge/camera/Mediator$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/Mediator$5;-><init>(Lcom/lge/camera/Mediator;Z)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3239
    return-void
.end method

.method public smartShutterEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 5882
    return-void
.end method

.method public snapshotOnContinuousFocus()Z
    .locals 1

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->snapshotOnContinuousFocus()Z

    move-result v0

    return v0
.end method

.method public snapshotOnIdle()Z
    .locals 1

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->snapshotOnIdle()Z

    move-result v0

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 423
    return-void
.end method

.method public startAudioZoomContollerRotation(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 5651
    return-void
.end method

.method public startAudiozoom()V
    .locals 0

    .prologue
    .line 5610
    return-void
.end method

.method public startFaceDetection(Z)V
    .locals 0
    .param p1, "bHasUI"    # Z

    .prologue
    .line 5778
    return-void
.end method

.method public startFaceDetectionFromHal(Z)V
    .locals 0
    .param p1, "bHasUI"    # Z

    .prologue
    .line 5999
    return-void
.end method

.method public startFocusByTouchPress(IIZ)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bTouchedAFbyFaceTr"    # Z

    .prologue
    .line 4597
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/FocusController;->startFocusByTouchPress(IIZ)V

    .line 4598
    return-void
.end method

.method public startFreePanorama()V
    .locals 0

    .prologue
    .line 5500
    return-void
.end method

.method public startFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 5506
    return-void
.end method

.method public startFreePanoramaRotation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 5533
    return-void
.end method

.method public startGestureEngine()V
    .locals 0

    .prologue
    .line 6044
    return-void
.end method

.method public startHeatingwarning()V
    .locals 0

    .prologue
    .line 5902
    return-void
.end method

.method public startLiveEffectDrawerSubMenuRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 3504
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startLiveEffectDrawerSubMenuRotation(I)V

    .line 3505
    return-void
.end method

.method public startObjectTrackingFocus(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "state"    # I

    .prologue
    .line 4642
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocus(IIIII)V

    .line 4643
    return-void
.end method

.method public startObjectTrackingFocusForSmartZoom(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "state"    # I

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocusForSmartZoom(IIIII)V

    .line 4647
    return-void
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 3508
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startPIPFrameSubMenuRotation(I)V

    .line 3509
    return-void
.end method

.method public startPanorama()V
    .locals 0

    .prologue
    .line 5466
    return-void
.end method

.method public startPlanePanorama()V
    .locals 0

    .prologue
    .line 5536
    return-void
.end method

.method public startPlanePanoramaEngine()V
    .locals 0

    .prologue
    .line 5542
    return-void
.end method

.method public startPlanePanoramaRotation(IZ)V
    .locals 0
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 5555
    return-void
.end method

.method public startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
    .locals 2
    .param p1, "lsParameter"    # Lcom/lge/hardware/LGCamera$LGParameters;
    .param p2, "useCallback"    # Z

    .prologue
    .line 4022
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 4023
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 4027
    :goto_0
    return-void

    .line 4025
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPreviewEffect()V
    .locals 2

    .prologue
    .line 4046
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 4047
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    .line 4051
    :goto_0
    return-void

    .line 4049
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startReceivingLocationUpdates()V
    .locals 2

    .prologue
    .line 2306
    const-string v0, "CameraApp"

    const-string v1, "startReceivingLocationUpdates()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->startReceivingLocationUpdates()V

    .line 2310
    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 0

    .prologue
    .line 5682
    return-void
.end method

.method public startRecordingControllerRotation(I)V
    .locals 0
    .param p1, "degree"    # I

    .prologue
    .line 5648
    return-void
.end method

.method public startRecordingEffect()V
    .locals 1

    .prologue
    .line 4290
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->startRecordingEffect()V

    .line 4291
    return-void
.end method

.method public startSubMenuRotation(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 3500
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/QuickFunctionController;->startSubMenuRotation(I)V

    .line 3501
    return-void
.end method

.method public startTimerShot()V
    .locals 0

    .prologue
    .line 5815
    return-void
.end method

.method public stopAudiozoom()V
    .locals 0

    .prologue
    .line 5632
    return-void
.end method

.method public stopBurstShotSound()V
    .locals 2

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3715
    const-string v0, "CameraApp"

    const-string v1, "stopBurstShotSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3716
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopSoundBurstShot()V

    .line 3718
    :cond_0
    return-void
.end method

.method public stopByUserAction()Z
    .locals 1

    .prologue
    .line 5578
    const/4 v0, 0x0

    return v0
.end method

.method public stopClearShotSound()V
    .locals 1

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopClearShotSound()V

    .line 3730
    :cond_0
    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .prologue
    .line 5781
    return-void
.end method

.method public stopFaceDetectionFromHal()V
    .locals 0

    .prologue
    .line 6002
    return-void
.end method

.method public stopFreePanorama()V
    .locals 0

    .prologue
    .line 5503
    return-void
.end method

.method public stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 5509
    return-void
.end method

.method public stopGestureEngine()V
    .locals 0

    .prologue
    .line 6047
    return-void
.end method

.method public stopHeatingwarning()V
    .locals 0

    .prologue
    .line 5905
    return-void
.end method

.method public stopPanorama()V
    .locals 0

    .prologue
    .line 5481
    return-void
.end method

.method public stopPlanePanorama()V
    .locals 0

    .prologue
    .line 5539
    return-void
.end method

.method public stopPlanePanoramaEngine()V
    .locals 0

    .prologue
    .line 5545
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-eqz v0, :cond_0

    .line 4031
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 4035
    :goto_0
    return-void

    .line 4033
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mPreviewController is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopReceivingLocationUpdates()V
    .locals 2

    .prologue
    .line 2313
    const-string v0, "CameraApp"

    const-string v1, "stopReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    if-eqz v0, :cond_0

    .line 2315
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mLocationInfo:Lcom/lge/camera/LocationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/LocationInfo;->stopReceivingLocationUpdates()V

    .line 2317
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 0

    .prologue
    .line 5685
    return-void
.end method

.method public stopRecording(Z)V
    .locals 0
    .param p1, "isFromMountedAction"    # Z

    .prologue
    .line 5688
    return-void
.end method

.method public stopRecordingByPausing()V
    .locals 0

    .prologue
    .line 5697
    return-void
.end method

.method public stopRecordingEffect()V
    .locals 1

    .prologue
    .line 4294
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->stopRecordingEffect()V

    .line 4295
    return-void
.end method

.method public stopSoundContinuous()V
    .locals 1

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3709
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopSoundContinuous()V

    .line 3711
    :cond_0
    return-void
.end method

.method public stopTimerShot()Z
    .locals 1

    .prologue
    .line 5456
    const/4 v0, 0x1

    return v0
.end method

.method public stopVoiceCommandSound()V
    .locals 1

    .prologue
    .line 3654
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    if-eqz v0, :cond_0

    .line 3655
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSoundController:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->stopVoiceCommandSound()V

    .line 3657
    :cond_0
    return-void
.end method

.method public storageToastShow(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "immediately"    # Z
    .param p3, "shortToast"    # Z

    .prologue
    .line 4708
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/ToastController;->storageToastShow(Ljava/lang/String;ZZ)V

    .line 4709
    return-void
.end method

.method public storageToasthide(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .prologue
    .line 4712
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V

    .line 4713
    return-void
.end method

.method public storePreviousResolution(Ljava/lang/String;)V
    .locals 1
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    .line 4278
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->storePreviousResolution(Ljava/lang/String;)V

    .line 4279
    return-void
.end method

.method public swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V
    .locals 1
    .param p1, "engine"    # Lcom/lge/olaworks/library/BaseEngine;

    .prologue
    .line 4142
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PreviewController;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 4143
    return-void
.end method

.method public abstract switchCameraId(I)V
.end method

.method public toast(I)V
    .locals 1
    .param p1, "resource"    # I

    .prologue
    .line 4676
    invoke-virtual {p0, p1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 4677
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1
    .param p1, "strString"    # Ljava/lang/String;

    .prologue
    .line 4680
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    .line 4681
    return-void
.end method

.method public toast(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "immediately"    # Z

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;Z)V

    .line 4689
    return-void
.end method

.method public toastConstant(Ljava/lang/String;)V
    .locals 2
    .param p1, "strString"    # Ljava/lang/String;

    .prologue
    .line 4684
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;Z)V

    .line 4685
    return-void
.end method

.method public toastControllerHide(Z)V
    .locals 1
    .param p1, "immediately"    # Z

    .prologue
    .line 4700
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 4701
    return-void
.end method

.method public toastLong(Ljava/lang/String;)V
    .locals 1
    .param p1, "strString"    # Ljava/lang/String;

    .prologue
    .line 4696
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/ToastController;->showLongToast(Ljava/lang/String;)V

    .line 4697
    return-void
.end method

.method public toastMiddleLong(Ljava/lang/String;)V
    .locals 4
    .param p1, "strString"    # Ljava/lang/String;

    .prologue
    .line 4692
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mToastController:Lcom/lge/camera/controller/ToastController;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p1, v2, v3}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    .line 4693
    return-void
.end method

.method public toggleClearView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 957
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickFunctionController;->isSliding()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->isSliding()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getQuickButtonController()Lcom/lge/camera/controller/QuickButtonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickButtonController;->isSliding()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 964
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "return toggleClearView because on sliding"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "toggleClearView"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 970
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isContinuousShotAlived()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->isPanoramaStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mInCaptureProgress:Z

    if-nez v2, :cond_0

    .line 982
    :cond_4
    iget-boolean v2, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    if-eqz v2, :cond_6

    .line 983
    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->clearViewOff(Z)V

    .line 988
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getActivity()Lcom/lge/camera/CameraActivity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/CameraActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 991
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 992
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 993
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cleanViewOn"

    iget-boolean v3, p0, Lcom/lge/camera/Mediator;->mIsClearView:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 994
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 977
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 985
    :cond_6
    invoke-virtual {p0, v4}, Lcom/lge/camera/Mediator;->clearViewOn(Z)V

    goto :goto_1
.end method

.method public unregisterCAFCallback()V
    .locals 1

    .prologue
    .line 4654
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->unregisterCallback()V

    .line 4655
    return-void
.end method

.method public unregisterObjectCallback()V
    .locals 1

    .prologue
    .line 4663
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 4664
    return-void
.end method

.method protected unregisterReceivers()V
    .locals 1

    .prologue
    .line 1879
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBroadCastReceiver:Lcom/lge/camera/receiver/BroadCastReceiverDefine;

    invoke-virtual {v0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->unregisterReceivers()V

    .line 1881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mDidRegister:Z

    .line 1883
    :cond_0
    return-void
.end method

.method public updateAllBars(II)V
    .locals 1
    .param p1, "mBarType"    # I
    .param p2, "value"    # I

    .prologue
    .line 3080
    packed-switch p1, :pswitch_data_0

    .line 3115
    :cond_0
    :goto_0
    return-void

    .line 3083
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    if-eqz v0, :cond_0

    .line 3084
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/ZoomController;->updateAllBars(I)V

    goto :goto_0

    .line 3090
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    if-eqz v0, :cond_1

    .line 3091
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/BrightnessController;->updateAllBars(I)V

    .line 3093
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    if-eqz v0, :cond_0

    .line 3094
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBrightnessControllerExpand:Lcom/lge/camera/controller/BrightnessControllerExpand;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/BrightnessControllerExpand;->updateAllBars(I)V

    goto :goto_0

    .line 3099
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    if-eqz v0, :cond_0

    .line 3100
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/BeautyshotController;->updateAllBars(I)V

    goto :goto_0

    .line 3105
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mCamera3dDepthController:Lcom/lge/camera/controller/Camera3dDepthController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/Camera3dDepthController;->updateAllBars(I)V

    goto :goto_0

    .line 3110
    :pswitch_4
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    if-eqz v0, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mManualFocusController:Lcom/lge/camera/controller/ManualFocusController;

    invoke-virtual {v0, p2}, Lcom/lge/camera/controller/ManualFocusController;->updateAllBars(I)V

    goto :goto_0

    .line 3080
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public updateAudioIndicator()V
    .locals 0

    .prologue
    .line 4479
    return-void
.end method

.method public updateAudiozoom(ZI)V
    .locals 0
    .param p1, "updateangle"    # Z
    .param p2, "zoomvalue"    # I

    .prologue
    .line 5613
    return-void
.end method

.method public updateDualRecordingSelection()Z
    .locals 1

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    move-result v0

    return v0
.end method

.method public updateEffectSelection()Z
    .locals 1

    .prologue
    .line 4134
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    move-result v0

    return v0
.end method

.method public updateFlashIndicator(ZLjava/lang/String;)V
    .locals 1
    .param p1, "useLocalSetting"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4466
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 4467
    return-void
.end method

.method public updateFocusIndicator()V
    .locals 0

    .prologue
    .line 4475
    return-void
.end method

.method public updateFocusStateIndicator()V
    .locals 1

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator()V

    .line 4558
    return-void
.end method

.method public updateGpsIndicator()V
    .locals 1

    .prologue
    .line 4428
    new-instance v0, Lcom/lge/camera/Mediator$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$10;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4434
    return-void
.end method

.method public updateGpsIndicator(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 4441
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getRecordLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4444
    :cond_0
    new-instance v0, Lcom/lge/camera/Mediator$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$11;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4451
    :cond_1
    return-void
.end method

.method public updateModeMenuIndicator()V
    .locals 1

    .prologue
    .line 4506
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator()V

    .line 4507
    return-void
.end method

.method public updateModeMenuIndicator(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/IndicatorController;->updateModeMenuIndicator(Ljava/lang/String;)V

    .line 4515
    return-void
.end method

.method public updateNavigationBarShape()V
    .locals 1

    .prologue
    .line 5039
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5040
    new-instance v0, Lcom/lge/camera/Mediator$12;

    invoke-direct {v0, p0}, Lcom/lge/camera/Mediator$12;-><init>(Lcom/lge/camera/Mediator;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 5060
    :cond_0
    return-void
.end method

.method public updateRemainIndicator()V
    .locals 1

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateRemainIndicator()V

    .line 4455
    return-void
.end method

.method public updateSceneIndicator(ZLjava/lang/String;)V
    .locals 0
    .param p1, "useLocalSetting"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4463
    return-void
.end method

.method public updateSizeIndicator()V
    .locals 0

    .prologue
    .line 4421
    return-void
.end method

.method public updateSmartZoomRecordingSelection()Z
    .locals 1

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    move-result v0

    return v0
.end method

.method public updateStabilizationIndicator()V
    .locals 1

    .prologue
    .line 4424
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateStabilizationIndicator()V

    .line 4425
    return-void
.end method

.method public updateStorageIndicator()V
    .locals 1

    .prologue
    .line 4470
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateStorageIndicator()V

    .line 4471
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 2880
    return-void
.end method

.method public updateThumbnailButtonVisibility()V
    .locals 1

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 2872
    return-void
.end method

.method public updateTimerIndicator()V
    .locals 1

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateTimerIndicator()V

    .line 4459
    return-void
.end method

.method public updateVoiceShutterIndicator(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 5572
    return-void
.end method

.method public updateZoomBar(IIZ)V
    .locals 4
    .param p1, "cursorStep"    # I
    .param p2, "factor"    # I
    .param p3, "scaleEnd"    # Z

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3376
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mZoomController:Lcom/lge/camera/controller/ZoomController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/ZoomController;->getZoomBar()Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    mul-int v1, p2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/lge/camera/components/ZoomBar;->updateBar(IZZZ)V

    .line 3378
    :cond_0
    return-void
.end method

.method public waitAvailableQueueCount(I)V
    .locals 0
    .param p1, "availableCount"    # I

    .prologue
    .line 5805
    return-void
.end method

.method public waitSaveImageTreadDone()V
    .locals 0

    .prologue
    .line 5802
    return-void
.end method

.method public waitStopRecordingEffectThreadDone()V
    .locals 1

    .prologue
    .line 4302
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->waitStopRecordingEffectThreadDone()V

    .line 4303
    return-void
.end method
