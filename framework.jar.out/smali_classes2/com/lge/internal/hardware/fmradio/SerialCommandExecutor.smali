.class public Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SerialCommandExecutor.java"


# static fields
.field static final T:Ljava/lang/String; = "FMFRW_SerialCommandExecutor"


# instance fields
.field private volatile currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 26
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/lge/internal/hardware/fmradio/CommandCase;

    move-object v1, v0

    iput-object v1, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    .line 56
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized confrontCurrentCaseWith(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    .locals 2
    .param p1, "newCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    const/4 v0, 0x1

    .line 78
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->isThereCurrentCase()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/CommandCase;->isRevoked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 79
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {p1, v1}, Lcom/lge/internal/hardware/fmradio/CommandCase;->defeats(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoke()V

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {p1, v1}, Lcom/lge/internal/hardware/fmradio/CommandCase;->defeatedBy(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method confrontQueuedCasesWith(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    .locals 4
    .param p1, "newCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .local v2, "r":Ljava/lang/Runnable;
    move-object v0, v2

    .line 86
    check-cast v0, Lcom/lge/internal/hardware/fmradio/CommandCase;

    .line 87
    .local v0, "cc":Lcom/lge/internal/hardware/fmradio/CommandCase;
    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->isRevoked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    invoke-virtual {p1, v0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->defeats(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoke()V

    .line 89
    :cond_1
    invoke-virtual {p1, v0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->defeatedBy(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 91
    .end local v0    # "cc":Lcom/lge/internal/hardware/fmradio/CommandCase;
    .end local v2    # "r":Ljava/lang/Runnable;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method confrontWith(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    .locals 1
    .param p1, "newCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->confrontCurrentCaseWith(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->confrontQueuedCasesWith(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public execute(Lcom/lge/internal/hardware/fmradio/CommandCase;)V
    .locals 3
    .param p1, "command"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 41
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->confrontWith(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "FMFRW_SerialCommandExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command queued: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->queueContentsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v0, "FMFRW_SerialCommandExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command defeated and ignored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "FMFRW_SerialCommandExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->queueContentsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p1}, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoke()V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 33
    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local p1    # "command":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ccx":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 34
    .end local v0    # "ccx":Ljava/lang/ClassCastException;
    .restart local p1    # "command":Ljava/lang/Runnable;
    :cond_0
    :try_start_1
    check-cast p1, Lcom/lge/internal/hardware/fmradio/CommandCase;

    .end local p1    # "command":Ljava/lang/Runnable;
    invoke-virtual {p0, p1}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->execute(Lcom/lge/internal/hardware/fmradio/CommandCase;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    return-void
.end method

.method isThereCurrentCase()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs declared-synchronized notifyCallback(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 3
    .param p2, "results"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/internal/hardware/fmradio/CommandCase;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "resultCommandCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lge/internal/hardware/fmradio/CommandCase;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "FMFRW_SerialCommandExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command queue contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->queueContentsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->isThereCurrentCase()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {v0, p1, p2}, Lcom/lge/internal/hardware/fmradio/CommandCase;->notifyCallback(Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queueContentsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v3, "[["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .local v1, "c":Ljava/lang/Runnable;
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 116
    .end local v1    # "c":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public revoke(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lge/internal/hardware/fmradio/CommandCase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "revokeCommandCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lge/internal/hardware/fmradio/CommandCase;>;"
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->isThereCurrentCase()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/SerialCommandExecutor;->currentCase:Lcom/lge/internal/hardware/fmradio/CommandCase;

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoke()V

    .line 106
    return-void

    .line 105
    :cond_0
    new-instance v0, Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;

    invoke-direct {v0}, Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;-><init>()V

    throw v0
.end method
