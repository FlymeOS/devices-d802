.class public Lcom/lge/voiceshutter/library/ISTAudioRecorder;
.super Ljava/lang/Object;
.source "ISTAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    }
.end annotation


# static fields
.field public static final JAVA_BUFFER_INTERVAL:I = 0xfa0

.field public static final NUM_JAVA_BUFFER:I = 0x50

.field private static final TAG:Ljava/lang/String;

.field public static final TIMER_INTERVAL:I = 0x32


# instance fields
.field private BackupPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/voiceshutter/library/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private BufferPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/voiceshutter/library/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private ChannelConfig:I

.field private RecorderBufferSize:I

.field private aFormat:I

.field private aRecorder:Landroid/media/AudioRecord;

.field private aSource:I

.field private bSamples:S

.field public buffer:[B

.field private framePeriod:I

.field private mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

.field private mThread:Ljava/lang/Thread;

.field private nChannels:S

.field private read_size:I

.field private sRate:I

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 9
    .param p1, "audioSource"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 53
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    .line 54
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->syncObj:Ljava/lang/Object;

    .line 108
    if-ne p4, v1, :cond_1

    .line 110
    const/16 v0, 0x10

    :try_start_0
    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    .line 117
    :goto_0
    iput p3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->ChannelConfig:I

    .line 118
    if-ne p3, v2, :cond_2

    .line 120
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    .line 127
    :goto_1
    iput p1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aSource:I

    .line 128
    iput p2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->sRate:I

    .line 129
    iput p4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aFormat:I

    .line 131
    const/16 v7, 0x50

    .line 133
    .local v7, "times":I
    mul-int/lit8 v0, p2, 0x32

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->framePeriod:I

    .line 134
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->framePeriod:I

    mul-int/2addr v0, v7

    iget-short v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    .line 135
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    .line 139
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    iget-short v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    mul-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x8

    iget-short v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->framePeriod:I

    .line 140
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Increasing buffer size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 144
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v8, :cond_3

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 147
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AudioRecord initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v7    # "times":I
    :catch_0
    move-exception v6

    .line 170
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 172
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_2
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    .line 180
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 114
    :cond_1
    const/16 v0, 0x8

    :try_start_1
    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    goto/16 :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    goto/16 :goto_1

    .line 158
    .restart local v7    # "times":I
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->read_size:I

    .line 161
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    div-int/2addr v0, v7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    .line 166
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 176
    .end local v7    # "times":I
    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "Unknown error occured while initializing recording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/lge/voiceshutter/library/ISTAudioRecorder;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->recording()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private recording()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 254
    const/4 v2, 0x0

    .local v2, "size":I
    const/4 v0, 0x0

    .line 260
    .local v0, "ar_size":I
    :cond_0
    :goto_0
    const-wide/16 v4, 0x19

    :try_start_0
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 262
    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->syncObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    :try_start_1
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v5, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-eq v3, v5, :cond_3

    .line 266
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 269
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 270
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 272
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_2

    .line 308
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 309
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 310
    iput-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 313
    :cond_2
    return-void

    .line 274
    :cond_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :try_start_3
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_4

    .line 277
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 289
    :cond_4
    if-lez v2, :cond_0

    .line 291
    new-instance v1, Lcom/lge/voiceshutter/library/ByteArray;

    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    invoke-direct {v1, v3, v2}, Lcom/lge/voiceshutter/library/ByteArray;-><init>([BI)V

    .line 292
    .local v1, "buf":Lcom/lge/voiceshutter/library/ByteArray;
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 295
    const/16 v3, 0x50

    if-le v0, v3, :cond_0

    .line 297
    sget-object v3, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferPool overflow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "buf":Lcom/lge/voiceshutter/library/ByteArray;
    check-cast v1, Lcom/lge/voiceshutter/library/ByteArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    .restart local v1    # "buf":Lcom/lge/voiceshutter/library/ByteArray;
    goto :goto_0

    .line 274
    .end local v1    # "buf":Lcom/lge/voiceshutter/library/ByteArray;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_5

    .line 308
    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    .line 309
    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 310
    iput-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    :cond_5
    throw v3
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 10
    .param p1, "base_dir"    # Ljava/lang/String;

    .prologue
    .line 423
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v4, "ftargetLocation":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 426
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 429
    :cond_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 430
    .local v5, "recent":Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v8

    add-int/lit16 v8, v8, 0x76c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getSeconds()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pcm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "tnow":Ljava/lang/String;
    const/4 v2, 0x0

    .line 438
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 442
    iget-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 443
    .local v0, "buf":Lcom/lge/voiceshutter/library/ByteArray;
    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/ByteArray;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/ByteArray;->array()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 444
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    .end local v0    # "buf":Lcom/lge/voiceshutter/library/ByteArray;
    :cond_1
    if-eqz v3, :cond_4

    .line 454
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 458
    :goto_1
    const/4 v2, 0x0

    .line 460
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_2
    const/4 v4, 0x0

    .line 462
    :goto_3
    return-void

    .line 455
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 447
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 449
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    sget-object v7, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " FileOutputStream error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 452
    if-eqz v2, :cond_2

    .line 454
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    const/4 v2, 0x0

    .line 460
    :cond_2
    const/4 v4, 0x0

    .line 461
    goto :goto_3

    .line 455
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 456
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 452
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v2, :cond_3

    .line 454
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 458
    :goto_7
    const/4 v2, 0x0

    .line 460
    :cond_3
    const/4 v4, 0x0

    throw v7

    .line 455
    :catch_3
    move-exception v1

    .line 456
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 452
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_6

    .line 447
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_4

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_4
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public getBuffer()[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 184
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    if-nez v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v2

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 189
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 190
    .local v0, "buf":Lcom/lge/voiceshutter/library/ByteArray;
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_2

    .line 193
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/voiceshutter/library/ByteArray;

    .line 197
    :cond_2
    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/ByteArray;->array()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getRecorderState()Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->stop()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 219
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 222
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-eq v0, v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->release()V

    .line 240
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aSource:I

    iget v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->sRate:I

    iget v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->ChannelConfig:I

    iget v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aFormat:I

    iget v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->read_size:I

    .line 242
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v6

    .line 247
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-ne v0, v1, :cond_1

    .line 325
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    .line 327
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 331
    :cond_0
    new-instance v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$1;

    invoke-direct {v0, p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder$1;-><init>(Lcom/lge/voiceshutter/library/ISTAudioRecorder;)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 348
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_1
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() called on illegal state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    goto :goto_0
.end method

.method public stop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 367
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v3, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-ne v2, v3, :cond_2

    .line 369
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 372
    :try_start_0
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->STOPPED:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    .line 373
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :try_start_1
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 380
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 394
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 397
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 398
    iput-object v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 405
    :goto_1
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 406
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 407
    .local v0, "buf":Lcom/lge/voiceshutter/library/ByteArray;
    const/4 v0, 0x0

    goto :goto_1

    .line 373
    .end local v0    # "buf":Lcom/lge/voiceshutter/library/ByteArray;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 383
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abrupt thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    const-string v3, "stop() called on illegal state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    goto :goto_0

    .line 409
    :cond_3
    iput-object v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    .line 412
    :cond_4
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 413
    :goto_2
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 414
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 415
    .restart local v0    # "buf":Lcom/lge/voiceshutter/library/ByteArray;
    const/4 v0, 0x0

    goto :goto_2

    .line 417
    .end local v0    # "buf":Lcom/lge/voiceshutter/library/ByteArray;
    :cond_5
    iput-object v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    .line 419
    :cond_6
    return-void
.end method
