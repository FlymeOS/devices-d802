.class Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;
.super Ljava/lang/Object;
.source "LgeGpsConstants.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LgeGpsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GPSSoundPlayer"
.end annotation


# static fields
.field private static final mGPSSound:Ljava/lang/String; = "/system/media/audio/ui/GPS_Alert.ogg"


# instance fields
.field private mAudioStreamType:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mSoundId:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mAudioStreamType:I

    .line 544
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 592
    return-void

    .line 590
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 549
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 551
    :cond_0
    monitor-enter p0

    .line 553
    :try_start_0
    monitor-exit p0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 568
    monitor-enter p0

    .line 570
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    :goto_0
    iput-object v1, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 580
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 581
    iput-object v1, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 583
    :cond_1
    return-void

    .line 570
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 573
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 516
    const-string v1, "/system/media/audio/ui/GPS_Alert.ogg"

    .line 517
    .local v1, "soundFilePath":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 519
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mAudioStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 520
    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 529
    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    monitor-enter p0

    .line 537
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 538
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "LgeGpsConstants"

    const-string v3, "Please, check sound file path!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 530
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 531
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "LgeGpsConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting up sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mSoundId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    iget-object v2, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 538
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 559
    :cond_0
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/server/location/LgeGpsConstants$GPSSoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 563
    :cond_1
    monitor-exit p0

    .line 564
    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
