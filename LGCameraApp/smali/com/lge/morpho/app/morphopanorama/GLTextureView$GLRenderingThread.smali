.class public Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/morpho/app/morphopanorama/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLRenderingThread"
.end annotation


# static fields
.field private static final TIMEOUT:I = 0x3


# instance fields
.field private final mEexecutor:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)V
    .locals 1

    .prologue
    .line 302
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->mEexecutor:Ljava/util/concurrent/ExecutorService;

    .line 304
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 307
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->mEexecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->mEexecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->mEexecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 314
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public queueEvent(Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;)V
    .locals 2
    .param p1, "r"    # Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRunnable;->getEventId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$800(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->this$0:Lcom/lge/morpho/app/morphopanorama/GLTextureView;

    # getter for: Lcom/lge/morpho/app/morphopanorama/GLTextureView;->mRequestedRendering:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lge/morpho/app/morphopanorama/GLTextureView;->access$800(Lcom/lge/morpho/app/morphopanorama/GLTextureView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/GLTextureView$GLRenderingThread;->mEexecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
