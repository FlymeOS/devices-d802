.class public Lcom/lge/camera/module/ContinuousShot;
.super Lcom/lge/camera/module/Module;
.source "ContinuousShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;,
        Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SHOT_TIME:I


# instance fields
.field private deviceDegree:I

.field private mCheckOneShotCallbackTime:J

.field private mContiShotErrorOccur:Z

.field private mContinueShotCount:I

.field private mContinuousShot:Ljava/util/Timer;

.field private mContinuousShotSaveImageThread:Ljava/lang/Thread;

.field private mCount:I

.field private mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

.field private mIsContinuousShotSaveImageThreadRunning:Z

.field private mIsContinuousShotStopUserAction:Z

.field private mPushContineShotCount:I

.field private mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mSound_isPlayed:Z

.field private previewHeight:I

.field private previewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getContinuousShotTime()I

    move-result v0

    sput v0, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 47
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 48
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 49
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 50
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 51
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 52
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 53
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 54
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    .line 55
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 56
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 59
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    .line 60
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    .line 681
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/module/ContinuousShot;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/module/ContinuousShot;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->previewWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->previewHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/module/ContinuousShot;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/module/ContinuousShot;->saveContiShotImage2([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/module/ContinuousShot;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/module/ContinuousShot;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    return p1
.end method

.method private checkErrorAndGetFileName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 530
    const/4 v8, 0x0

    .line 531
    .local v8, "fileName":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    if-nez v0, :cond_0

    .line 532
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_camera_shot_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 539
    :cond_0
    return-object v8
.end method

.method private clearSaveImageQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 628
    const-string v0, "CameraApp"

    const-string v1, "clearSaveImageQueue"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 631
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 636
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 638
    :cond_1
    return-void
.end method

.method private initLatch()V
    .locals 3

    .prologue
    .line 684
    const-string v0, "CameraApp"

    const-string v1, "Init cont. shot latch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    .line 686
    return-void
.end method

.method private initSaveImageQueue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 612
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 622
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 615
    iput-object v1, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 616
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 618
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 619
    iput-object v1, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 620
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0
.end method

.method private notifySaveDone()V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Cont. shot latch null! Ignore notifySaveDone()."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveContiShotImage2([BI)Z
    .locals 28
    .param p1, "data"    # [B
    .param p2, "rotation"    # I

    .prologue
    .line 421
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[saveContiShotImage2] mPreviewing ["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[saveContiShotImage2] mPausing ["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "] mContiShotErrorOccur ["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/module/ContinuousShot;->checkErrorAndGetFileName()Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "fileName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 427
    const/16 v23, 0x0

    .line 526
    :goto_0
    return v23

    .line 430
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, "filePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 433
    .local v8, "exifData":[B
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v9

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v9}, Lcom/lge/camera/util/ExifUtil;->setNewExifInformation([BILandroid/location/Location;F)[B

    move-result-object v8

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 437
    .local v26, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 438
    .local v6, "dateTaken":J
    const/16 v23, 0x0

    .line 441
    .local v23, "ret":Z
    if-eqz v8, :cond_1

    .line 443
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v14, "key_camera_shot_mode"

    invoke-interface {v13, v14}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "shotmode_full_continuous"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual/range {v3 .. v13}, Lcom/lge/camera/util/ImageHandler;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v25

    .line 468
    .local v25, "tUri":Landroid/net/Uri;
    :goto_1
    const-string v3, "CameraApp"

    const-string v4, "saved cont. shot uri:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v25, v9, v11

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    if-nez v25, :cond_2

    .line 470
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 456
    .end local v25    # "tUri":Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "shotmode_full_continuous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move-object v13, v5

    move-wide v14, v6

    move-object/from16 v16, p1

    move-object/from16 v18, v10

    invoke-virtual/range {v11 .. v21}, Lcom/lge/camera/util/ImageHandler;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v25

    .restart local v25    # "tUri":Landroid/net/Uri;
    goto :goto_1

    .line 472
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->setSavedImageUri(Landroid/net/Uri;)V

    .line 473
    const/16 v25, 0x0

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v24

    .line 476
    .local v24, "savedImageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3

    .line 477
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 479
    :cond_3
    if-eqz v24, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const-string v3, "CameraApp"

    const-string v4, "Set last thumbnail uri:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v24, v9, v11

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v3, v4, v9}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 489
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SAVE IMAGE pushContineShotCount["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "] "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "mImageListUri.SIZE()["

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "]"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/16 v23, 0x1

    .line 496
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 497
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 494
    :cond_4
    const-string v3, "CameraApp"

    const-string v4, "saveContiShotImage2() error: savedImageUri is null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 499
    .end local v24    # "savedImageUri":Landroid/net/Uri;
    .end local v25    # "tUri":Landroid/net/Uri;
    :catch_0
    move-exception v22

    .line 500
    .local v22, "ise":Ljava/lang/IllegalStateException;
    const-string v3, "CameraApp"

    const-string v4, "IllegalStateException while compressing image."

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotThread()V

    .line 502
    const/16 v23, 0x0

    .line 507
    .end local v22    # "ise":Ljava/lang/IllegalStateException;
    :cond_5
    :goto_3
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ret = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    if-eqz v23, :cond_8

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSaveURI()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 510
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-static {v3, v4, v9}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 513
    :cond_6
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getSaveURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 515
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->setSavedFileName(Ljava/lang/String;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".jpg"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_uplus_box"

    invoke-interface {v9, v11}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "on"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v3, v4, v9}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 523
    :cond_8
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "save continuous shot image elapse time = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v26

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 503
    :catch_1
    move-exception v2

    .line 504
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception while compressing image."

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 505
    const/16 v23, 0x0

    goto/16 :goto_3
.end method

.method private stopSaveImageThread()V
    .locals 2

    .prologue
    .line 587
    const-string v0, "CameraApp"

    const-string v1, "stopSaveImageThread"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 589
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V

    .line 590
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V

    .line 591
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 594
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 595
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return v0
.end method

.method public stopByUserAction()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopSoundContinuous()V

    .line 602
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 603
    return-void
.end method

.method public stopContinuousShot()V
    .locals 3

    .prologue
    .line 335
    const-string v0, "CameraApp"

    const-string v1, "stopContinuousShot()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 339
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 342
    :cond_0
    return-void
.end method

.method public stopContinuousShotThread()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 543
    const-string v4, "CameraApp"

    const-string v5, "stopContinuousShotThread"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setContinuousShotAlived(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShot()V

    .line 546
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V

    .line 548
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 549
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 550
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 552
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 553
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 557
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 558
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "mVoiceShutterValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 561
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 564
    .end local v3    # "mVoiceShutterValue":Ljava/lang/String;
    :cond_2
    invoke-static {v7, v7}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_continuous"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 567
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 568
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 569
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->initFocusAreas()V

    .line 570
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 572
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v2

    .line 573
    .local v2, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v2}, Lcom/lge/camera/ControllerFunction;->getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "defaultFocusMode":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 576
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 577
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### setFocusMode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v0    # "defaultFocusMode":Ljava/lang/String;
    .end local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 584
    :cond_5
    return-void

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "CameraApp"

    const-string v5, "RuntimeException : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public takePicture()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 80
    const-string v2, "CameraApp"

    const-string v3, "[Module]ContinuousShot::takePicture"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 83
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 85
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 90
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 92
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 94
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 95
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 96
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 98
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 100
    :cond_1
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 101
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    .line 102
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    .line 104
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->initSaveImageQueue()V

    .line 106
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v9

    .line 108
    .local v9, "shotModePref":Lcom/lge/camera/setting/ListPreference;
    if-nez v9, :cond_2

    .line 109
    const-string v2, "CameraApp"

    const-string v3, "shotModePref is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    return v0

    .line 112
    :cond_2
    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v8

    .line 113
    .local v8, "pictureSize":[I
    const/4 v9, 0x0

    .line 114
    aget v2, v8, v0

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->previewWidth:I

    .line 115
    aget v2, v8, v10

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->previewHeight:I

    .line 117
    iput-boolean v10, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 118
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 119
    iput-object v11, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 121
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v10}, Lcom/lge/camera/ControllerFunction;->setContinuousShotAlived(Z)V

    .line 122
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 125
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shotmode_continuous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 129
    .local v7, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v2, "auto"

    invoke-virtual {v7, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 131
    const-string v2, "CameraApp"

    const-string v3, "### setFocusMode-auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v7    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_3
    :goto_1
    new-instance v2, Ljava/util/Timer;

    const-string v3, "ContinuousShot"

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 138
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    .line 139
    new-instance v1, Lcom/lge/camera/module/ContinuousShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ContinuousShot$1;-><init>(Lcom/lge/camera/module/ContinuousShot;)V

    .line 326
    .local v1, "taskContinuous":Ljava/util/TimerTask;
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->initLatch()V

    .line 328
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    sget v2, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    int-to-long v2, v2

    sget v4, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 330
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    const/4 v2, 0x3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v10

    .line 331
    goto/16 :goto_0

    .line 133
    .end local v1    # "taskContinuous":Ljava/util/TimerTask;
    :catch_0
    move-exception v6

    .line 134
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public waitForSaveDone()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 698
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_1

    .line 699
    const/4 v1, 0x0

    .line 701
    .local v1, "saveDone":Z
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 706
    :goto_0
    if-nez v1, :cond_0

    .line 707
    const-string v2, "CameraApp"

    const-string v3, "Waiting for cont. shot done timeout!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .end local v1    # "saveDone":Z
    :goto_1
    return-void

    .line 702
    .restart local v1    # "saveDone":Z
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "Wait for cont. shot done has interrupted!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 710
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "Cont. shot save done."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 714
    .end local v1    # "saveDone":Z
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "Cont. shot latch null! Don\'t wait."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
