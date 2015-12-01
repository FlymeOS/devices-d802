.class public abstract Lcom/lge/camera/command/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final APPLY_ALL_SETTINGS:Ljava/lang/String; = "com.lge.camera.command.setting.ApplyAllSettings"

.field public static final BEAUTY_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaBeautyShot"

.field public static final CAMERA_ANTI_BANDING:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraAntibanding"

.field public static final CAMERA_AUTO_REVIEW:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraShowCapturedImage"

.field public static final CAMERA_COLOR_EFFECT:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraColorEffect"

.field public static final CAMERA_FLASH_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetFlashMode"

.field public static final CAMERA_FOCUS_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraFocusMode"

.field public static final CAMERA_GEO_TAG:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraGeoTag"

.field public static final CAMERA_IA_FLASH_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetSmartCameraFlashMode"

.field public static final CAMERA_IMAGE_SIZE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraImageSize"

.field public static final CAMERA_ISO:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraIso"

.field public static final CAMERA_SCENE_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetSceneMode"

.field public static final CAMERA_SHOT_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraShotMode"

.field public static final CAMERA_SHUTTER_SOUND:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraShutterSound"

.field public static final CAMERA_TIMER:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraTimer"

.field public static final CAMERA_WHITE_BALANCE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraWhiteBalance"

.field public static final CHANGE_TO_CAMCORDER:Ljava/lang/String; = "com.lge.camera.command.ChangeToCamcorder"

.field public static final CHANGE_TO_CAMERA:Ljava/lang/String; = "com.lge.camera.command.ChangeToCamera"

.field public static final CLEAR_SCREEN:Ljava/lang/String; = "com.lge.camera.command.ClearScreen"

.field public static final CLEAR_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetClearShot"

.field public static final CLICK_QUICK_FUNCTION_BUTTON1:Ljava/lang/String; = "com.lge.camera.command.ClickQuickFunctionButton1"

.field public static final CLICK_QUICK_FUNCTION_BUTTON2:Ljava/lang/String; = "com.lge.camera.command.ClickQuickFunctionButton2"

.field public static final CLICK_QUICK_FUNCTION_BUTTON3:Ljava/lang/String; = "com.lge.camera.command.ClickQuickFunctionButton3"

.field public static final CLICK_QUICK_FUNCTION_BUTTON4:Ljava/lang/String; = "com.lge.camera.command.ClickQuickFunctionButton4"

.field public static final CLICK_QUICK_FUNCTION_BUTTON5:Ljava/lang/String; = "com.lge.camera.command.ClickQuickFunctionButton5"

.field public static final CONTINUOUS_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaContinuousShot"

.field public static final DELETE_PROGRESS_DIALOG:Ljava/lang/String; = "com.lge.camera.command.DeleteProgressDialog"

.field public static final DISPLAY_CAMCORDER_POSTVIEW:Ljava/lang/String; = "com.lge.camera.command.DisplayCamcorderPostview"

.field public static final DISPLAY_CAMERA_POSTVIEW:Ljava/lang/String; = "com.lge.camera.command.DisplayCameraPostview"

.field public static final DISPLAY_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.DisplayPreview"

.field public static final DISPLAY_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.DisplaySettingMenu"

.field public static final DO_AFTER_FULLFRAME_CONTINUOUS:Ljava/lang/String; = "com.lge.camera.command.DoAfterFullFrameContinuous"

.field public static final DO_CAPTURE:Ljava/lang/String; = "com.lge.camera.command.DoCapture"

.field public static final DUAL_CAMERA_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetDualCameraShot"

.field public static final EDIT_ALL_PREF_GEOTAG_OFF:Ljava/lang/String; = "com.lge.camera.command.EditAllPrefGeoTagOff"

.field public static final EDIT_ALL_PREF_GEOTAG_ON:Ljava/lang/String; = "com.lge.camera.command.EditAllPrefGeoTagOn"

.field public static final EXIT_INTERACTION:Ljava/lang/String; = "com.lge.camera.command.ExitInteraction"

.field public static final EXIT_ZOOM_BRIGHTNESS_INTERACTION:Ljava/lang/String; = "com.lge.camera.command.ExitZoomBrightnessInteraction"

.field public static final FREE_PANORAMA_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetFreePanoramaShot"

.field public static final FULL_FRAME_CONTINUOUS_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetFullFrameContinuousShot"

.field public static final GOTO_AUCLOUD:Ljava/lang/String; = "com.lge.camera.command.GotoAUCloud"

.field public static final HDR_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaHDRShot"

.field public static final HIDE_FREE_PANORAMA_GUIDE:Ljava/lang/String; = "com.lge.camera.command.HideFreePanoramaGuide"

.field public static final HIDE_LIVEEFFECT_SUBMENU_DRAWER:Ljava/lang/String; = "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

.field public static final HIDE_LIVE_SNAPSHOT_BUTTON:Ljava/lang/String; = "com.lge.camera.command.HideLiveSnapshotButton"

.field public static final HIDE_MODE_MENU:Ljava/lang/String; = "com.lge.camera.command.HideModeMenu"

.field public static final HIDE_PIP_FRAME_SUB_MENU:Ljava/lang/String; = "com.lge.camera.command.HidePIPFrameSubMenu"

.field public static final HIDE_PIP_SUBWINDOW_RESIZE_HANDLER:Ljava/lang/String; = "com.lge.camera.command.HidePIPResizeHandler"

.field public static final HIDE_QUICK_FUNCTION_DRAG_DROP:Ljava/lang/String; = "com.lge.camera.command.HideQuickFunctionDragDrop"

.field public static final HIDE_QUICK_FUNCTION_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.HideQuickFunctionSettingMenu"

.field public static final HIDE_SETTING_EXPAND_PARENT_SCROLLBAR:Ljava/lang/String; = "com.lge.camera.command.HideSettingExpandParentScrollbar"

.field public static final MAIN_BEAUTY_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaMainBeautyShot"

.field public static final NORMAL_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaNormalShot"

.field public static final ON_DELAY_OFF:Ljava/lang/String; = "com.lge.camera.command.OnDelayOff"

.field public static final PANORAMA_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaPanoramaShot"

.field public static final PAUSE_RECORDING:Ljava/lang/String; = "com.lge.camera.command.PauseRecording"

.field public static final PLANE_PANORAMA_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetPlanePanoramaShot"

.field public static final REFOCUS_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetRefocusShot"

.field public static final RELEASE_TOUCH_FOCUS:Ljava/lang/String; = "com.lge.camera.command.ReleaseTouchFocus"

.field public static final REMOVE_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.RemoveSettingMenu"

.field public static final RESET_FREE_PANORAMA:Ljava/lang/String; = "com.lge.camera.command.ResetFreePanorama"

.field public static final RESET_MENU:Ljava/lang/String; = "com.lge.camera.command.ResetMenu"

.field public static final RESET_MENU_PREPARED:Ljava/lang/String; = "com.lge.camera.command.ResetMenuPrepared"

.field public static final RESTART_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.RestartPreview"

.field public static final RESTORE_OPTIONAL_PARAMETERS:Ljava/lang/String; = "com.lge.camera.command.setting.RestoreOptionalParameters"

.field public static final RESUME_RECORDING:Ljava/lang/String; = "com.lge.camera.command.ResumeRecording"

.field public static final ROTATE:Ljava/lang/String; = "com.lge.camera.command.Rotate"

.field public static final RUN_PANORAMA_START_SYC_TASK:Ljava/lang/String; = "com.lge.camera.command.RunPanoramaStartSyncTask"

.field public static final SELECT_DURATION:Ljava/lang/String; = "com.lge.camera.command.SelectDuration"

.field public static final SELECT_VIDEO_LENGTH:Ljava/lang/String; = "com.lge.camera.command.SelectVideoLength"

.field public static final SET_AUDIO_ZOOM:Ljava/lang/String; = "com.lge.camera.command.setting.SetAudiozoom"

.field public static final SET_BEAUTYSHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetBeautyshot"

.field public static final SET_BRIGHTNESS:Ljava/lang/String; = "com.lge.camera.command.setting.SetBrightness"

.field public static final SET_CAMERA_3D_DEPTH:Ljava/lang/String; = "com.lge.camera.command.setting.setCamera3dDepth"

.field public static final SET_CAMERA_ID_BEFORE_START_INIT:Ljava/lang/String; = "com.lge.camera.command.SetCameraIdBeforeStartInit"

.field public static final SET_CAMERA_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraMode"

.field public static final SET_DUAL_RECORDING:Ljava/lang/String; = "com.lge.camera.command.setting.SetDualRecording"

.field public static final SET_LIVE_EFFECT:Ljava/lang/String; = "com.lge.camera.command.setting.SetLiveEffect"

.field public static final SET_MANUAL_FOCUS:Ljava/lang/String; = "com.lge.camera.command.setting.SetManualFocus"

.field public static final SET_OPTIONAL_PARAMETERS:Ljava/lang/String; = "com.lge.camera.command.setting.SetOptionalParameters"

.field public static final SET_SMART_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetSmartCameraMode"

.field public static final SET_SMART_ZOOM_RECORDING:Ljava/lang/String; = "com.lge.camera.command.setting.SetSmartZoomRecording"

.field public static final SET_STORAGE:Ljava/lang/String; = "com.lge.camera.command.setting.SetStorage"

.field public static final SET_SUPER_ZOOM:Ljava/lang/String; = "com.lge.camera.command.setting.SetSuperZoom"

.field public static final SET_TIMEMACHINE_MODE:Ljava/lang/String; = "com.lge.camera.command.SetTimeMachineMode"

.field public static final SET_UPLUS_BOX:Ljava/lang/String; = "com.lge.camera.command.SetUplusBoxMode"

.field public static final SET_VIDEO_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoRecordMode"

.field public static final SET_VIDEO_STABILIZATION:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoStabilization"

.field public static final SET_VOICE_SHUTTER:Ljava/lang/String; = "com.lge.camera.command.SetVoiceShutterMode"

.field public static final SET_VOLUME_KEY:Ljava/lang/String; = "com.lge.camera.command.setting.SetVolumeKey"

.field public static final SET_WDR_RECORDING:Ljava/lang/String; = "com.lge.camera.command.setting.SetWDRRecording"

.field public static final SET_ZOOM:Ljava/lang/String; = "com.lge.camera.command.setting.SetZoom"

.field public static final SHOW_BEAUTYSHOT:Ljava/lang/String; = "com.lge.camera.command.ShowBeautyshot"

.field public static final SHOW_BRIGHTNESS:Ljava/lang/String; = "com.lge.camera.command.ShowBrightness"

.field public static final SHOW_CAMERA_3D_DEPTH:Ljava/lang/String; = "com.lge.camera.command.showCamera3dDepth"

.field public static final SHOW_GALLERY:Ljava/lang/String; = "com.lge.camera.command.ShowGallery"

.field public static final SHOW_HELP_ACTIVITY:Ljava/lang/String; = "com.lge.camera.command.ShowHelpActivity"

.field public static final SHOW_HELP_GUIDE_POPUP:Ljava/lang/String; = "com.lge.camera.command.ShowHelpGuidePopup"

.field public static final SHOW_LIVEEFFECT_SUBMENU:Ljava/lang/String; = "com.lge.camera.command.ShowLiveEffectSubMenu"

.field public static final SHOW_LIVEEFFECT_SUBMENU_DRAWER:Ljava/lang/String; = "com.lge.camera.command.ShowLiveEffectSubMenuDrawer"

.field public static final SHOW_LIVE_SNAPSHOT_BUTTON:Ljava/lang/String; = "com.lge.camera.command.ShowLiveSnapshotButton"

.field public static final SHOW_MODE_MENU:Ljava/lang/String; = "com.lge.camera.command.ShowModeMenu"

.field public static final SHOW_PIP_FRAME_SUB_MENU:Ljava/lang/String; = "com.lge.camera.command.ShowPIPFrameSubMenu"

.field public static final SHOW_PIP_SUBWINDOW_RESIZE_HANDLER:Ljava/lang/String; = "com.lge.camera.command.ShowPIPResizeHandler"

.field public static final SHOW_PROGRESS_DIALOG:Ljava/lang/String; = "com.lge.camera.command.ShowProgressDialog"

.field public static final SHOW_QUICK_FUNCTION_DRAG_DROP:Ljava/lang/String; = "com.lge.camera.command.ShowQuickFunctionDragDrop"

.field public static final SHOW_QUICK_FUNCTION_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.ShowQuickFunctionSettingMenu"

.field public static final SHOW_RESET_DIALOG:Ljava/lang/String; = "com.lge.camera.command.ShowResetDialog"

.field public static final SHOW_SETTING_BEAUTYSHOT:Ljava/lang/String; = "com.lge.camera.command.ShowSettingBeautyShot"

.field public static final SHOW_SETTING_BRIGHTNESS:Ljava/lang/String; = "com.lge.camera.command.ShowSettingBrightness"

.field public static final SHOW_SETTING_CAMERA_3D_DEPTH:Ljava/lang/String; = "com.lge.camera.command.showSettingCamera3dDepth"

.field public static final SHOW_SETTING_EXPAND_CHILD:Ljava/lang/String; = "com.lge.camera.command.ShowSettingExpandChild"

.field public static final SHOW_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.ShowSettingMenu"

.field public static final SHOW_SETTING_ZOOM:Ljava/lang/String; = "com.lge.camera.command.ShowSettingZoom"

.field public static final SHOW_ZOOM:Ljava/lang/String; = "com.lge.camera.command.ShowZoom"

.field public static final SNAPSHOT_EFFECT:Ljava/lang/String; = "com.lge.camera.command.SnapshotEffect"

.field public static final START_INIT:Ljava/lang/String; = "com.lge.camera.command.StartInit"

.field public static final START_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.StartPreview"

.field public static final START_RECORDING:Ljava/lang/String; = "com.lge.camera.command.StartRecording"

.field public static final STOP_FREE_PANORAMA:Ljava/lang/String; = "com.lge.camera.command.StopFreePanorama"

.field public static final STOP_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.StopPreview"

.field public static final STOP_RECORDING:Ljava/lang/String; = "com.lge.camera.command.StopRecording"

.field public static final SWAP_CAMERA:Ljava/lang/String; = "com.lge.camera.command.SwapCamera"

.field public static final SWAP_CAMERA_DIMENSION:Ljava/lang/String; = "com.lge.camera.command.SwapCameraDimension"

.field public static final TAG:Ljava/lang/String; = "CameraApp"

.field public static final TAKE_PICTURE:Ljava/lang/String; = "com.lge.camera.command.TakePicture"

.field public static final TAKE_PICTURE_IN_RECORDING:Ljava/lang/String; = "com.lge.camera.command.TakePictureInRecording"

.field public static final TIME_MACHINE_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaTimeMachineShot"

.field public static final UPDATE_CAPTURE_BUTTON:Ljava/lang/String; = "com.lge.camera.command.UpdateCaptureButton"

.field public static final UPDATE_RECORDING_TIME:Ljava/lang/String; = "com.lge.camera.command.UpdateRecordingTime"

.field public static final UPDATE_REC_INDICATOR:Ljava/lang/String; = "com.lge.camera.command.UpdateRecIndicator"

.field public static final UPDATE_THUMBNAIL_BUTTON:Ljava/lang/String; = "com.lge.camera.command.UpdateThumbnailButton"

.field public static final VIDEO_COLOR_EFFECT:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoColorEffect"

.field public static final VIDEO_DURATION:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoDuration"

.field public static final VIDEO_IMAGE_SIZE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoImageSize"

.field public static final VIDEO_SCENE_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoSceneMode"

.field public static final VIDEO_VOICE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoVoice"

.field public static final VIDEO_WHITE_BALANCE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoWhiteBalance"


# instance fields
.field private mArgment:Ljava/lang/Object;

.field private mArgment2:Ljava/lang/Object;

.field public mGet:Lcom/lge/camera/ControllerFunction;

.field private mPeriod:J

.field private mPosted:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-wide v2, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    .line 187
    iput-wide v2, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 188
    iput-object v1, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    .line 189
    iput-object v1, p0, Lcom/lge/camera/command/Command;->mArgment2:Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 192
    iput-object v1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 195
    iput-object p1, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    .line 196
    return-void
.end method


# virtual methods
.method protected checkMediator()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract execute()V
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    .line 227
    return-void
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    .line 234
    return-void
.end method

.method public executeNoneParameter()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    .line 213
    return-void
.end method

.method public executeNoneParameter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    .line 220
    return-void
.end method

.method public getArgument()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    return-object v0
.end method

.method protected getPixelFromDimens(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getPosted()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    return v0
.end method

.method public resetStartTime()V
    .locals 2

    .prologue
    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 238
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 245
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 247
    iget-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 250
    :cond_0
    iget-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    iget-wide v2, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 251
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment2:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/Command;->execute(Ljava/lang/Object;)V

    .line 258
    :goto_0
    iget-wide v0, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/lge/camera/util/MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 261
    :cond_1
    return-void

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment2:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mArgment2:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/command/Command;->execute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    goto :goto_0
.end method

.method public setArgument(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public setArgument(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    .line 273
    iput-object p2, p0, Lcom/lge/camera/command/Command;->mArgment2:Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public setPosted(Z)V
    .locals 0
    .param p1, "con"    # Z

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 286
    return-void
.end method

.method public setRepeat(J)V
    .locals 1
    .param p1, "period"    # J

    .prologue
    .line 241
    iput-wide p1, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    .line 242
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method
