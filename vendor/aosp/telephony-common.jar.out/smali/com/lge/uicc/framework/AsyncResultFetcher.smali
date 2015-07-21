.class public Lcom/lge/uicc/framework/AsyncResultFetcher;
.super Ljava/lang/Object;
.source "AsyncResultFetcher.java"


# static fields
.field private static sAsyncResultHandler:Landroid/os/Handler;

.field private static sAsyncResultThread:Landroid/os/HandlerThread;


# instance fields
.field private ar:Landroid/os/AsyncResult;

.field private notified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultThread:Landroid/os/HandlerThread;

    .line 28
    sput-object v0, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z

    .line 52
    sget-object v0, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AsyncResultFetcher"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/lge/uicc/framework/AsyncResultFetcher;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/AsyncResultFetcher;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$302(Lcom/lge/uicc/framework/AsyncResultFetcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/uicc/framework/AsyncResultFetcher;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z

    return p1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AsyncResultFetcher] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/framework/LGUICC;->loge(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected static setup()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncResultFetchter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultThread:Landroid/os/HandlerThread;

    .line 32
    sget-object v0, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v0, Lcom/lge/uicc/framework/AsyncResultFetcher$1;

    sget-object v1, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/uicc/framework/AsyncResultFetcher$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method


# virtual methods
.method protected declared-synchronized getException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AsyncResultFetcher"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized obtainMessage()Landroid/os/Message;
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z

    .line 60
    sget-object v0, Lcom/lge/uicc/framework/AsyncResultFetcher;->sAsyncResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized waitResponse()Z
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z

    if-nez v1, :cond_0

    .line 66
    const-string v1, "wait"

    invoke-static {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->logd(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z

    if-nez v1, :cond_1

    .line 73
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/lge/uicc/framework/LGUICC;->traceStack(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->loge(Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-boolean v1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "interrupted"

    invoke-static {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized waitResponse(J)Z
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->logd(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->loge(Ljava/lang/String;)V

    .line 89
    const/16 v1, 0xa

    invoke-static {v1}, Lcom/lge/uicc/framework/LGUICC;->traceStack(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->loge(Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-boolean v1, p0, Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "interrupted"

    invoke-static {v1}, Lcom/lge/uicc/framework/AsyncResultFetcher;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
