.class Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/morphopanorama/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRunnable"
.end annotation


# static fields
.field public static final EVENT_ID_AVAILABLE:I = 0x0

.field public static final EVENT_ID_RENDER:I = 0x2

.field public static final EVENT_ID_REQUEST_EVENT:I = 0x3

.field public static final EVENT_ID_SIZE_CHANGED:I = 0x1


# instance fields
.field private mHeight:I

.field private mId:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTask:Ljava/lang/Runnable;

.field private mWidth:I

.field final synthetic this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;I)V
    .locals 0
    .param p2, "id"    # I

    .prologue
    .line 215
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mId:I

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;ILandroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 219
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mId:I

    .line 221
    iput-object p3, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 222
    iput p4, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mWidth:I

    .line 223
    iput p5, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mHeight:I

    .line 224
    return-void
.end method

.method public constructor <init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mId:I

    .line 212
    iput-object p2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mTask:Ljava/lang/Runnable;

    .line 213
    return-void
.end method

.method private gl_process()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 238
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$300(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mId:I

    packed-switch v0, :pswitch_data_0

    .line 295
    :cond_1
    :goto_0
    return-void

    .line 243
    :pswitch_0
    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_ID_CREATE start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    new-instance v1, Lcom/lge/morpho/utils/opengl/EGLHandler;

    invoke-direct {v1}, Lcom/lge/morpho/utils/opengl/EGLHandler;-><init>()V

    # setter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0, v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$402(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Lcom/lge/morpho/utils/opengl/EGLHandler;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    .line 246
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$000(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/GLESVersion;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v2}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$500(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/morpho/utils/opengl/EGLHandler;->initialize(Lcom/lge/morpho/utils/opengl/GLESVersion;Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 247
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGLESVersion:Lcom/lge/morpho/utils/opengl/GLESVersion;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$000(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/GLESVersion;

    move-result-object v0

    sget-object v1, Lcom/lge/morpho/utils/opengl/GLESVersion;->GLES10:Lcom/lge/morpho/utils/opengl/GLESVersion;

    if-ne v0, v1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/morpho/utils/opengl/EGLHandler;->getGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    # setter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v0, v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$602(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Ljavax/microedition/khronos/opengles/GL10;)Ljavax/microedition/khronos/opengles/GL10;

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/lge/morpho/utils/opengl/EGLHandler;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 252
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->bind()V

    .line 253
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$300(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$600(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v2}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/morpho/utils/opengl/EGLHandler;->getConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 254
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$300(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$600(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget v2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mWidth:I

    iget v3, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 255
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->unbind()V

    .line 256
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # setter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mIsAvailable:Z
    invoke-static {v0, v6}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$702(Lcom/lge/morpho/app/morphopanorama/GLTextureView;Z)Z

    .line 257
    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_ID_CREATE end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :pswitch_1
    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_ID_SIZE_CHANGE start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "w:%d h:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/lge/morpho/utils/opengl/EGLHandler;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 265
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->bind()V

    .line 266
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$300(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$600(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget v2, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mWidth:I

    iget v3, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 267
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$300(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$600(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 268
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->swapBuffers()V

    .line 269
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->unbind()V

    .line 270
    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_ID_SIZE_CHANGE end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :pswitch_2
    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_ID_RENDER start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mIsAvailable:Z
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$700(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->bind()V

    .line 278
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRenderer:Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$300(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mGL:Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$600(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 279
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->swapBuffers()V

    .line 280
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->unbind()V

    .line 281
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$800(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EVENT_ID_RENDER end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :pswitch_3
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mIsAvailable:Z
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$700(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->bind()V

    .line 289
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 290
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mEGLHandler:Lcom/lge/morpho/utils/opengl/EGLHandler;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$400(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Lcom/lge/morpho/utils/opengl/EGLHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/utils/opengl/EGLHandler;->unbind()V

    goto/16 :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getEventId()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->mId:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mLockObj:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$200(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 233
    :try_start_0
    invoke-direct {p0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->gl_process()V

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
