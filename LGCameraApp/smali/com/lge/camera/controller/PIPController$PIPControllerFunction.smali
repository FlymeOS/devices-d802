.class public interface abstract Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
.super Ljava/lang/Object;
.source "PIPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PIPController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PIPControllerFunction"
.end annotation


# virtual methods
.method public abstract doCommandDelayed(Ljava/lang/String;J)V
.end method

.method public abstract findViewById(I)Landroid/view/View;
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getFocusAreaHeight()I
.end method

.method public abstract getOrientationDegree()I
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getVideoState()I
.end method

.method public abstract inflateStub(I)Landroid/view/View;
.end method

.method public abstract isCamcorderRotation(Z)Z
.end method

.method public abstract isConfigureLandscape()Z
.end method

.method public abstract isDualCameraActive()Z
.end method

.method public abstract isDualRecordingActive()Z
.end method

.method public abstract isSmartZoomRecordingActive()Z
.end method

.method public abstract quickFunctionControllerRefresh(Z)V
.end method

.method public abstract setButtonRemainRefresh()V
.end method

.method public abstract setMainButtonVisible(Z)V
.end method

.method public abstract setQuickButtonForcedDisable(Z)V
.end method

.method public abstract setQuickButtonMenuEnable(ZZ)V
.end method

.method public abstract setQuickFunctionAllMenuEnabled(ZZ)V
.end method

.method public abstract setSmartZoomFocusViewPosition(II)V
.end method

.method public abstract setSwitcherVisible(Z)V
.end method

.method public abstract setThumbnailButtonVisibility(I)V
.end method

.method public abstract startPIPFrameSubMenuRotation(I)V
.end method
