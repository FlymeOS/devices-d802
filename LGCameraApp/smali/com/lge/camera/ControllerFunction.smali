.class public interface abstract Lcom/lge/camera/ControllerFunction;
.super Ljava/lang/Object;
.source "ControllerFunction.java"


# virtual methods
.method public abstract activityFinish()V
.end method

.method public abstract addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)V
.end method

.method public abstract addQuickButton(Landroid/content/Context;II)V
.end method

.method public abstract addQuickButton(Landroid/content/Context;III)V
.end method

.method public abstract afterOnDismissForSelectVideoLength()V
.end method

.method public abstract allSettingMenuSelectedChild(Ljava/lang/String;Z)V
.end method

.method public abstract applyCameraChange()V
.end method

.method public abstract audioCallbackRestartEngine()V
.end method

.method public abstract beDirectlyGoingToCropGallery()Z
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract changeButtonResource(II)V
.end method

.method public abstract changeButtonResource(III)V
.end method

.method public abstract changeLiveSnapshotMaxFileSize(J)V
.end method

.method public abstract changePreviewModeOnUiThread(II)V
.end method

.method public abstract changeQuickPreviewMode(II)V
.end method

.method public abstract changeShutterSound(I)V
.end method

.method public abstract checkActivity()Z
.end method

.method public abstract checkAndCloseChildView()Z
.end method

.method public abstract checkAutoReviewForQuickView()Z
.end method

.method public abstract checkAutoReviewOff(Z)Z
.end method

.method public abstract checkCameraShutterSoundLoaded()Z
.end method

.method public abstract checkCurrentShotModeForModule()Z
.end method

.method public abstract checkFaceDetectionNoUI()Z
.end method

.method public abstract checkFocusController()Z
.end method

.method public abstract checkFsWritable()Z
.end method

.method public abstract checkPreviewController()Z
.end method

.method public abstract checkPreviewPanelController()Z
.end method

.method public abstract checkSceneMode(Lcom/lge/hardware/LGCamera$LGParameters;ZLjava/lang/String;)V
.end method

.method public abstract checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkShotModeForMultiWindowAF()Z
.end method

.method public abstract checkSlowMotionMode()Z
.end method

.method public abstract checkStorage(Z)V
.end method

.method public abstract checkSupportVideoSize(Landroid/net/Uri;)Z
.end method

.method public abstract checkSurfaceHolder()Z
.end method

.method public abstract checkUpdateThumbnail()Z
.end method

.method public abstract clearFocusState()V
.end method

.method public abstract clearQuickFunctionSubMenu()V
.end method

.method public abstract clearScreen()V
.end method

.method public abstract clearSubMenu()V
.end method

.method public abstract clearSubMenu(Z)V
.end method

.method public abstract clearViewOn(Z)V
.end method

.method public abstract closeGalleryQuickView(Z)V
.end method

.method public abstract deleteClearShotImages()Z
.end method

.method public abstract deleteProgressDialog()V
.end method

.method public abstract deleteRefocusShotImages()Z
.end method

.method public abstract deleteSavingProgressDialog()V
.end method

.method public abstract deleteTimeMachineImages()Z
.end method

.method public abstract dialogControllerOnDismiss()V
.end method

.method public abstract disableObjectTrackingForSmartZoom()V
.end method

.method public abstract displayQuickFunctionSettingView(Ljava/lang/String;)V
.end method

.method public abstract displaySettingView()V
.end method

.method public abstract doAttach()V
.end method

.method public abstract doCamcorderContinuousFocusCallback(Z)V
.end method

.method public abstract doCommand(Ljava/lang/String;)V
.end method

.method public abstract doCommand(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract doCommandDelayed(Ljava/lang/String;J)V
.end method

.method public abstract doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V
.end method

.method public abstract doCommandNoneParameter(Ljava/lang/String;)V
.end method

.method public abstract doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract doCommandUi(Ljava/lang/String;)V
.end method

.method public abstract doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract doCommandUi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract doFocus(Z)V
.end method

.method public abstract doFocusOnCaf()V
.end method

.method public abstract doSmartCameraModeCallback([I)V
.end method

.method public abstract doTakePictureCommand()Z
.end method

.method public abstract effectCameraStopPreview()V
.end method

.method public abstract effectCameraStopPreviewByCallFrom(I)V
.end method

.method public abstract effectRecorderStopPreview()V
.end method

.method public abstract effectRecorderStopPreviewByCallFrom(I)V
.end method

.method public abstract enableCommand(Z)V
.end method

.method public abstract enableInput(Z)V
.end method

.method public abstract facePreviewInitController()V
.end method

.method public abstract findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
.end method

.method public abstract findPreferenceIndex(Ljava/lang/String;)I
.end method

.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getActualBatteryLevel()I
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getApplicationMode()I
.end method

.method public abstract getApplicationModeString()Ljava/lang/String;
.end method

.method public abstract getAudiozoomStart()Z
.end method

.method public abstract getAudiozoomStartInRecording()Z
.end method

.method public abstract getAudiozoomvalue()Ljava/lang/String;
.end method

.method public abstract getAvailablePictureCount()J
.end method

.method public abstract getBack3dPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
.end method

.method public abstract getBackKeyRecStop()Z
.end method

.method public abstract getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
.end method

.method public abstract getBackupCurrentMenuIndex()I
.end method

.method public abstract getBatteryLevel()I
.end method

.method public abstract getBeautyshotProgress()Z
.end method

.method public abstract getBlockTouchByCallPopUp()Z
.end method

.method public abstract getBrightnessControllerExpand()Lcom/lge/camera/controller/BrightnessControllerExpand;
.end method

.method public abstract getCafOnGoing()Z
.end method

.method public abstract getCameraDevice()Landroid/hardware/Camera;
.end method

.method public abstract getCameraDimension()I
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getCameraMode()I
.end method

.method public abstract getChildIndex(Ljava/lang/String;)I
.end method

.method public abstract getCommandManager()Lcom/lge/camera/command/CommandManager;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getCurrentDialog()Landroid/app/Dialog;
.end method

.method public abstract getCurrentIAMode()I
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract getCurrentMenuKey()Ljava/lang/String;
.end method

.method public abstract getCurrentModule()Lcom/lge/camera/module/Module;
.end method

.method public abstract getCurrentModuleName()Ljava/lang/String;
.end method

.method public abstract getCurrentPIPMask()I
.end method

.method public abstract getCurrentRecordingTime()J
.end method

.method public abstract getCurrentSelectedTitle()Ljava/lang/String;
.end method

.method public abstract getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;
.end method

.method public abstract getCurrentSettingMenuIndex()I
.end method

.method public abstract getCurrentSettingMenuIndex(Ljava/lang/String;)I
.end method

.method public abstract getCurrentSettingMenuName()Ljava/lang/String;
.end method

.method public abstract getCurrentStorage()I
.end method

.method public abstract getCurrentStorageDirectory()Ljava/lang/String;
.end method

.method public abstract getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;
.end method

.method public abstract getDeviceDegree()I
.end method

.method public abstract getDialogID()I
.end method

.method public abstract getDrawable(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDualCameraPictureSize()[I
.end method

.method public abstract getEffectRecorderPausing()Z
.end method

.method public abstract getEnableInput()Z
.end method

.method public abstract getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;
.end method

.method public abstract getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;
.end method

.method public abstract getFlashEnableForShotMode()Z
.end method

.method public abstract getFocusAreaHeight()I
.end method

.method public abstract getFocusAreaLeftMargin()I
.end method

.method public abstract getFocusAreaWidth()I
.end method

.method public abstract getFocusState()I
.end method

.method public abstract getFreePanoramaEngineStatus()I
.end method

.method public abstract getFreePanoramaResultSize()[I
.end method

.method public abstract getFreePanoramaStatus()I
.end method

.method public abstract getFreeSpace()J
.end method

.method public abstract getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
.end method

.method public abstract getGoingAutoReviewForQuickView()Z
.end method

.method public abstract getHandler()Lcom/lge/camera/util/MainHandler;
.end method

.method public abstract getHeadsetstate()I
.end method

.method public abstract getIAFlashStatus()Z
.end method

.method public abstract getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
.end method

.method public abstract getImageHandler()Lcom/lge/camera/util/ImageHandler;
.end method

.method public abstract getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;
.end method

.method public abstract getImageListRotation()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageListUri()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageRotationDegree()I
.end method

.method public abstract getInCaptureProgress()Z
.end method

.method public abstract getIndexMenuKey(I)Ljava/lang/String;
.end method

.method public abstract getIsCharging()Z
.end method

.method public abstract getIsFileSizeLimitReached()Z
.end method

.method public abstract getLG()Lcom/lge/hardware/LGCamera;
.end method

.method public abstract getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;
.end method

.method public abstract getLanguageType()Ljava/lang/String;
.end method

.method public abstract getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
.end method

.method public abstract getListPreference(I)Lcom/lge/camera/setting/ListPreference;
.end method

.method public abstract getLiveEffect()Ljava/lang/String;
.end method

.method public abstract getLiveEffectList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getLocationOn()Z
.end method

.method public abstract getMainBarAlphaValue()I
.end method

.method public abstract getMainCameraDimension()I
.end method

.method public abstract getManualFocusValue()I
.end method

.method public abstract getMaxVideoDurationInMs()I
.end method

.method public abstract getMediaUSBConnectAtStartRecord()Z
.end method

.method public abstract getMenuCommand()Ljava/lang/String;
.end method

.method public abstract getMostRecentThumbnailUri(ZI)Landroid/net/Uri;
.end method

.method public abstract getNeedProgressDuringCapture()Z
.end method

.method public abstract getObjectTrackingState()I
.end method

.method public abstract getOpenLBSSetting()Z
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getOrientationDegree()I
.end method

.method public abstract getParameteredRotation()I
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getPicturesRemaining()J
.end method

.method public abstract getPlanePanoramaResultSize()[I
.end method

.method public abstract getPlanePanoramaStatus()I
.end method

.method public abstract getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
.end method

.method public abstract getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;
.end method

.method public abstract getPreviewSizeOnDevice()Ljava/lang/String;
.end method

.method public abstract getPreviewSizeOnScreen()Ljava/lang/String;
.end method

.method public abstract getPreviousEffectType()I
.end method

.method public abstract getPreviousPictureSize()Ljava/lang/String;
.end method

.method public abstract getPreviousRecordModeString()Ljava/lang/String;
.end method

.method public abstract getPreviousResolution()Ljava/lang/String;
.end method

.method public abstract getPreviousShotModeString()Ljava/lang/String;
.end method

.method public abstract getQFIndexListItem(I)Ljava/lang/String;
.end method

.method public abstract getQFLMenuEnable()[Z
.end method

.method public abstract getQfIndex(Ljava/lang/String;)I
.end method

.method public abstract getQfIndexList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueueCount()I
.end method

.method public abstract getQuickFunctionControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;
.end method

.method public abstract getQuickFunctionControllerMenuView(I)Landroid/view/View;
.end method

.method public abstract getQuickFunctionDragControllerMenuTag(I)Lcom/lge/camera/setting/ListPreference;
.end method

.method public abstract getRecentMessageType()I
.end method

.method public abstract getRecordLocation()Z
.end method

.method public abstract getRecordingDurationLimit()J
.end method

.method public abstract getRecordingSizeLimit()J
.end method

.method public abstract getRefocusPictures()Z
.end method

.method public abstract getRequestedVideoSizeLimit()J
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getSaveURI()Landroid/net/Uri;
.end method

.method public abstract getSavedFileName()Ljava/lang/String;
.end method

.method public abstract getSavedImageUri()Landroid/net/Uri;
.end method

.method public abstract getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;
.end method

.method public abstract getSelectedChildCount(I)I
.end method

.method public abstract getSelectedChildIndex()I
.end method

.method public abstract getSelectedQuickFunctionMenuKey()Ljava/lang/String;
.end method

.method public abstract getSettingController()Lcom/lge/camera/controller/SettingController;
.end method

.method public abstract getSettingIndex(Ljava/lang/String;)I
.end method

.method public abstract getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
.end method

.method public abstract getSettingMenuCommand()Ljava/lang/String;
.end method

.method public abstract getSettingMenuCount()I
.end method

.method public abstract getSettingMenuEnable(I)Z
.end method

.method public abstract getSettingMenuItem(I)Lcom/lge/camera/setting/SettingMenuItem;
.end method

.method public abstract getSettingMenuItem(Ljava/lang/String;)Lcom/lge/camera/setting/SettingMenuItem;
.end method

.method public abstract getSettingParameterValue()Ljava/lang/String;
.end method

.method public abstract getSettingValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getShowCameraErrorPopup()Z
.end method

.method public abstract getSmartModeForPictureSize()Ljava/lang/String;
.end method

.method public abstract getSmartZoomFocusViewMode()I
.end method

.method public abstract getSnapshotRunnable()Ljava/lang/Runnable;
.end method

.method public abstract getStartTime()J
.end method

.method public abstract getStatus()I
.end method

.method public abstract getStorageBucketId()Ljava/lang/String;
.end method

.method public abstract getStorageBucketId(I)Ljava/lang/String;
.end method

.method public abstract getStorageMessageId()I
.end method

.method public abstract getStoragePopupMessage()Ljava/lang/String;
.end method

.method public abstract getStorageState()I
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getSubCameraModeRunning()Z
.end method

.method public abstract getSubMenuMode()I
.end method

.method public abstract getSurfaceHolder()Landroid/view/SurfaceHolder;
.end method

.method public abstract getThumbnailAndUpdateButton()V
.end method

.method public abstract getThumbnailControllerUri()Landroid/net/Uri;
.end method

.method public abstract getTimeMachineComplete()Z
.end method

.method public abstract getTimeMachinePictures()Z
.end method

.method public abstract getTimeMachineStorageDirectory()Ljava/lang/String;
.end method

.method public abstract getTimerCaptureDelay()I
.end method

.method public abstract getToastController()Lcom/lge/camera/controller/ToastController;
.end method

.method public abstract getVideoFile()Lcom/lge/camera/VideoFile;
.end method

.method public abstract getVideoFileSize()J
.end method

.method public abstract getVideoState()I
.end method

.method public abstract getZoomBarValue()I
.end method

.method public abstract getZoomCursorMaxStep()I
.end method

.method public abstract getZoomMaxValue()F
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract gotoHelpActivity(Ljava/lang/String;)V
.end method

.method public abstract hasSaveURI()Z
.end method

.method public abstract hideChildCustomView(Z)V
.end method

.method public abstract hideFocus()Z
.end method

.method public abstract hideForPhotoStory()Z
.end method

.method public abstract hideFreePanoramaTakingGuide()V
.end method

.method public abstract hideGestureGuide()V
.end method

.method public abstract hideIndicatorController()V
.end method

.method public abstract hideOptionMenu()V
.end method

.method public abstract hideOsd()V
.end method

.method public abstract hideOsdByForce()V
.end method

.method public abstract hidePopupAnimation(I)V
.end method

.method public abstract hidePreviewPanelController()V
.end method

.method public abstract hidePreviewPanelLiveSnapshotButton()V
.end method

.method public abstract hideQuickFunctionController()V
.end method

.method public abstract hideQuickFunctionDragController(Z)V
.end method

.method public abstract hideRecoridngStopButton()V
.end method

.method public abstract hideShotModeMenu(Z)V
.end method

.method public abstract hideSmartZoomFocusView()V
.end method

.method public abstract hideSubWindowResizeHandler()V
.end method

.method public abstract inflateStub(I)Landroid/view/View;
.end method

.method public abstract inflateView(I)Landroid/view/View;
.end method

.method public abstract initControllers()V
.end method

.method public abstract initFaceDetectInfo()V
.end method

.method public abstract initFocusAreas()V
.end method

.method public abstract initMultiWindowAFView()V
.end method

.method public abstract initQuickFunctionEnabled()V
.end method

.method public abstract initSettingBrightnessBar()Landroid/widget/RelativeLayout;
.end method

.method public abstract initSettingMenu()V
.end method

.method public abstract initSmartZoomFocusView()V
.end method

.method public abstract initializeRecordingDual(Ljava/lang/String;JIJ)V
.end method

.method public abstract initializeRecordingEffect(Ljava/lang/String;JIJ)V
.end method

.method public abstract isAttachIntent()Z
.end method

.method public abstract isAttachMode()Z
.end method

.method public abstract isAudiozoom_ExceptionCase(Z)Z
.end method

.method public abstract isAvailableResumeVideo()Z
.end method

.method public abstract isBackKeyPressed()Z
.end method

.method public abstract isBlockingFaceTrFocusing()Z
.end method

.method public abstract isBurstShotStop()Z
.end method

.method public abstract isCafSupported()Z
.end method

.method public abstract isCamcorderRotation(Z)Z
.end method

.method public abstract isCameraKeyLongPressed()Z
.end method

.method public abstract isChangeMode()Z
.end method

.method public abstract isChangingToOtherActivity()Z
.end method

.method public abstract isClearView()Z
.end method

.method public abstract isCompleteProcessFrame()Z
.end method

.method public abstract isConfigurationChanging()Z
.end method

.method public abstract isConfigureLandscape()Z
.end method

.method public abstract isContinuousFocusActivating()Z
.end method

.method public abstract isControllerInitialized()Z
.end method

.method public abstract isCurrnetModuleRunning()Z
.end method

.method public abstract isDualCameraActive()Z
.end method

.method public abstract isDualRecordingActive()Z
.end method

.method public abstract isEffectsCamcorderActive()Z
.end method

.method public abstract isEffectsCameraActive()Z
.end method

.method public abstract isEnteringViewShowing()Z
.end method

.method public abstract isErrorOccuredAndFinish()Z
.end method

.method public abstract isExitIgnoreDuringSaving()Z
.end method

.method public abstract isExternalStorageRemoved()Z
.end method

.method public abstract isFinishingActivity()Z
.end method

.method public abstract isFlashOffByHighTemperature()Z
.end method

.method public abstract isFocusViewVisible()Z
.end method

.method public abstract isGalleryLaunching()Z
.end method

.method public abstract isGestureShotActivated()Z
.end method

.method public abstract isIndicatorControllerInitialized()Z
.end method

.method public abstract isLiveEffectActive()Z
.end method

.method public abstract isLiveEffectDrawerOpened()Z
.end method

.method public abstract isLiveEffectDrawerShown()Z
.end method

.method public abstract isMMSIntent()Z
.end method

.method public abstract isMMSRecording()Z
.end method

.method public abstract isManualFocusBarVisible()Z
.end method

.method public abstract isMediaScanning()Z
.end method

.method public abstract isNullQuickFunctionSettingView()Z
.end method

.method public abstract isNullSettingView()Z
.end method

.method public abstract isObjectTrackingEnabledForSmartZoom()Z
.end method

.method public abstract isOptionMenuShowing()Z
.end method

.method public abstract isPIPFrameDrawerOpened()Z
.end method

.method public abstract isPIPFrameDrawerShown()Z
.end method

.method public abstract isPanoramaStarted()Z
.end method

.method public abstract isPanoramaUIShown()Z
.end method

.method public abstract isPanoramaUpdatebutton()Z
.end method

.method public abstract isPausing()Z
.end method

.method public abstract isPlayRingMode()Z
.end method

.method public abstract isPressedShutterButton()Z
.end method

.method public abstract isPreviewOnGoing()Z
.end method

.method public abstract isPreviewRendered()Z
.end method

.method public abstract isPreviewing()Z
.end method

.method public abstract isQuickFunctionDragControllerVisible()Z
.end method

.method public abstract isQuickFunctionList(I)Z
.end method

.method public abstract isQuickFunctionSettingControllerShowing()Z
.end method

.method public abstract isQuickFunctionSettingRemoving()Z
.end method

.method public abstract isReadyEngineProcessor()Z
.end method

.method public abstract isRecordedLengthTooShort()Z
.end method

.method public abstract isRecordingControllerInit()Z
.end method

.method public abstract isRefocusShotHasPictures()Z
.end method

.method public abstract isRotateDialogVisible()Z
.end method

.method public abstract isSendBroadcastIntent()Z
.end method

.method public abstract isSensorSupportBackdropper()Z
.end method

.method public abstract isSettingControllerVisible()Z
.end method

.method public abstract isSettingViewRemoving()Z
.end method

.method public abstract isShotModeMenuVisible()Z
.end method

.method public abstract isShutterButtonEnable()Z
.end method

.method public abstract isShutterButtonLongKey()Z
.end method

.method public abstract isShutterFocusLongKey()Z
.end method

.method public abstract isSmartZoomRecordingActive()Z
.end method

.method public abstract isStopRecordingByMountedAction()Z
.end method

.method public abstract isStorageControllerInitialized()Z
.end method

.method public abstract isStorageFull()Z
.end method

.method public abstract isStorageToastShowing()Z
.end method

.method public abstract isSwapCameraProcessing()Z
.end method

.method public abstract isSwitcherLeverEnable()Z
.end method

.method public abstract isSwitcherLeverPressed()Z
.end method

.method public abstract isSynthesisInProgress()Z
.end method

.method public abstract isTimeMachineModeOn()Z
.end method

.method public abstract isTimemachineHasPictures()Z
.end method

.method public abstract isTimerShotCountdown()Z
.end method

.method public abstract isToastControllerShowing()Z
.end method

.method public abstract isfacePreviewInitialized()Z
.end method

.method public abstract keepScreenOnAwhile()V
.end method

.method public abstract needProgressBar()Z
.end method

.method public abstract onDismissRotateDialog()V
.end method

.method public abstract onFaceDetectionFromHal([Landroid/hardware/Camera$Face;)V
.end method

.method public abstract pauseAndResumeRecording(Z)V
.end method

.method public abstract pauseRecording()V
.end method

.method public abstract perfLockAcquire()V
.end method

.method public abstract playAFSound(Z)V
.end method

.method public abstract playBurstShotShutterSound(Z)V
.end method

.method public abstract playClearShotShutterSound(Z)V
.end method

.method public abstract playContinuousShutterSound()V
.end method

.method public abstract playFreePanoramaShutterSound()V
.end method

.method public abstract playRecordingSound(Z)V
.end method

.method public abstract playShutterSound()V
.end method

.method public abstract playTimerSound(I)V
.end method

.method public abstract playVoiceCommandSound(I)V
.end method

.method public abstract postOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract postOnUiThread(Ljava/lang/Runnable;J)V
.end method

.method public abstract postviewRequestInit()Z
.end method

.method public abstract putPreviewFrameForGesture([BLandroid/hardware/Camera;)V
.end method

.method public abstract qflMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
.end method

.method public abstract qflSettingAnimation(Landroid/view/View;Z)V
.end method

.method public abstract quickFunctionAllMenuSelected(Z)V
.end method

.method public abstract quickFunctionControllerInitMenu()V
.end method

.method public abstract quickFunctionControllerRefresh(Z)V
.end method

.method public abstract recordingControllerHide()V
.end method

.method public abstract recordingControllerShow()V
.end method

.method public abstract refresh3dDepthController()V
.end method

.method public abstract refresh3dDepthSettingBars()V
.end method

.method public abstract refreshBeautyshotController()V
.end method

.method public abstract refreshBeautyshotSettingBars()V
.end method

.method public abstract refreshBrightnessController()V
.end method

.method public abstract refreshBrightnessExpandSettingBars()V
.end method

.method public abstract refreshBrightnessSettingBars()V
.end method

.method public abstract refreshManualFocusController()V
.end method

.method public abstract refreshQuickButton()V
.end method

.method public abstract refreshZoomController()V
.end method

.method public abstract refreshZoomSettingBars()V
.end method

.method public abstract registerFaceTrackingCallback()V
.end method

.method public abstract registerObjectCallback()V
.end method

.method public abstract releaseAllEngine()V
.end method

.method public abstract releaseEngine(Ljava/lang/String;)V
.end method

.method public abstract releaseEngine(Z)V
.end method

.method public abstract releaseGestureEngine()V
.end method

.method public abstract removeAllImageList()V
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method public abstract removeFreePanoramaBlackBg()V
.end method

.method public abstract removeFreePanoramaView()V
.end method

.method public abstract removePanoramaView()V
.end method

.method public abstract removePlanePanoramaView()V
.end method

.method public abstract removePostRunnable(Ljava/lang/Object;)V
.end method

.method public abstract removePreviewCallback()V
.end method

.method public abstract removeQuickButton(I)V
.end method

.method public abstract removeQuickButtonAll()V
.end method

.method public abstract removeQuickFunctionSettingView()V
.end method

.method public abstract removeScheduledAllCommand()V
.end method

.method public abstract removeScheduledCommand(Ljava/lang/String;)V
.end method

.method public abstract removeSettingView()V
.end method

.method public abstract removeSettingViewAll()V
.end method

.method public abstract reset3dDepthController()V
.end method

.method public abstract resetAudioZoomMenu()V
.end method

.method public abstract resetBarController(I)V
.end method

.method public abstract resetBeautyshotController()V
.end method

.method public abstract resetBrightnessController()V
.end method

.method public abstract resetController()V
.end method

.method public abstract resetDisplayTimeout3dDepth()V
.end method

.method public abstract resetDisplayTimeoutBeautyshot()V
.end method

.method public abstract resetDisplayTimeoutBrightness()V
.end method

.method public abstract resetDisplayTimeoutManualFocus()V
.end method

.method public abstract resetDisplayTimeoutZoom()V
.end method

.method public abstract resetManualFocusController()V
.end method

.method public abstract resetQFIndex()V
.end method

.method public abstract resetScreenTimeout()V
.end method

.method public abstract resetSettingMenu()V
.end method

.method public abstract resetSwitcherLever()V
.end method

.method public abstract resetZoomController()V
.end method

.method public abstract restartFreePanorama()V
.end method

.method public abstract restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end method

.method public abstract restoreLiveEffectSubMenu()V
.end method

.method public abstract restoreSubWindow()V
.end method

.method public abstract resumeRecording()V
.end method

.method public abstract resumeUpdateReordingTime()V
.end method

.method public abstract rotateAllController(IZ)V
.end method

.method public abstract rotateSettingBar(II)V
.end method

.method public abstract runGestureEngine(Z)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract saveClearShotPicture([BI)Z
.end method

.method public abstract saveImageSavers([BLandroid/graphics/Bitmap;IZZ)Z
.end method

.method public abstract savePicture([BLandroid/graphics/Bitmap;)Z
.end method

.method public abstract saveQFLIndex()V
.end method

.method public abstract saveRefocusShotMap([B)V
.end method

.method public abstract saveRefocusShotPicture([BI)Z
.end method

.method public abstract saveTimeMachinePicture([BI)Z
.end method

.method public abstract set3DSwitchImage()V
.end method

.method public abstract set3DSwitchVisible(Z)V
.end method

.method public abstract setAllChildMenuEnabled(Ljava/lang/String;Z)V
.end method

.method public abstract setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setApplicationMode(I)V
.end method

.method public abstract setAudioRecogEngineStart()V
.end method

.method public abstract setAudioRecogEngineStop()V
.end method

.method public abstract setAudioZoomGuideViewLayout(III)V
.end method

.method public abstract setAudiozoomStart(Z)V
.end method

.method public abstract setAudiozoomStartInRecording(Z)V
.end method

.method public abstract setAudiozoom_ExceptionCase(Z)V
.end method

.method public abstract setAudiozoombuttonstate()V
.end method

.method public abstract setAudiozoomvalue(Ljava/lang/String;)V
.end method

.method public abstract setBackKeyPressed(Z)V
.end method

.method public abstract setBackKeyRecStop(Z)V
.end method

.method public abstract setBackgroundColorBlack()V
.end method

.method public abstract setBackgroundColorWhite()V
.end method

.method public abstract setBackupCurrentMenuIndex(I)V
.end method

.method public abstract setBeautyshotProgress(Z)V
.end method

.method public abstract setBlockingFaceTrFocusing(Z)V
.end method

.method public abstract setBurstShotStop(Z)V
.end method

.method public abstract setButtonRemainEnabled(IZ)V
.end method

.method public abstract setButtonRemainEnabled(IZZ)V
.end method

.method public abstract setButtonRemainRefresh()V
.end method

.method public abstract setCafOnGoing(Z)V
.end method

.method public abstract setCameraId(I)V
.end method

.method public abstract setCameraIdBeforeStartInit()V
.end method

.method public abstract setCameraMode(I)V
.end method

.method public abstract setCaptureData([B)V
.end method

.method public abstract setChangeMode()V
.end method

.method public abstract setChangingToOtherActivity(Z)V
.end method

.method public abstract setCheckClickTime(J)V
.end method

.method public abstract setCheckToggleTime(I)Z
.end method

.method public abstract setClearFocusAnimation()V
.end method

.method public abstract setContinuousShotAlived(Z)V
.end method

.method public abstract setCurrentIAMode(I)V
.end method

.method public abstract setCurrentPIPMask(I)V
.end method

.method public abstract setCurrentRecordingTime(J)V
.end method

.method public abstract setCurrentSettingMenu(I)Z
.end method

.method public abstract setCurrentSettingMenuEnable(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setCurrentSettingMenuEnable(Ljava/lang/String;Z)V
.end method

.method public abstract setCurrentSettingMenuOnly(I)Z
.end method

.method public abstract setCurrentStorage(I)V
.end method

.method public abstract setDefaultPIPMask()V
.end method

.method public abstract setDegree(IIIZ)V
.end method

.method public abstract setDegree(IIZ)V
.end method

.method public abstract setEffectRecorderPausing(Z)V
.end method

.method public abstract setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z
.end method

.method public abstract setEndTime(J)V
.end method

.method public abstract setEngineProcessor()V
.end method

.method public abstract setErrorOccuredAndFinish(Z)V
.end method

.method public abstract setExitIgnoreDuringSaving(Z)V
.end method

.method public abstract setFaceBeutyShotParameter(I)V
.end method

.method public abstract setFlashOffByHighTemperature(Z)V
.end method

.method public abstract setFocalLength(F)V
.end method

.method public abstract setFocusAreaWindow(III)V
.end method

.method public abstract setFocusPosition(I)V
.end method

.method public abstract setFocusRectangleInitialize()V
.end method

.method public abstract setFocusState(I)V
.end method

.method public abstract setForced_audiozoom(Z)V
.end method

.method public abstract setFullFrameContinuousShot(Landroid/hardware/Camera$Parameters;I)V
.end method

.method public abstract setGalleryLaunching(Z)V
.end method

.method public abstract setGestureShotActivated(Z)V
.end method

.method public abstract setIAFlashStatus(Z)V
.end method

.method public abstract setImageRotationDegree(I)V
.end method

.method public abstract setInCaptureProgress(Z)V
.end method

.method public abstract setIndicatorLayout(I)V
.end method

.method public abstract setIsFileSizeLimitReached(Z)V
.end method

.method public abstract setIsSendBroadcastIntent(Z)V
.end method

.method public abstract setIsSwapCameraProcessing(Z)V
.end method

.method public abstract setKeepScreenOn()V
.end method

.method public abstract setLastPictureThumb([BLandroid/net/Uri;Z)V
.end method

.method public abstract setLastThumb(Landroid/net/Uri;Z)V
.end method

.method public abstract setLimitationToLiveeffect(Z)V
.end method

.method public abstract setLiveEffect(Ljava/lang/String;)V
.end method

.method public abstract setLiveeffectLimit()Ljava/lang/String;
.end method

.method public abstract setLocationOn(Z)V
.end method

.method public abstract setLockChangeConfiguration(Z)V
.end method

.method public abstract setLockScreenPreventPreview(Z)V
.end method

.method public abstract setMainBarAlpha(I)V
.end method

.method public abstract setMainButtonDisable()V
.end method

.method public abstract setMainButtonEnable()V
.end method

.method public abstract setMainButtonEnable(Ljava/lang/String;)V
.end method

.method public abstract setMainButtonVisible(Z)V
.end method

.method public abstract setMainCameraDimension(I)V
.end method

.method public abstract setManualFocusValue(I)V
.end method

.method public abstract setMediaUSBConnectAtStartRecord(Z)V
.end method

.method public abstract setMenuEnableForSceneMode(I)V
.end method

.method public abstract setModeMenuVisibility(I)V
.end method

.method public abstract setModule(Ljava/lang/String;)V
.end method

.method public abstract setMultiWindowAFView([I)V
.end method

.method public abstract setNeedProgressDuringCapture(Z)V
.end method

.method public abstract setOpenLBSSetting(Z)V
.end method

.method public abstract setOrientationForced(I)V
.end method

.method public abstract setPIPMask(I)Z
.end method

.method public abstract setPIPRotate(I)V
.end method

.method public abstract setPanoramaEngine()V
.end method

.method public abstract setParameteredRotation(I)V
.end method

.method public abstract setParameters(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract setPicturesRemaining(J)V
.end method

.method public abstract setPreferenceMenuEnable(Ljava/lang/String;ZZ)V
.end method

.method public abstract setPreferenceMenuOnlyEnable(Ljava/lang/String;Z)V
.end method

.method public abstract setPrevResolutionWithStoredValue()V
.end method

.method public abstract setPreviewEffectForBeautyShotMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end method

.method public abstract setPreviewRendered(Z)V
.end method

.method public abstract setPreviewVisibility(I)V
.end method

.method public abstract setPreviewing(Z)V
.end method

.method public abstract setPreviousPictureSize(Ljava/lang/String;)V
.end method

.method public abstract setPreviousRecordModeString(Ljava/lang/String;)V
.end method

.method public abstract setPreviousResolution(Ljava/lang/String;)V
.end method

.method public abstract setPreviousShotModeString(Ljava/lang/String;)V
.end method

.method public abstract setQFLMenuEnabled(IZ)V
.end method

.method public abstract setQFLMenuSelected(IZ)V
.end method

.method public abstract setQuickButtonForcedDisable(Z)V
.end method

.method public abstract setQuickButtonMenuEnable(IZZ)V
.end method

.method public abstract setQuickButtonMenuEnable(ZZ)V
.end method

.method public abstract setQuickButtonMode(Z)V
.end method

.method public abstract setQuickButtonVisible(IIZ)V
.end method

.method public abstract setQuickFunctionAllMenuEnabled(ZZ)V
.end method

.method public abstract setQuickFunctionControllerAllMenuIcons()V
.end method

.method public abstract setQuickFunctionControllerMenu(I)V
.end method

.method public abstract setQuickFunctionControllerMenuIcon(II)V
.end method

.method public abstract setQuickFunctionControllerMmsLimit()V
.end method

.method public abstract setQuickFunctionControllerMmsLimit(Z)V
.end method

.method public abstract setQuickFunctionControllerVisible(Z)V
.end method

.method public abstract setQuickFunctionDragControllerSelectIndex(I)V
.end method

.method public abstract setQuickFunctionMenuForcedDisable(Z)V
.end method

.method public abstract setRecIndicatorLayout(III)V
.end method

.method public abstract setRecordLocation(Z)V
.end method

.method public abstract setRecordingTime_realduration(J)V
.end method

.method public abstract setRefocusShotHasPictures(Z)V
.end method

.method public abstract setRefocusShotPreviewGuideVisibility(Z)V
.end method

.method public abstract setRemoveFreePanoramaBlackBg(Z)V
.end method

.method public abstract setSavedFileName(Ljava/lang/String;)V
.end method

.method public abstract setSavedImageUri(Landroid/net/Uri;)V
.end method

.method public abstract setScaleWidthHeight(F)V
.end method

.method public abstract setSceneModeForAdvanced(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
.end method

.method public abstract setSelectedChild(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setSelectedChild(I)Z
.end method

.method public abstract setSelectedChild(II)Z
.end method

.method public abstract setSetting(II)Z
.end method

.method public abstract setSetting(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract setSettingControllerMmsLimit(Z)V
.end method

.method public abstract setSettingForDualCamera(Z)V
.end method

.method public abstract setShowCameraErrorPopup(Z)V
.end method

.method public abstract setShutterButtonClicked(Z)V
.end method

.method public abstract setShutterButtonImage(ZI)V
.end method

.method public abstract setShutterFocusLongKey(Z)V
.end method

.method public abstract setSmartCameraMode(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end method

.method public abstract setSmartModeForPictureSize(Ljava/lang/String;)V
.end method

.method public abstract setSmartZoomFocusViewPosition(II)V
.end method

.method public abstract setStartrecordingdegree(I)V
.end method

.method public abstract setSubButton(II)V
.end method

.method public abstract setSubCameraModeRunning(Z)V
.end method

.method public abstract setSubMenuMode(I)V
.end method

.method public abstract setSwitcherVisible(Z)V
.end method

.method public abstract setSwithcerEnable(Z)V
.end method

.method public abstract setThumbnailButtonVisibility(I)V
.end method

.method public abstract setTimeMachineComplete(Z)V
.end method

.method public abstract setTimeMachineLimit(Z)V
.end method

.method public abstract setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V
.end method

.method public abstract setTimemachineHasPictures(Z)V
.end method

.method public abstract setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V
.end method

.method public abstract setTimerSetting(I)V
.end method

.method public abstract setTimerShotCountdown(Z)V
.end method

.method public abstract setVideoFlash(Z)V
.end method

.method public abstract setVideoState(I)V
.end method

.method public abstract setVideoStateOnly(I)V
.end method

.method public abstract setZoomMaxValue(F)V
.end method

.method public abstract setZoomRatio(F)V
.end method

.method public abstract show3dDepthController(Z)V
.end method

.method public abstract showBeautyShotBarForNewUx(Z)V
.end method

.method public abstract showBeautyshotController(Z)V
.end method

.method public abstract showBrightnessController(Z)V
.end method

.method public abstract showBubblePopupVisibility(IJZ)V
.end method

.method public abstract showCameraErrorAndFinish()V
.end method

.method public abstract showCameraStoppedAndFinish()V
.end method

.method public abstract showControllerForHideSettingMenu(ZZ)V
.end method

.method public abstract showDefaultQuickButton(Z)V
.end method

.method public abstract showDialogPopup(I)V
.end method

.method public abstract showFocus()Z
.end method

.method public abstract showFocus(Z)Z
.end method

.method public abstract showFreePanoramaBlackBg()V
.end method

.method public abstract showFreePanoramaView()V
.end method

.method public abstract showGalleryQuickViewWindow(ZJ)Z
.end method

.method public abstract showGestureGuide()V
.end method

.method public abstract showHeatingwarning()V
.end method

.method public abstract showHelpGuidePopup(Ljava/lang/String;IZ)Z
.end method

.method public abstract showIndicatorController()V
.end method

.method public abstract showManualFocusController(Z)V
.end method

.method public abstract showOsd()V
.end method

.method public abstract showPanoramaView()V
.end method

.method public abstract showPopupAnimation(I)V
.end method

.method public abstract showPreview()V
.end method

.method public abstract showPreviewPanelController()V
.end method

.method public abstract showPreviewPanelLiveSnapShotButton()V
.end method

.method public abstract showProgressDialog()V
.end method

.method public abstract showQuickFunctionController()V
.end method

.method public abstract showQuickFunctionDragController()V
.end method

.method public abstract showQuickMenuEnteringGuide(Z)V
.end method

.method public abstract showRecoridngStopButton()V
.end method

.method public abstract showRequestedSizeLimit()V
.end method

.method public abstract showSavingProgressDialog()V
.end method

.method public abstract showSetting3dDepthControl(Z)V
.end method

.method public abstract showSettingBeautyShotControl(Z)V
.end method

.method public abstract showSettingBrightnessControl(Z)V
.end method

.method public abstract showSettingZoomControl(Z)V
.end method

.method public abstract showShotModeMenu()V
.end method

.method public abstract showSmartZoomFocusView()V
.end method

.method public abstract showStorageHint(I)V
.end method

.method public abstract showSubButtonInit(Z)V
.end method

.method public abstract showSubWindowResizeHandler(FF)V
.end method

.method public abstract showZoomController(Z)V
.end method

.method public abstract smartShutterEnable(Z)V
.end method

.method public abstract snapshotOnContinuousFocus()Z
.end method

.method public abstract snapshotOnIdle()Z
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method

.method public abstract startAudiozoom()V
.end method

.method public abstract startFaceDetection(Z)V
.end method

.method public abstract startFaceDetectionFromHal(Z)V
.end method

.method public abstract startFocusByTouchPress(IIZ)V
.end method

.method public abstract startFreePanorama()V
.end method

.method public abstract startFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract startGestureEngine()V
.end method

.method public abstract startHeatingwarning()V
.end method

.method public abstract startLiveEffectDrawerSubMenuRotation(I)V
.end method

.method public abstract startObjectTrackingFocus(IIIII)V
.end method

.method public abstract startObjectTrackingFocusForSmartZoom(IIIII)V
.end method

.method public abstract startPIPFrameSubMenuRotation(I)V
.end method

.method public abstract startPanorama()V
.end method

.method public abstract startPlanePanorama()V
.end method

.method public abstract startPlanePanoramaEngine()V
.end method

.method public abstract startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end method

.method public abstract startPreviewEffect()V
.end method

.method public abstract startReceivingLocationUpdates()V
.end method

.method public abstract startRecording()V
.end method

.method public abstract startRecordingEffect()V
.end method

.method public abstract startSubMenuRotation(I)V
.end method

.method public abstract startTimerShot()V
.end method

.method public abstract stopAudiozoom()V
.end method

.method public abstract stopBurstShotSound()V
.end method

.method public abstract stopByUserAction()Z
.end method

.method public abstract stopClearShotSound()V
.end method

.method public abstract stopFaceDetection()V
.end method

.method public abstract stopFaceDetectionFromHal()V
.end method

.method public abstract stopFreePanorama()V
.end method

.method public abstract stopFreePanoramaEngine(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract stopGestureEngine()V
.end method

.method public abstract stopHeatingwarning()V
.end method

.method public abstract stopPanorama()V
.end method

.method public abstract stopPlanePanorama()V
.end method

.method public abstract stopPlanePanoramaEngine()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopReceivingLocationUpdates()V
.end method

.method public abstract stopRecording(Z)V
.end method

.method public abstract stopRecordingByPausing()V
.end method

.method public abstract stopRecordingEffect()V
.end method

.method public abstract stopSoundContinuous()V
.end method

.method public abstract stopVoiceCommandSound()V
.end method

.method public abstract storageToastShow(Ljava/lang/String;ZZ)V
.end method

.method public abstract storageToasthide(Z)V
.end method

.method public abstract storePreviousResolution(Ljava/lang/String;)V
.end method

.method public abstract swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V
.end method

.method public abstract switchCameraId(I)V
.end method

.method public abstract toast(I)V
.end method

.method public abstract toast(Ljava/lang/String;)V
.end method

.method public abstract toast(Ljava/lang/String;Z)V
.end method

.method public abstract toastControllerHide(Z)V
.end method

.method public abstract toastLong(Ljava/lang/String;)V
.end method

.method public abstract toastMiddleLong(Ljava/lang/String;)V
.end method

.method public abstract unregisterCAFCallback()V
.end method

.method public abstract unregisterObjectCallback()V
.end method

.method public abstract updateAllBars(II)V
.end method

.method public abstract updateAudioIndicator()V
.end method

.method public abstract updateAudiozoom(ZI)V
.end method

.method public abstract updateDualRecordingSelection()Z
.end method

.method public abstract updateEffectSelection()Z
.end method

.method public abstract updateFlashIndicator(ZLjava/lang/String;)V
.end method

.method public abstract updateFocusIndicator()V
.end method

.method public abstract updateGpsIndicator()V
.end method

.method public abstract updateModeMenuIndicator()V
.end method

.method public abstract updateModeMenuIndicator(Ljava/lang/String;)V
.end method

.method public abstract updateNavigationBarShape()V
.end method

.method public abstract updateRemainIndicator()V
.end method

.method public abstract updateSceneIndicator(ZLjava/lang/String;)V
.end method

.method public abstract updateSizeIndicator()V
.end method

.method public abstract updateSmartZoomRecordingSelection()Z
.end method

.method public abstract updateStabilizationIndicator()V
.end method

.method public abstract updateStorageIndicator()V
.end method

.method public abstract updateThumbnailButton()V
.end method

.method public abstract updateThumbnailButtonVisibility()V
.end method

.method public abstract updateTimerIndicator()V
.end method

.method public abstract updateVoiceShutterIndicator(Z)V
.end method

.method public abstract waitAvailableQueueCount(I)V
.end method

.method public abstract waitSaveImageThreadDone()V
.end method

.method public abstract waitStopRecordingEffectThreadDone()V
.end method
