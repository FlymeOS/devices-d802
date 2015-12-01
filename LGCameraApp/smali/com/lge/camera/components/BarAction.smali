.class public interface abstract Lcom/lge/camera/components/BarAction;
.super Ljava/lang/Object;
.source "BarAction.java"


# virtual methods
.method public abstract doCommand(Ljava/lang/String;)V
.end method

.method public abstract doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract doCommandDelayed(Ljava/lang/String;I)V
.end method

.method public abstract doCommandNoneParameter(Ljava/lang/String;)V
.end method

.method public abstract doCommandNoneParameter(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getApplicationMode()I
.end method

.method public abstract getBarPreferenceSettingValue(Ljava/lang/String;)I
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getDegreeInBarAction()I
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getPixelFromDimens(I)I
.end method

.method public abstract getSettingValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getZoomCursorMaxStep()I
.end method

.method public abstract getZoomMaxValue()F
.end method

.method public abstract getZoomRatio()F
.end method

.method public abstract isConfigureLandscape()Z
.end method

.method public abstract isPausing()Z
.end method

.method public abstract isPreviewing()Z
.end method

.method public abstract isSettingViewRemoving()Z
.end method

.method public abstract postOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract removePostRunnable(Ljava/lang/Runnable;)V
.end method

.method public abstract removeScheduledCommand(Ljava/lang/String;)V
.end method

.method public abstract rotateSettingBar(II)V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract setDegreeInBarAction(IIZ)V
.end method

.method public abstract setSetting(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updateAllBars(II)V
.end method
