.class Lcom/lge/media/SmartRingtone$NoiseEstimationThread;
.super Ljava/lang/Object;
.source "SmartRingtone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/SmartRingtone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoiseEstimationThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/media/SmartRingtone;


# direct methods
.method constructor <init>(Lcom/lge/media/SmartRingtone;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkNoiseAverage()V
    .locals 14

    .prologue
    .line 147
    const/16 v10, 0xf

    new-array v7, v10, [I

    .line 148
    .local v7, "tempAverage":[I
    const/4 v8, 0x0

    .line 149
    .local v8, "totalFrameCount":I
    const/4 v9, 0x0

    .line 155
    .local v9, "validFrameCount":I
    const/4 v1, 0x0

    .line 156
    .local v1, "filtInBuf":S
    const/4 v3, 0x0

    .line 158
    .local v3, "filtOutBuf":S
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mExitThread:Z
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$700(Lcom/lge/media/SmartRingtone;)Z

    move-result v10

    if-nez v10, :cond_5

    const/16 v10, 0xf

    if-ge v9, v10, :cond_5

    .line 159
    const/4 v10, 0x0

    aput v10, v7, v9

    .line 160
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    iget-object v11, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v11, v11, Lcom/lge/media/SmartRingtone;->buffer:[S

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget v13, v13, Lcom/lge/media/SmartRingtone;->buffersize:I

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/AudioRecord;->read([SII)I

    .line 163
    const/4 v10, 0x1

    if-lt v8, v10, :cond_4

    .line 164
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget v10, v10, Lcom/lge/media/SmartRingtone;->buffersize:I

    if-ge v5, v10, :cond_3

    .line 166
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->buffer:[S

    aget-short v10, v10, v5

    # getter for: Lcom/lge/media/SmartRingtone;->FILT_NUM:[S
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()[S

    move-result-object v11

    const/4 v12, 0x0

    aget-short v11, v11, v12

    mul-int/2addr v10, v11

    # getter for: Lcom/lge/media/SmartRingtone;->FILT_NUM:[S
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$800()[S

    move-result-object v11

    const/4 v12, 0x1

    aget-short v11, v11, v12

    mul-int/2addr v11, v1

    add-int/2addr v10, v11

    mul-int/lit16 v11, v3, -0x60e4

    sub-int v2, v10, v11

    .line 167
    .local v2, "filtOut":I
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->buffer:[S

    aget-short v1, v10, v5

    .line 168
    shr-int/lit8 v10, v2, 0xf

    int-to-short v3, v10

    .line 170
    if-ltz v3, :cond_0

    .line 171
    aget v10, v7, v9

    add-int/2addr v10, v3

    aput v10, v7, v9

    .line 164
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 173
    :cond_0
    aget v10, v7, v9

    neg-int v11, v3

    add-int/2addr v10, v11

    aput v10, v7, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 200
    .end local v2    # "filtOut":I
    .end local v5    # "j":I
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "smart ringtone caught "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 204
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$900()Z

    move-result v10

    if-eqz v10, :cond_1

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_1
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    .line 206
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$900()Z

    move-result v10

    if-eqz v10, :cond_2

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.release() getState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    .line 209
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 177
    .restart local v5    # "j":I
    :cond_3
    :try_start_2
    aget v10, v7, v9

    iget-object v11, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget v11, v11, Lcom/lge/media/SmartRingtone;->buffersize:I

    div-int/2addr v10, v11

    aput v10, v7, v9

    .line 179
    add-int/lit8 v9, v9, 0x1

    .line 182
    .end local v5    # "j":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 185
    :cond_5
    if-eqz v9, :cond_7

    .line 186
    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$300()I

    move-result v6

    .line 188
    .local v6, "prevNoiseAverage":I
    const/4 v10, 0x0

    # setter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$302(I)I

    .line 189
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v9, :cond_6

    .line 190
    aget v10, v7, v4

    # += operator for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v10}, Lcom/lge/media/SmartRingtone;->access$312(I)I

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 192
    :cond_6
    # /= operator for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v9}, Lcom/lge/media/SmartRingtone;->access$336(I)I

    .line 194
    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$300()I

    move-result v10

    if-nez v10, :cond_7

    .line 195
    # setter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {v6}, Lcom/lge/media/SmartRingtone;->access$302(I)I

    .line 198
    .end local v4    # "i":I
    .end local v6    # "prevNoiseAverage":I
    :cond_7
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$900()Z

    move-result v10

    if-eqz v10, :cond_8

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " mNoiseAverage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$300()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " frameCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :cond_8
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V

    .line 204
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$900()Z

    move-result v10

    if-eqz v10, :cond_9

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.stop() getRecordingState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_9
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v10, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v10}, Landroid/media/AudioRecord;->release()V

    .line 206
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$900()Z

    move-result v10

    if-eqz v10, :cond_a

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arec.release() getState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v12, v12, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v12}, Landroid/media/AudioRecord;->getState()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_a
    iget-object v10, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    goto/16 :goto_3

    .line 203
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v11, v11, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v11}, Landroid/media/AudioRecord;->stop()V

    .line 204
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$900()Z

    move-result v11

    if-eqz v11, :cond_b

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arec.stop() getRecordingState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v13, v13, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v13}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_b
    iget-object v11, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v11, v11, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v11}, Landroid/media/AudioRecord;->release()V

    .line 206
    # getter for: Lcom/lge/media/SmartRingtone;->LGE_DEBUG:Z
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$900()Z

    move-result v11

    if-eqz v11, :cond_c

    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arec.release() getState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v13, v13, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v13}, Landroid/media/AudioRecord;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_c
    iget-object v11, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    throw v10
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 120
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v0, v0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 121
    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arec startRecording cannot started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v0, v0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 123
    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arec.stop() getRecordingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v2, v2, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    iget-object v0, v0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 125
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lge/media/SmartRingtone;->arec:Landroid/media/AudioRecord;

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->checkNoiseAverage()V

    .line 131
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mStreamType:I
    invoke-static {v0}, Lcom/lge/media/SmartRingtone;->access$100(Lcom/lge/media/SmartRingtone;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/media/SmartRingtone;->access$200(Lcom/lge/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/lge/media/SmartRingtone;->access$200(Lcom/lge/media/SmartRingtone;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mStreamType:I
    invoke-static {v1}, Lcom/lge/media/SmartRingtone;->access$100(Lcom/lge/media/SmartRingtone;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 134
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mNoiseAverage:I
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$300()I

    move-result v1

    # invokes: Lcom/lge/media/SmartRingtone;->calculateSmartRingtoneLevel(I)V
    invoke-static {v0, v1}, Lcom/lge/media/SmartRingtone;->access$400(Lcom/lge/media/SmartRingtone;I)V

    .line 135
    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateSmartRingtoneLevel: mSmartRingtoneLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v2}, Lcom/lge/media/SmartRingtone;->access$500(Lcom/lge/media/SmartRingtone;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/media/SmartRingtone;->access$600(Lcom/lge/media/SmartRingtone;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    # getter for: Lcom/lge/media/SmartRingtone;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/media/SmartRingtone;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDelayedVolumeUpHandler.sendEmptyMessageDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # getter for: Lcom/lge/media/SmartRingtone;->mDelayedVolumeUpHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/media/SmartRingtone;->access$600(Lcom/lge/media/SmartRingtone;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/lge/media/SmartRingtone$NoiseEstimationThread;->this$0:Lcom/lge/media/SmartRingtone;

    # setter for: Lcom/lge/media/SmartRingtone;->mSmartRingtoneLevel:I
    invoke-static {v0, v4}, Lcom/lge/media/SmartRingtone;->access$502(Lcom/lge/media/SmartRingtone;I)I

    goto :goto_0
.end method
