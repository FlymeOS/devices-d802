.class Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "OpenGLSurfaceView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/OpenGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraPreviewCallback"


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/OpenGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/OpenGLSurfaceView;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    const-string v0, "CameraPreviewCallback"

    const-string v1, "OnPreview With NULL data"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/OpenGLSurfaceView;

    # getter for: Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
    invoke-static {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->access$000(Lcom/lge/camera/components/OpenGLSurfaceView;)Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/OpenGLSurfaceView;

    # getter for: Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
    invoke-static {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->access$000(Lcom/lge/camera/components/OpenGLSurfaceView;)Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->processPreviewFrameAsync([B)V

    goto :goto_0
.end method
