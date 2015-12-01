.class public interface abstract Lcom/lge/camera/OrientationInfo$OrientationRotateFunction;
.super Ljava/lang/Object;
.source "OrientationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/OrientationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OrientationRotateFunction"
.end annotation


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getAudiozoomStart()Z
.end method

.method public abstract getHeadsetstate()I
.end method

.method public abstract getVideoState()I
.end method

.method public abstract isCamcorderRotation(Z)Z
.end method

.method public abstract isConfigureLandscape()Z
.end method

.method public abstract isPausing()Z
.end method

.method public abstract setEffectCameraOrientationHint()V
.end method

.method public abstract setEffectRecorderOrientationHint()V
.end method

.method public abstract setOrientationListenerRotate(I)V
.end method

.method public abstract updateAudiozoom(ZI)V
.end method
