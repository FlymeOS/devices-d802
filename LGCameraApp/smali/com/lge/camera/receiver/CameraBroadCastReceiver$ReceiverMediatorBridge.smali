.class public interface abstract Lcom/lge/camera/receiver/CameraBroadCastReceiver$ReceiverMediatorBridge;
.super Ljava/lang/Object;
.source "CameraBroadCastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReceiverMediatorBridge"
.end annotation


# virtual methods
.method public abstract checkCameraShutterSoundLoaded()Z
.end method

.method public abstract checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkStorage(Z)V
.end method

.method public abstract checkStorageController()Z
.end method

.method public abstract clearSettingMenuAndSubMenu()V
.end method

.method public abstract clearSubMenu()V
.end method

.method public abstract doCommand(Ljava/lang/String;)V
.end method

.method public abstract doCommand(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract doCommandDelayed(Ljava/lang/String;J)V
.end method

.method public abstract doCommandUi(Ljava/lang/String;)V
.end method

.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract getActivity()Lcom/lge/camera/CameraActivity;
.end method

.method public abstract getActualBatteryLevel()I
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getApplicationMode()I
.end method

.method public abstract getBatteryLevel()I
.end method

.method public abstract getCameraDevice()Landroid/hardware/Camera;
.end method

.method public abstract getCurrentRecordingTime()J
.end method

.method public abstract getDialogID()I
.end method

.method public abstract getExternalStorageDir()Ljava/lang/String;
.end method

.method public abstract getHandler()Lcom/lge/camera/util/MainHandler;
.end method

.method public abstract getInCaptureProgress()Z
.end method

.method public abstract getParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getPreviewSizeOnDevice()Ljava/lang/String;
.end method

.method public abstract getSettingValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSnapshotRunnable()Ljava/lang/Runnable;
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public abstract getSubMenuMode()I
.end method

.method public abstract getVideoState()I
.end method

.method public abstract hideOptionMenu()V
.end method

.method public abstract inflateView(I)Landroid/view/View;
.end method

.method public abstract isDualRecordingActive()Z
.end method

.method public abstract isFlashOffByHighTemperature()Z
.end method

.method public abstract isOptionMenuShowing()Z
.end method

.method public abstract isPausing()Z
.end method

.method public abstract isPreviewing()Z
.end method

.method public abstract isRecordedLengthTooShort()Z
.end method

.method public abstract isRotateDialogVisible()Z
.end method

.method public abstract onDismissRotateDialog()V
.end method

.method public abstract postOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract postOnUiThread(Ljava/lang/Runnable;J)V
.end method

.method public abstract removePanoramaView()V
.end method

.method public abstract removePostRunnable(Ljava/lang/Object;)V
.end method

.method public abstract setActualBatteryLevel(I)V
.end method

.method public abstract setBatteryIndicator(I)V
.end method

.method public abstract setBatteryLevel(I)V
.end method

.method public abstract setBatteryTemper(I)V
.end method

.method public abstract setBatteryVisibility(I)V
.end method

.method public abstract setBlockTouchByCallPopUp(Z)V
.end method

.method public abstract setButtonRemainEnabled(IZZ)V
.end method

.method public abstract setCurrentSettingMenuEnable(Ljava/lang/String;Z)V
.end method

.method public abstract setFlashOffByHighTemperature(Z)V
.end method

.method public abstract setForced_audiozoom(Z)V
.end method

.method public abstract setHeadsetstate(I)V
.end method

.method public abstract setIsCharging(Z)V
.end method

.method public abstract setMainButtonDisable()V
.end method

.method public abstract setMainButtonEnable()V
.end method

.method public abstract setMediaScanning(Z)V
.end method

.method public abstract setMediaUSBConnectAtStartRecord(Z)V
.end method

.method public abstract setMessageIndicatorReceived(IZ)V
.end method

.method public abstract setOrientationForced(I)V
.end method

.method public abstract setPreferenceMenuEnable(Ljava/lang/String;ZZ)V
.end method

.method public abstract setQuickButtonVisible(IIZ)V
.end method

.method public abstract setSetting(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setSubMenuMode(I)V
.end method

.method public abstract setVoiceMailIndicator(I)V
.end method

.method public abstract showDialogPopup(I)V
.end method

.method public abstract showFocus()Z
.end method

.method public abstract showPanoramaView()V
.end method

.method public abstract startHeatingwarning()V
.end method

.method public abstract stopByUserAction()Z
.end method

.method public abstract stopHeatingwarning()V
.end method

.method public abstract stopRecordingByPausing()V
.end method

.method public abstract storageToasthide(Z)V
.end method

.method public abstract toast(I)V
.end method

.method public abstract toastControllerHide(Z)V
.end method

.method public abstract toastLong(Ljava/lang/String;)V
.end method
