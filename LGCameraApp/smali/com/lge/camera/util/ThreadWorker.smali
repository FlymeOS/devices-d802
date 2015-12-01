.class public Lcom/lge/camera/util/ThreadWorker;
.super Ljava/lang/Thread;
.source "ThreadWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;,
        Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;
    }
.end annotation


# instance fields
.field private mJob:Ljava/lang/Runnable;

.field private mNeedWaitByJoin:Z

.field private mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

.field private mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mainJob"    # Ljava/lang/Runnable;
    .param p3, "needWaitEnd"    # Z

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    .line 32
    iput-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/util/ThreadWorker;->mNeedWaitByJoin:Z

    .line 42
    invoke-virtual {p0, p1}, Lcom/lge/camera/util/ThreadWorker;->setName(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    .line 44
    iput-boolean p3, p0, Lcom/lge/camera/util/ThreadWorker;->mNeedWaitByJoin:Z

    .line 45
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 76
    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadWorker finish-join : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/util/ThreadWorker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/util/ThreadWorker;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
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

.method public isWaitUntilJoin()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/camera/util/ThreadWorker;->mNeedWaitByJoin:Z

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    invoke-interface {v0}, Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;->onStartWork()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 56
    iput-object v1, p0, Lcom/lge/camera/util/ThreadWorker;->mJob:Ljava/lang/Runnable;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    invoke-interface {v0}, Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;->onEndWork()V

    .line 61
    iput-object v1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    invoke-interface {v0, p0}, Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;->onWorkingListRemove(Lcom/lge/camera/util/ThreadWorker;)V

    .line 66
    iput-object v1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    .line 68
    :cond_3
    return-void
.end method

.method public setWorkerListener(Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkerListener:Lcom/lge/camera/util/ThreadWorker$OnWorkerListener;

    .line 26
    return-void
.end method

.method public setWorkingListListener(Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/util/ThreadWorker;->mWorkingListListener:Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;

    .line 36
    return-void
.end method
