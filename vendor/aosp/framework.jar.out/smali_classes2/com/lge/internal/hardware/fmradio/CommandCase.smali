.class public abstract Lcom/lge/internal/hardware/fmradio/CommandCase;
.super Ljava/lang/Object;
.source "CommandCase.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final T:Ljava/lang/String; = "FMFRW_CommandCase"


# instance fields
.field final parameters:[Ljava/lang/Object;

.field final policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

.field resultsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private revoked:Z

.field thread:Ljava/lang/Thread;

.field private timeout:J


# direct methods
.method public constructor <init>(Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;[Ljava/lang/Object;J)V
    .locals 3
    .param p1, "policy"    # Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .param p3, "timeout"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->resultsQueue:Ljava/util/concurrent/BlockingQueue;

    .line 49
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->timeout:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    .line 63
    iput-object p1, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    .line 64
    iput-object p2, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->parameters:[Ljava/lang/Object;

    .line 65
    iput-wide p3, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->timeout:J

    .line 66
    return-void
.end method


# virtual methods
.method final defeatedBy(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    .locals 1
    .param p1, "runningCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    invoke-interface {v0, p0, p1}, Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;->fights(Lcom/lge/internal/hardware/fmradio/CommandCase;Lcom/lge/internal/hardware/fmradio/CommandCase;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final defeats(Lcom/lge/internal/hardware/fmradio/CommandCase;)Z
    .locals 1
    .param p1, "runningCase"    # Lcom/lge/internal/hardware/fmradio/CommandCase;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->policy:Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;

    invoke-interface {v0, p0, p1}, Lcom/lge/internal/hardware/fmradio/CommandCasePolicy;->fights(Lcom/lge/internal/hardware/fmradio/CommandCase;Lcom/lge/internal/hardware/fmradio/CommandCase;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized isRevoked()Z
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs notifyCallback(Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
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
    .line 178
    .local p1, "resultCommandCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lge/internal/hardware/fmradio/CommandCase;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;

    invoke-direct {v0}, Lcom/lge/internal/hardware/fmradio/CommandNotInProgressException;-><init>()V

    throw v0

    .line 181
    :cond_1
    invoke-virtual {p0, p2}, Lcom/lge/internal/hardware/fmradio/CommandCase;->notifyCallback([Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method protected final varargs notifyCallback([Ljava/lang/Object;)V
    .locals 3
    .param p1, "results"    # [Ljava/lang/Object;

    .prologue
    .line 185
    const-string v0, "FMFRW_CommandCase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gets notified of a result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/Object;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->resultsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method final declared-synchronized revoke()V
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    const-string v0, "FMFRW_CommandCase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    .line 90
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_2
    const-string v0, "FMFRW_CommandCase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is revoked before running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runRevokePrematurely()V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v3, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    if-eqz v3, :cond_1

    monitor-exit p0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->thread:Ljava/lang/Thread;

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const-string v3, "FMFRW_CommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is started."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->parameters:[Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runCommand([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    const-string v3, "FMFRW_CommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has refused to wait for result."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 150
    :cond_2
    const/4 v1, 0x0

    .line 151
    .local v1, "completed":Z
    :goto_1
    if-nez v1, :cond_0

    .line 153
    :try_start_2
    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->resultsQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v4, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->timeout:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    .local v0, "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_4

    .line 155
    const-string v3, "FMFRW_CommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is notified."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runResult([Ljava/lang/Object;)Z

    move-result v1

    .line 157
    const-string v4, "FMFRW_CommandCase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " result decided: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "finish"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 163
    .end local v0    # "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 165
    .local v2, "ix":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runRevoke()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 166
    const-string v3, "FMFRW_CommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is revoked and terminated."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    .end local v2    # "ix":Ljava/lang/InterruptedException;
    .restart local v0    # "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    :try_start_3
    const-string v3, "continue"

    goto :goto_2

    .line 159
    :cond_4
    const-string v3, "FMFRW_CommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has timed out."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/lge/internal/hardware/fmradio/CommandCase;->runTimeout()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 169
    .end local v0    # "callbackResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v2    # "ix":Ljava/lang/InterruptedException;
    :cond_5
    const-string v3, "FMFRW_CommandCase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be terminated and be waited until done."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected abstract runCommand([Ljava/lang/Object;)Z
.end method

.method protected varargs abstract runResult([Ljava/lang/Object;)Z
.end method

.method protected runRevoke()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected runRevokePrematurely()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method protected runTimeout()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/lge/internal/hardware/fmradio/CommandCase;->revoked:Z

    if-eqz v0, :cond_0

    const-string v0, "(R)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
