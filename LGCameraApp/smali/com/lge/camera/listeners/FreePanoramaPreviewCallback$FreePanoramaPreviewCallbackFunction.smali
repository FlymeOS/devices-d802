.class public interface abstract Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;
.super Ljava/lang/Object;
.source "FreePanoramaPreviewCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FreePanoramaPreviewCallbackFunction"
.end annotation


# virtual methods
.method public abstract checkOK(ILjava/lang/String;Z)Z
.end method

.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getCameraBuff()[B
.end method

.method public abstract getCameraBuffID()I
.end method

.method public abstract getCameraDevice()Landroid/hardware/Camera;
.end method

.method public abstract getFinishFlg()Z
.end method

.method public abstract getGLPanoramaView()Lcom/lge/morpho/app/morphopanorama/GLTextureView;
.end method

.method public abstract getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
.end method

.method public abstract getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;
.end method

.method public abstract getPanoramaEngineState()I
.end method

.method public abstract getPanoramaState()I
.end method

.method public abstract getPreviewSize()[I
.end method

.method public abstract getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;
.end method

.method public abstract getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;
.end method

.method public abstract setCameraBuffID(I)V
.end method

.method public abstract setPanoramaEngineState(I)V
.end method

.method public abstract setPanoramaState(I)V
.end method

.method public abstract setSensorCorrectionGuideCounter(I)V
.end method

.method public abstract setShutterButtonImage(Z)V
.end method
