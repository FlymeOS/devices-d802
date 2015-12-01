.class public interface abstract Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
.super Ljava/lang/Object;
.source "OpenGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/OpenGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GLSurfaceListener"
.end annotation


# virtual methods
.method public abstract isPreviewing()Z
.end method

.method public abstract onPreviewFrame([BLandroid/hardware/Camera;)V
.end method

.method public abstract startPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end method
