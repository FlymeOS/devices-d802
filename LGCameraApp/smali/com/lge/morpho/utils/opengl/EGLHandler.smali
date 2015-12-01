.class public Lcom/lge/morpho/utils/opengl/EGLHandler;
.super Ljava/lang/Object;
.source "EGLHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/lge/morpho/utils/opengl/EGLHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 5

    .prologue
    .line 101
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bind"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind error -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGLHandler bind failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method

.method public getConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method public getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public initialize(Lcom/lge/morpho/utils/opengl/GLESVersion;Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 6
    .param p1, "version"    # Lcom/lge/morpho/utils/opengl/GLESVersion;
    .param p2, "factory"    # Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .prologue
    .line 30
    sget-object v2, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/morpho/utils/opengl/GLESVersion;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 33
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 34
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 35
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 38
    .local v1, "major_minor":[I
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_1
    new-instance v0, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;

    invoke-direct {v0}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;-><init>()V

    .line 43
    .local v0, "def_chooser":Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v2, v3, p1}, Lcom/lge/morpho/utils/opengl/DefaultEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lcom/lge/morpho/utils/opengl/GLESVersion;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 44
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 45
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "chooseConfig failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_2
    iput-object p2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 50
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    iget-object v3, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 51
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 52
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglCreateContext failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_3
    sget-object v2, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES10:Lcom/lge/morpho/utils/opengl/GLESVersion;

    if-ne p1, v2, :cond_4

    .line 56
    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 58
    :cond_4
    sget-object v2, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "<<< initialize"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "release >>>"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGLHandler release failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 68
    iput-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 72
    iput-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 73
    iput-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 77
    iput-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 79
    :cond_3
    iput-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 80
    iput-object v4, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 81
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "<<< release"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 89
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setSurface >>>"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 94
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_1

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglCreateWindowSurface failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "<<< setSurface"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public swapBuffers()V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "swapBuffers"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapBuffers error -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGLHandler swapBuffers failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 5

    .prologue
    .line 109
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unbind"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/lge/morpho/utils/opengl/EGLHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbind error -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/morpho/utils/opengl/EGLHandler;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EGLHandler unbind failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    return-void
.end method
