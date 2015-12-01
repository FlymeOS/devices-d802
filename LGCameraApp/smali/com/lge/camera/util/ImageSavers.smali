.class public Lcom/lge/camera/util/ImageSavers;
.super Ljava/lang/Thread;
.source "ImageSavers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;
    }
.end annotation


# instance fields
.field private mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

.field private mCount:I

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/util/SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLimit:I

.field private mStop:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;I)V
    .locals 1
    .param p1, "callback"    # Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;
    .param p2, "queueCount"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    const/16 v0, 0x28

    iput v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    .line 29
    iput p2, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    .line 32
    invoke-virtual {p0}, Lcom/lge/camera/util/ImageSavers;->start()V

    .line 33
    return-void
.end method


# virtual methods
.method public addImage([BLandroid/graphics/Bitmap;IZZ)Z
    .locals 8
    .param p1, "data"    # [B
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "imageRotationDegree"    # I
    .param p4, "isSetLastThumb"    # Z
    .param p5, "isBurstFirst"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    invoke-interface {v0}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->isStorageFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 50
    :cond_1
    iget v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    .line 52
    new-instance v1, Lcom/lge/camera/util/SaveRequest;

    invoke-direct {v1}, Lcom/lge/camera/util/SaveRequest;-><init>()V

    .line 53
    .local v1, "sr":Lcom/lge/camera/util/SaveRequest;
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->setSaveRequest(Lcom/lge/camera/util/SaveRequest;[BLandroid/graphics/Bitmap;IZZ)V

    .line 56
    monitor-enter p0

    .line 57
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_2

    .line 59
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v7

    .line 61
    .local v7, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    .end local v7    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 64
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/util/ImageSavers;->waitDone()V

    .line 146
    monitor-enter p0

    .line 147
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lge/camera/util/ImageSavers;->mStop:Z

    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/util/ImageSavers;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_0
    iput-object v4, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    .line 156
    iput-object v4, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    .line 157
    return-void

    .line 149
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
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

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    return v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 76
    :goto_0
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    iget-boolean v2, p0, Lcom/lge/camera/util/ImageSavers;->mStop:Z

    if-eqz v2, :cond_0

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/util/SaveRequest;

    .line 94
    .local v1, "sr":Lcom/lge/camera/util/SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    invoke-interface {v2, v1}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->saveAndAddImageForImageSavers(Lcom/lge/camera/util/SaveRequest;)V

    .line 100
    :cond_2
    monitor-enter p0

    .line 101
    :try_start_4
    iget v2, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/ImageSavers;->mCount:I

    .line 102
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mCb:Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;

    invoke-interface {v2}, Lcom/lge/camera/util/ImageSavers$ImageSaverCallback;->doAfterSaveImageSavers()V

    .line 107
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public waitAvailableQueueCount(I)V
    .locals 5
    .param p1, "availableCount"    # I

    .prologue
    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    if-le p1, v1, :cond_0

    .line 128
    const-string v1, "CameraApp"

    const-string v2, "Error! availableCount must be less than Limit!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    monitor-exit p0

    .line 141
    :goto_0
    return-void

    .line 131
    :cond_0
    :goto_1
    iget v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    iget-object v2, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, p1, :cond_1

    .line 132
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imagesaver available Que Count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageSavers;->mQueueLimit:I

    iget-object v4, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Wait..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
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

    goto :goto_1

    .line 140
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public waitDone()V
    .locals 4

    .prologue
    .line 113
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitDone start : Qsize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    monitor-enter p0

    .line 115
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/util/ImageSavers;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
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

    .line 122
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    return-void
.end method
