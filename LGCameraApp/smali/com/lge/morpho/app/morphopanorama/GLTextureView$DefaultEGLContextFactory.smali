.class public Lcom/lge/morpho/app/morphopanorama/GLTextureView$DefaultEGLContextFactory;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/morphopanorama/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultEGLContextFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$DefaultEGLContextFactory;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 188
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$DefaultEGLContextFactory;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$000(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/GLESVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/morpho/utils/opengl/GLESVersion;->getContextAttributeList()[I

    move-result-object v1

    invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 193
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method
