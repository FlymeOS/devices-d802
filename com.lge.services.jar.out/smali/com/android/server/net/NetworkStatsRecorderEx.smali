.class public Lcom/android/server/net/NetworkStatsRecorderEx;
.super Lcom/android/server/net/NetworkStatsRecorder;
.source "NetworkStatsRecorderEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "rotator"    # Lcom/android/internal/util/FileRotator;
    .param p3, "dropBox"    # Landroid/os/DropBoxManager;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "bucketDuration"    # J
    .param p7, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FileRotator;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    .line 21
    return-void
.end method


# virtual methods
.method public clearUsageByTemplateLocked(Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 28
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mRotator:Lcom/android/internal/util/FileRotator;

    new-instance v5, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;

    iget-wide v6, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mBucketDuration:J

    invoke-direct {v5, v6, v7, p1}, Lcom/android/server/net/NetworkStatsRecorderEx$ClearUsageByTemplateRewriter;-><init>(JLandroid/net/NetworkTemplate;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/util/FileRotator;->rewriteAll(Lcom/android/internal/util/FileRotator$Rewriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mPending:Lcom/android/server/net/NetworkStatsCollection;

    check-cast v2, Lcom/android/server/net/NetworkStatsCollectionEx;

    .line 39
    .local v2, "pending":Lcom/android/server/net/NetworkStatsCollectionEx;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mSinceBoot:Lcom/android/server/net/NetworkStatsCollection;

    check-cast v3, Lcom/android/server/net/NetworkStatsCollectionEx;

    .line 40
    .local v3, "sinceBoot":Lcom/android/server/net/NetworkStatsCollectionEx;
    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkStatsCollectionEx;->clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z

    .line 41
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkStatsCollectionEx;->clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z

    .line 44
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mLastSnapshot:Landroid/net/NetworkStats;

    if-eqz v4, :cond_0

    .line 45
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mLastSnapshot:Landroid/net/NetworkStats;

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, v5}, Landroid/net/NetworkStats;->withoutUids([I)Landroid/net/NetworkStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mLastSnapshot:Landroid/net/NetworkStats;

    .line 48
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mComplete:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsRecorderEx;->mComplete:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollectionEx;

    move-object v0, v4

    .line 49
    .local v0, "complete":Lcom/android/server/net/NetworkStatsCollectionEx;
    :goto_1
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsCollectionEx;->clearUsageByTemplate(Landroid/net/NetworkTemplate;)Z

    .line 52
    :cond_1
    return-void

    .line 29
    .end local v0    # "complete":Lcom/android/server/net/NetworkStatsCollectionEx;
    .end local v2    # "pending":Lcom/android/server/net/NetworkStatsCollectionEx;
    .end local v3    # "sinceBoot":Lcom/android/server/net/NetworkStatsCollectionEx;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "NetworkStatsRecorderEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem clearing template:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorderEx;->recoverFromWtf()V

    goto :goto_0

    .line 32
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "NetworkStatsRecorderEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem clearing template:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsRecorderEx;->recoverFromWtf()V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "pending":Lcom/android/server/net/NetworkStatsCollectionEx;
    .restart local v3    # "sinceBoot":Lcom/android/server/net/NetworkStatsCollectionEx;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
