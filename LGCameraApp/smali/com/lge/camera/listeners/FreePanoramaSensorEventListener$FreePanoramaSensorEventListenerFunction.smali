.class public interface abstract Lcom/lge/camera/listeners/FreePanoramaSensorEventListener$FreePanoramaSensorEventListenerFunction;
.super Ljava/lang/Object;
.source "FreePanoramaSensorEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FreePanoramaSensorEventListenerFunction"
.end annotation


# virtual methods
.method public abstract getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;
.end method

.method public abstract getPanoramaState()I
.end method

.method public abstract getSensorFusionMode()I
.end method

.method public abstract setPanoramaEngineState(I)V
.end method

.method public abstract setSensorCorrectionGuideCounter(I)V
.end method

.method public abstract setVisibleResetButton(Z)V
.end method

.method public abstract setVisibleSensorCorrectionGuide(Z)V
.end method

.method public abstract setVisibleTakingGuide(Z)V
.end method
