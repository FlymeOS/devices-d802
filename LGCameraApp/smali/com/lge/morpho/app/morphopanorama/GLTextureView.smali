.class public Lcom/lge/morpho/app/morphopanorama/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;,
        Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;,
        Lcom/lge/morpho/app/morphopanorama/GLTextureView$DefaultEGLContextFactory;,
        Lcom/lge/morpho/app/morphopanorama/GLTextureView$EGLConfigChooser;,
        Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final RENDERMODE_WHEN_DIRTY:I


# instance fields
.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;

.field private mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

.field private final mGLThreadLockObj:Ljava/lang/Object;

.field private mIsAvailable:Z

.field private final mLockObj:Ljava/lang/Object;

.field private mRenderMode:I

.field private mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

.field private final mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mLockObj:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThreadLockObj:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    invoke-direct {p0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->initialize()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mLockObj:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThreadLockObj:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-direct {p0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->initialize()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mLockObj:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThreadLockObj:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    invoke-direct {p0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->initialize()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/GLESVersion;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Lcom/lge/morpho/utils/opengl/EGLHandler;)Lcom/lge/morpho/utils/opengl/EGLHandler;
    .locals 0
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;
    .param p1, "x1"    # Lcom/lge/morpho/utils/opengl/EGLHandler;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;
    .locals 0
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;
    .param p1, "x1"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mIsAvailable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mIsAvailable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 74
    sget-object v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES10:Lcom/lge/morpho/utils/opengl/GLESVersion;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderMode:I

    .line 76
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 135
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceTextureAvailable start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "w:%d h:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput p2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mSurfaceWidth:I

    .line 137
    iput p3, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mSurfaceHeight:I

    .line 139
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThreadLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    invoke-direct {v0, p0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;-><init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    .line 143
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v6, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    new-instance v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;-><init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;ILandroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v6, v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->queueEvent(Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;)V

    .line 145
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureAvailable end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 150
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThreadLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->finish()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    .line 157
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->release()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;

    .line 163
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mIsAvailable:Z

    .line 164
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureDestroyed end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    return v0

    .line 157
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 164
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 171
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceTextureSizeChanged start "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "w:%d h:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mSurfaceWidth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mSurfaceHeight:I

    if-eq v0, p3, :cond_1

    .line 173
    :cond_0
    iput p2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mSurfaceWidth:I

    .line 174
    iput p3, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mSurfaceHeight:I

    .line 175
    iget-object v6, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    new-instance v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;-><init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;ILandroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v6, v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->queueEvent(Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;)V

    .line 177
    :cond_1
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureSizeChanged end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 182
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureUpdated"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queueEvent"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThreadLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    new-instance v2, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;

    invoke-direct {v2, p0, p1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;-><init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->queueEvent(Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;)V

    .line 121
    :cond_0
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestRender()V
    .locals 4

    .prologue
    .line 125
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "requestRender"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThreadLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLThread:Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;

    new-instance v2, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;-><init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;I)V

    invoke-virtual {v0, v2}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->queueEvent(Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;)V

    .line 130
    :cond_0
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEGLContextClientVersion(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEGLContextClientVersion version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported version"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    sget-object v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES10:Lcom/lge/morpho/utils/opengl/GLESVersion;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;

    .line 86
    :goto_0
    return-void

    .line 82
    :pswitch_1
    sget-object v0, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES20:Lcom/lge/morpho/utils/opengl/GLESVersion;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 2
    .param p1, "factory"    # Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .prologue
    .line 89
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setEGLContextFactory "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 91
    return-void
.end method

.method public setRenderMode(I)V
    .locals 3
    .param p1, "render_mode"    # I

    .prologue
    .line 110
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iput p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderMode:I

    .line 112
    return-void
.end method

.method public setRenderer(Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    .prologue
    .line 94
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setRenderer"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$DefaultEGLContextFactory;

    invoke-direct {v0, p0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$DefaultEGLContextFactory;-><init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    .line 99
    return-void
.end method
