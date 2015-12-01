.class public Lcom/lge/camera/components/ProcessorThread;
.super Ljava/lang/Thread;
.source "ProcessorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ProcessorThread$FrameCallback;
    }
.end annotation


# static fields
.field private static final QUEUE_SIZE:I = 0x3

.field private static final THREAD:Ljava/lang/String; = "ProcessorThread"


# instance fields
.field fcount:I

.field fcount1:I

.field private mCb:Lcom/lge/camera/components/ProcessorThread$FrameCallback;

.field private mCheckFps:Z

.field private mCompleteFrame:Z

.field private mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field start:Ljava/util/Date;

.field start1:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/lge/camera/components/ProcessorThread$FrameCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/lge/camera/components/ProcessorThread$FrameCallback;
    .param p2, "priority"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    .line 24
    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mCb:Lcom/lge/camera/components/ProcessorThread$FrameCallback;

    .line 109
    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCheckFps:Z

    .line 110
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->start:Ljava/util/Date;

    .line 111
    iput v1, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->start1:Ljava/util/Date;

    .line 114
    iput v1, p0, Lcom/lge/camera/components/ProcessorThread;->fcount1:I

    .line 29
    iput-object p1, p0, Lcom/lge/camera/components/ProcessorThread;->mCb:Lcom/lge/camera/components/ProcessorThread$FrameCallback;

    .line 30
    invoke-virtual {p0, p2}, Lcom/lge/camera/components/ProcessorThread;->setPriority(I)V

    .line 31
    return-void
.end method

.method private printFps()V
    .locals 8

    .prologue
    .line 117
    iget v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    .line 118
    iget v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    rem-int/lit8 v2, v2, 0x64

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lge/camera/components/ProcessorThread;->start:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v0, v2

    .line 120
    .local v0, "ms":D
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, v0, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->start:Ljava/util/Date;

    .line 122
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    .line 124
    .end local v0    # "ms":D
    :cond_0
    return-void
.end method


# virtual methods
.method public clearThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 80
    iput-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mCb:Lcom/lge/camera/components/ProcessorThread$FrameCallback;

    if-eqz v0, :cond_1

    .line 83
    iput-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCb:Lcom/lge/camera/components/ProcessorThread$FrameCallback;

    .line 85
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->clearThread()V

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getcompleteFrame()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    return v0
.end method

.method public nextFrame([B)Z
    .locals 4
    .param p1, "frame"    # [B

    .prologue
    const/4 v1, 0x1

    .line 64
    iget-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "ProcessorThread stop:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized run()V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    const-string v1, "ProcessorThread"

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ProcessorThread;->setName(Ljava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    const-string v1, "CameraApp"

    const-string v2, "Thread is interrupted."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->clearThread()V

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_1
    monitor-exit p0

    return-void

    .line 44
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCb:Lcom/lge/camera/components/ProcessorThread$FrameCallback;

    if-eqz v1, :cond_2

    .line 45
    iget-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->mCb:Lcom/lge/camera/components/ProcessorThread$FrameCallback;

    iget-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {v2, v1}, Lcom/lge/camera/components/ProcessorThread$FrameCallback;->processFrameOnThread([B)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/lge/camera/components/ProcessorThread;->yield()V

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    .line 56
    iget-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCheckFps:Z

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/lge/camera/components/ProcessorThread;->printFps()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CameraApp"

    const-string v2, "ProcessorThread stop:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->clearThread()V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setCheckFPS(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/lge/camera/components/ProcessorThread;->mCheckFps:Z

    .line 97
    return-void
.end method

.method public setCompleteFrame(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    .line 89
    return-void
.end method
