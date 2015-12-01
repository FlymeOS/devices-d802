.class public Lcom/lge/camera/controller/camcorder/RecordingController;
.super Lcom/lge/camera/controller/Controller;
.source "RecordingController.java"


# instance fields
.field private mCheckResumeVideo:Z

.field private mEndTime:J

.field private mIsFileSizeLimitReached:Z

.field private mIsStopRecordingByMountedAction:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPauseTime:J

.field public mRecIndicatorHeight:I

.field public mRecIndicatorLeftMargin:I

.field public mRecIndicatorWidth:I

.field private mRecordingDurationLimit:J

.field private mRecordingSizeLimit:J

.field public mScaleWidthHeight:F

.field private mStartTime:J

.field private mStopRecordingDuringCall:Z

.field private mStopRecordingThread:Ljava/lang/Thread;

.field private mVideoFile:Lcom/lge/camera/VideoFile;

.field private mVideoFileSize:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 53
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 54
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 55
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 69
    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    .line 70
    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    .line 71
    iput v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    .line 72
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 73
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingDuringCall:Z

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 700
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camcorder/RecordingController;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/controller/camcorder/RecordingController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camcorder/RecordingController;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camcorder/RecordingController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private addSecureImageList(Landroid/net/Uri;)V
    .locals 2
    .param p1, "savedUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    .line 1150
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1153
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLocVideokUri(Landroid/net/Uri;)V

    .line 1155
    :cond_1
    return-void
.end method

.method private callStartRecording()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 421
    const/4 v3, 0x1

    .line 423
    .local v3, "videoRecordingStartRetval":Z
    :try_start_0
    invoke-static {}, Lcom/lge/camera/util/AudioUtil;->isAudioRecording()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 424
    const/4 v3, 0x0

    .line 425
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0a01aa

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->toastMiddleLong(Ljava/lang/String;)V

    .line 437
    :goto_0
    if-eqz v3, :cond_8

    .line 438
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 439
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 440
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 441
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v6, 0x0

    invoke-interface {v4, v6, v7}, Lcom/lge/camera/ControllerFunction;->setCurrentRecordingTime(J)V

    .line 443
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 446
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isUHDmode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.ShowLiveSnapshotButton"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 454
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->showRecoridngStopButton()V

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/16 v1, 0x3e8

    .line 460
    .local v1, "compensationTime":I
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iput-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 462
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.UpdateRecordingTime"

    int-to-long v6, v1

    invoke-interface {v4, v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 465
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d01bd

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 468
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 470
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseFlashTemperature()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "torch"

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->GetXo_thermal()D

    move-result-wide v4

    sget-wide v6, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 473
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_flash"

    const-string v6, "off"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 474
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "fromQuickButton"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetFlashMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0a0270

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 478
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 479
    const-string v4, "CameraApp"

    const-string v5, "flash off by callStartRecording"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "compensationTime":I
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 504
    if-nez v3, :cond_5

    .line 505
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 506
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 507
    const-string v4, "CameraApp"

    const-string v5, "Could not start media recorder"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_5
    :goto_2
    return-void

    .line 428
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 429
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->startRecordingEffect()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 488
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 490
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 491
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 492
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 493
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not start media recorder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 504
    if-nez v3, :cond_5

    .line 505
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 506
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 507
    const-string v4, "CameraApp"

    const-string v5, "Could not start media recorder"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 432
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->start()Z

    move-result v3

    .line 433
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoRecordingStartRetval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 495
    :catch_1
    move-exception v2

    .line 496
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 497
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 498
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 499
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 500
    const-string v4, "CameraApp"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 503
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 504
    if-nez v3, :cond_5

    .line 505
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 506
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 507
    const-string v4, "CameraApp"

    const-string v5, "Could not start media recorder"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 482
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_5
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 483
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 484
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 485
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 486
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 503
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 504
    if-nez v3, :cond_9

    .line 505
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 506
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 507
    const-string v5, "CameraApp"

    const-string v6, "Could not start media recorder"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    throw v4
.end method

.method private checkMinRecordingTimeAndDeleteVideo(JLjava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p1, "checkTime"    # J
    .param p3, "vFile"    # Ljava/io/File;
    .param p4, "videoSizeString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1159
    const/4 v6, 0x0

    .line 1160
    .local v6, "savedUri":Landroid/net/Uri;
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v2, p1, v2

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1161
    if-eqz p3, :cond_0

    .line 1162
    const-string v0, "CameraApp"

    const-string v1, "vFile.delete()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 1179
    :cond_0
    :goto_0
    return-object v6

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1167
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    const/4 v5, 0x1

    move-object v2, p4

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    .line 1174
    :goto_1
    invoke-direct {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->addSecureImageList(Landroid/net/Uri;)V

    goto :goto_0

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move-object v2, p4

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 1176
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto :goto_0
.end method

.method private checkMinTimeAndDeleteForSaveUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 8
    .param p1, "videoSizeString"    # Ljava/lang/String;
    .param p2, "condition"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 902
    const/4 v6, 0x0

    .line 903
    .local v6, "savedUri":Landroid/net/Uri;
    if-eqz p2, :cond_1

    .line 904
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v7

    .line 905
    .local v7, "vFile":Ljava/io/File;
    if-eqz v7, :cond_0

    .line 906
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMinTimeAndDeleteForSaveUri delete! condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 924
    .end local v7    # "vFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v6

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    .line 918
    :goto_1
    invoke-direct {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->addSecureImageList(Landroid/net/Uri;)V

    goto :goto_0

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 920
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMinTimeAndDeleteForSaveUri delete! condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto :goto_0
.end method

.method private getSaveUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "videoSizeString"    # Ljava/lang/String;

    .prologue
    .line 1138
    const/4 v2, 0x0

    .line 1140
    .local v2, "savedUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v4}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v3

    .line 1141
    .local v3, "vFile":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1143
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1, v3, p1}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMinRecordingTimeAndDeleteVideo(JLjava/io/File;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1146
    .end local v0    # "currentTime":J
    :cond_0
    return-object v2
.end method

.method private isUHDmode()Z
    .locals 3

    .prologue
    .line 413
    const-string v0, "3840x2160"

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restoreToIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 558
    const-string v0, "CameraApp"

    const-string v1, "startRecording is NOT started. Restore environment to idle."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 561
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 563
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 592
    return-void
.end method

.method private setQuickButton(ZI)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "degree"    # I

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/camcorder/RecordingController$6;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1294
    return-void
.end method

.method private setSaveUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p1, "videoSizeString"    # Ljava/lang/String;

    .prologue
    .line 894
    const/4 v0, 0x1

    .line 895
    .local v0, "condition":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 896
    .local v2, "currentTime":J
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v4, v2, v4

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 898
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMinTimeAndDeleteForSaveUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 896
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVideoSize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 513
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->initVideoFile(I)V

    .line 515
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 516
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getMaxVideoDurationInMs()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 517
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoSizeLimit(Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 520
    :cond_0
    invoke-static {v5}, Lcom/lge/camera/VideoRecorder;->setVideoSize(I)Z

    .line 534
    :goto_0
    return-void

    .line 522
    :cond_1
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->initVideoFile(I)V

    .line 523
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 525
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getMaxVideoDurationInMs()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 526
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoSizeLimit(Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 532
    :cond_2
    :goto_1
    invoke-static {v4}, Lcom/lge/camera/VideoRecorder;->setVideoSize(I)Z

    goto :goto_0

    .line 531
    :cond_3
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    goto :goto_1
.end method

.method private startHeatingWarning()V
    .locals 4

    .prologue
    .line 537
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "RecordingSize":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 543
    const-string v1, "CameraApp"

    const-string v2, "Recording Size reference NULL Value, please CHECK \'getPreviewSizeOnDevice() function~!!!\' "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v0    # "RecordingSize":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 548
    .restart local v0    # "RecordingSize":Ljava/lang/String;
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording Size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getIsCharging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->startHeatingwarning()V

    goto :goto_0
.end method


# virtual methods
.method public changeMaxFileSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 1297
    invoke-static {p1, p2}, Lcom/lge/camera/VideoRecorder;->changeMaxFileSize(J)V

    .line 1298
    return-void
.end method

.method public doAfterRecordingProcess()V
    .locals 7

    .prologue
    .line 808
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, "videoSizeString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 811
    .local v0, "savedUri":Landroid/net/Uri;
    const-string v4, "recordmode_live_effect"

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 812
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v4

    invoke-static {v4}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v3

    .line 819
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/lge/camera/controller/camcorder/RecordingController;->setSaveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 820
    const-string v4, "CameraApp"

    const-string v5, "doAfterRecordingProcess-start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v5, Lcom/lge/camera/controller/camcorder/RecordingController$3;

    invoke-direct {v5, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$3;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 833
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsStopRecordingByMountedAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    if-eqz v0, :cond_6

    iget-boolean v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "on"

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_auto_review"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getBackKeyRecStop()Z

    move-result v4

    if-nez v4, :cond_6

    .line 840
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isStopPreviewAfterRecordStop()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 841
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 843
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 844
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 887
    :goto_1
    if-eqz v0, :cond_3

    .line 888
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 891
    :cond_3
    return-void

    .line 813
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "recordmode_dual"

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "recordmode_smart_zoom"

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_video_record_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 817
    :cond_5
    const-string v3, "1280x960"

    goto/16 :goto_0

    .line 847
    :cond_6
    move-object v1, v0

    .line 848
    .local v1, "savedUriForThread":Landroid/net/Uri;
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/controller/camcorder/RecordingController$4;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController$4;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;Landroid/net/Uri;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 884
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide v0
.end method

.method public getIsFileSizeLimitReached()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    return v0
.end method

.method public getRecordingDurationLimit()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    return-wide v0
.end method

.method public getRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    return-wide v0
.end method

.method public getStopRecordingDuringCall()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingDuringCall:Z

    return v0
.end method

.method public getVideoFile()Lcom/lge/camera/VideoFile;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    return-object v0
.end method

.method public getVideoFileSize()J
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFileSize:J

    return-wide v0
.end method

.method public hide()V
    .locals 5

    .prologue
    const v4, 0x7f0d01b9

    const v3, 0x7f0d01b6

    const v2, 0x7f0d01b1

    const/4 v1, 0x4

    .line 256
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideTimeIndicator()V
    .locals 4

    .prologue
    const v3, 0x7f0d01b6

    const v2, 0x7f0d01b1

    const/4 v1, 0x4

    .line 279
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const v9, 0x7f0d01b9

    const v8, 0x3ecccccd    # 0.4f

    .line 81
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d00d0

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 82
    iput-wide v10, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 83
    iput-wide v10, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 84
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d01b3

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 85
    .local v5, "recTimeText":Landroid/widget/TextView;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    .line 88
    .local v2, "currentCarrierCode":I
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d01bd

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    .line 89
    .local v4, "pb":Lcom/lge/camera/components/RecProgressBar;
    invoke-virtual {v4}, Lcom/lge/camera/components/RecProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 90
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    .local v1, "bpWidth":I
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    .local v0, "bpHeight":I
    invoke-virtual {v4, v1, v0}, Lcom/lge/camera/components/RecProgressBar;->initRecProgressBar(II)V

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    const/4 v6, 0x6

    if-ne v2, v6, :cond_1

    .line 103
    const v6, 0x3e99999a    # 0.3f

    iput v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 111
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 114
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRotation(I)V

    .line 115
    return-void

    .line 98
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 105
    :cond_1
    iput v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    goto :goto_1

    .line 108
    :cond_2
    iput v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    goto :goto_1
.end method

.method public initVideoFile(I)V
    .locals 10
    .param p1, "purpose"    # I

    .prologue
    const/4 v2, 0x1

    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "fileDirectory":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, "fileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    .line 187
    new-instance v0, Lcom/lge/camera/VideoFile;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9, p1}, Lcom/lge/camera/VideoFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 190
    :cond_0
    return-void
.end method

.method public isAvailableResumeVideo()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    return v0
.end method

.method public isRecordedLengthTooShort()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1242
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v4, v0, v4

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1244
    const-string v4, "CameraApp"

    const-string v5, "recorded time: %d ms"

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public isRecordingControllerInit()Z
    .locals 1

    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    return v0
.end method

.method public isStopRecordingByMountedAction()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    return v0
.end method

.method public needProgressBar()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getMaxVideoDurationInMs()I

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1193
    const-string v2, "CameraApp"

    const-string v3, "onPause-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-boolean v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-eqz v2, :cond_4

    .line 1199
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getStopRecordingDuringCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    const-string v2, "CameraApp"

    const-string v3, "While recording, Received a call. Video state set to idle!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1238
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    .line 1206
    .local v1, "state":I
    const-string v2, "CameraApp"

    const-string v3, "Camcorder state: %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    if-ne v1, v8, :cond_1

    .line 1208
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->waitStartRecordingThreadDone()V

    .line 1209
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->waitStopRecordingThreadDone()V

    .line 1211
    :cond_1
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 1213
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v8}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 1215
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecDurationTime(JJ)V

    .line 1216
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V

    .line 1217
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 1224
    :cond_3
    :goto_1
    iput-boolean v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 1227
    .end local v1    # "state":I
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isChangingToOtherActivity()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1228
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1229
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "animation"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1230
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.Rotate"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1233
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1234
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopHeatingwarning()V

    .line 1236
    :cond_6
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1237
    const-string v2, "CameraApp"

    const-string v3, " onPause-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1218
    .restart local v1    # "state":I
    :cond_7
    if-eq v1, v8, :cond_8

    if-ne v1, v7, :cond_3

    .line 1220
    :cond_8
    const-string v2, "CameraApp"

    const-string v3, "RecordingController: Video state NO_REACTION after wait threads."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v2, "CameraApp"

    const-string v3, "Force video state to idle"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1184
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviewVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setEffectRecorderPausing(Z)V

    .line 1188
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1189
    return-void
.end method

.method public pauseRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 609
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 613
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setAudiozoombuttonstate()V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->pauseAndResumeRecording(Z)V

    .line 625
    :goto_0
    iput-boolean v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 627
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 629
    :cond_3
    return-void

    .line 623
    :cond_4
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->pause()V

    goto :goto_0
.end method

.method public resetRecTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1024
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d01b3

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1025
    .local v2, "recTimeText":Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1027
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 1029
    .local v0, "currentCarrierCode":I
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 1031
    const-string v3, "00/60"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d01bd

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RecProgressBar;

    .line 1037
    .local v1, "pb":Lcom/lge/camera/components/RecProgressBar;
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 1039
    iput-boolean v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    .line 1040
    return-void

    .line 1033
    .end local v1    # "pb":Lcom/lge/camera/components/RecProgressBar;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0a0186

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public resumeRecording()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 632
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 634
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 636
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 638
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 639
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->pauseAndResumeRecording(Z)V

    .line 644
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 645
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v1

    .line 646
    .local v1, "isAudiozoom_exection":Z
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStartInRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->startAudiozoom()V

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setAudiozoombuttonstate()V

    .line 652
    .end local v1    # "isAudiozoom_exection":Z
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseFlashTemperature()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "torch"

    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->GetXo_thermal()D

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    .line 658
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 659
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 660
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "fromQuickButton"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFlashMode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 662
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0270

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 663
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 664
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0xa

    invoke-interface {v2, v3, v7, v6}, Lcom/lge/camera/ControllerFunction;->setButtonRemainEnabled(IZZ)V

    .line 667
    const-string v2, "CameraApp"

    const-string v3, "flash off by callStartRecording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    return-void

    .line 641
    :cond_4
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->resume()V

    goto :goto_0
.end method

.method public resumeUpdateReordingTime()V
    .locals 6

    .prologue
    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 676
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 677
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 678
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.UpdateRecordingTime"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 679
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 680
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 67
    return-void
.end method

.method public setIsFileSizeLimitReached(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 934
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    .line 935
    return-void
.end method

.method public setRecDurationTime(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 687
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 689
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 691
    .local v0, "compensationTime":I
    :goto_0
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    sub-long v4, p3, v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    add-long/2addr p1, v4

    .line 692
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 693
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    move-wide p1, v2

    .line 696
    .end local v0    # "compensationTime":I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    sub-long v2, p3, p1

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/VideoFile;->setRecordingTime_duration(J)V

    .line 697
    return-void

    .line 689
    :cond_2
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public setRecIndicatorLayout(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftMargin"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    .line 119
    iput p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    .line 120
    iput p3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    .line 122
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 125
    :cond_0
    return-void
.end method

.method public setRecLayout()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0xe

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 128
    iget-boolean v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-nez v4, :cond_1

    .line 129
    const-string v4, "CameraApp"

    const-string v5, "RecordingController is not initialize."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d01b0

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 133
    .local v2, "recAreaLayout":Landroid/view/View;
    const v4, 0x7f09018b

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v0

    .line 134
    .local v0, "paddingLeft":I
    const v4, 0x7f09018c

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v1

    .line 136
    .local v1, "paddingTop":I
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 138
    :cond_2
    invoke-virtual {v2, v0, v1, v7, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 143
    :goto_1
    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    .local v3, "recIndicatorArea":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 148
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 149
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 150
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 151
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 153
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    if-nez v4, :cond_4

    .line 154
    const/16 v4, 0x14

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 155
    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 171
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 140
    .end local v3    # "recIndicatorArea":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 157
    .restart local v3    # "recIndicatorArea":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 160
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 161
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 162
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 164
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    if-nez v4, :cond_6

    .line 165
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 168
    :cond_6
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method public setScaleWidthHeight(F)V
    .locals 0
    .param p1, "ScaleWidthHeight"    # F

    .prologue
    .line 1255
    iput p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 1256
    return-void
.end method

.method public setStopRecordingDuringCall(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingDuringCall:Z

    .line 204
    return-void
.end method

.method public setVideoFile(Lcom/lge/camera/VideoFile;)V
    .locals 0
    .param p1, "videoFile"    # Lcom/lge/camera/VideoFile;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 196
    :cond_0
    return-void
.end method

.method public setVideoFileSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 311
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFileSize:J

    .line 312
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const v4, 0x7f0d01b9

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d01b1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d01b6

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startRecording()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 318
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v12}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 320
    const/4 v8, 0x0

    .line 321
    .local v8, "bInitRecording":Z
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/AppControlUtil;->StopVoiceRec(Landroid/app/Activity;I)V

    .line 322
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AudioUtil;->setStopNotificationStream(Landroid/content/Context;)V

    .line 324
    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/camcorder/RecordingController;->setStopRecordingDuringCall(Z)V

    .line 325
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 326
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setVideoSize()V

    .line 328
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordingSizeLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecordingDurationLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v12}, Lcom/lge/camera/VideoRecorder;->setMaxFileSize(JJI)Z

    .line 332
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v0

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->setOrientationHint(I)V

    .line 334
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v12}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-wide/32 v0, 0x6ddd00

    :goto_0
    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 338
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    long-to-int v4, v4

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/lge/camera/ControllerFunction;->initializeRecordingEffect(Ljava/lang/String;JIJ)V

    .line 343
    const/4 v8, 0x1

    .line 361
    :cond_0
    :goto_1
    if-eqz v8, :cond_9

    .line 371
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v7

    .line 373
    .local v7, "Orientation":I
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lge/camera/util/AudioUtil;->setAudiodevice(Landroid/content/Context;I)V

    .line 376
    .end local v7    # "Orientation":I
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->callStartRecording()V

    .line 378
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getAudiozoomcontent()I

    move-result v0

    if-ne v0, v13, :cond_2

    .line 380
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0, v12}, Lcom/lge/camera/VideoFile;->setAudiozoomcontent(I)V

    .line 382
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 384
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 385
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v13}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v9

    .line 386
    .local v9, "isAudiozoom_exection":Z
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    .line 388
    .local v11, "startingDegree":I
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v11}, Lcom/lge/camera/ControllerFunction;->setStartrecordingdegree(I)V

    .line 390
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 393
    if-eqz v9, :cond_7

    .line 409
    .end local v9    # "isAudiozoom_exection":Z
    .end local v11    # "startingDegree":I
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->startHeatingWarning()V

    .line 410
    return-void

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v0

    goto/16 :goto_0

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    long-to-int v4, v4

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/lge/camera/ControllerFunction;->initializeRecordingDual(Ljava/lang/String;JIJ)V

    .line 350
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->init(Lcom/lge/camera/ControllerFunction;)Lcom/lge/media/MediaRecorderEx;

    .line 355
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->isInitialized()Z

    move-result v8

    .line 356
    new-instance v10, Lcom/lge/camera/listeners/MediaRecorderListener;

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v10, v0}, Lcom/lge/camera/listeners/MediaRecorderListener;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 357
    .local v10, "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    invoke-static {v10}, Lcom/lge/camera/VideoRecorder;->setInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)Z

    .line 358
    invoke-static {v10}, Lcom/lge/camera/VideoRecorder;->setErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)Z

    goto/16 :goto_1

    .line 395
    .end local v10    # "listener":Lcom/lge/camera/listeners/MediaRecorderListener;
    .restart local v9    # "isAudiozoom_exection":Z
    .restart local v11    # "startingDegree":I
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startAudiozoom()V

    .line 396
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v13}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    goto :goto_2

    .line 399
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v12}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    goto :goto_2

    .line 403
    .end local v9    # "isAudiozoom_exection":Z
    .end local v11    # "startingDegree":I
    :cond_9
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 404
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2
.end method

.method public startRotation(I)V
    .locals 10
    .param p1, "degree"    # I

    .prologue
    .line 939
    iget-boolean v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mInit:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 940
    :cond_0
    const-string v7, "CameraApp"

    const-string v8, "RecordingController is not initialize."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :goto_0
    return-void

    .line 944
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d01ba

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 945
    .local v3, "progressLayout":Landroid/view/View;
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d01bb

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 947
    .local v4, "progressRotate":Lcom/lge/camera/components/RotateLayout;
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 949
    :cond_2
    const-string v7, "CameraApp"

    const-string v8, "cannot startRotation progress is null."

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 952
    :cond_3
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 953
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 955
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ori = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d01b2

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/components/RotateLayout;

    .line 958
    .local v6, "recTimeText":Lcom/lge/camera/components/RotateLayout;
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d01b7

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateLayout;

    .line 960
    .local v5, "recSlowMotion":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 962
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const v7, 0x7f090180

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v0

    .line 963
    .local v0, "margin_landscape":I
    const v7, 0x7f090181

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v1

    .line 964
    .local v1, "margin_portrait":I
    invoke-static {v2}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 966
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutDirection(I)V

    .line 967
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/lge/camera/components/RotateLayout;->setLayoutDirection(I)V

    .line 968
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/RotateLayout;->setLayoutDirection(I)V

    .line 969
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->checkSlowMotionMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    .line 970
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/lge/camera/components/RotateLayout;->setLayoutDirection(I)V

    .line 972
    invoke-virtual {v5, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 975
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, p1, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 976
    invoke-virtual {v6, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 977
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 978
    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 979
    const/16 v7, 0xe

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 980
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1020
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 982
    :cond_5
    const/16 v7, 0x14

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 983
    const/16 v7, 0xf

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 984
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 986
    :cond_6
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/16 v8, 0x5a

    invoke-static {v7, p1, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 987
    invoke-virtual {v6, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 988
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 989
    const/16 v7, 0x15

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 990
    const/16 v7, 0xf

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 991
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 993
    :cond_7
    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 994
    const/16 v7, 0xe

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 995
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 997
    :cond_8
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/16 v8, 0xb4

    invoke-static {v7, p1, v8}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 998
    invoke-virtual {v6, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 999
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1000
    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1001
    const/16 v7, 0xe

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1002
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 1004
    :cond_9
    const/16 v7, 0x14

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1005
    const/16 v7, 0xf

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1006
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 1009
    :cond_a
    invoke-virtual {v6, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 1010
    iget-object v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1011
    const/16 v7, 0x15

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1012
    const/16 v7, 0xf

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1013
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 1015
    :cond_b
    const/16 v7, 0xc

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1016
    const/16 v7, 0xe

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1017
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording(Z)V

    .line 708
    return-void
.end method

.method public stopRecording(Z)V
    .locals 6
    .param p1, "isFromMountedAction"    # Z

    .prologue
    const/4 v1, 0x0

    .line 711
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    .line 712
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->UnblockAlarmInRecording(Landroid/app/Activity;)V

    .line 717
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 719
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 721
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 725
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 727
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/lge/camera/util/AudioUtil;->setAudiodevice(Landroid/content/Context;I)V

    .line 730
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setStartrecordingdegree(I)V

    .line 732
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 734
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getAudiozoomExection_state()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->setAudiozoomException()V

    .line 738
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/controller/camcorder/RecordingController$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$2;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    .line 768
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 770
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->useBackLightControlInRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 774
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 775
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 777
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideRecoridngStopButton()V

    .line 780
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 781
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopHeatingwarning()V

    .line 784
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 786
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    .line 789
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 790
    return-void

    .line 731
    :cond_8
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public stopRecordingByPausing()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1043
    const-string v0, "CameraApp"

    const-string v2, "stopRecordingByPausing()"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->UnblockAlarmInRecording(Landroid/app/Activity;)V

    .line 1048
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 1055
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecDurationTime(JJ)V

    .line 1056
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 1059
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setStartrecordingdegree(I)V

    .line 1061
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 1062
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getAudiozoomExection_state()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->setAudiozoomException()V

    .line 1066
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 1067
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 1068
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 1070
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1071
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopRecordingEffect()V

    .line 1082
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setStreamMute(Landroid/content/Context;Z)V

    .line 1083
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setVibrationMute(Landroid/content/Context;Z)V

    .line 1084
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 1085
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getSaveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1086
    .local v7, "savedUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 1087
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 1089
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/camcorder/RecordingController$5;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$5;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1096
    if-eqz v7, :cond_b

    .line 1097
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1099
    const-string v0, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_auto_review"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1100
    .local v6, "autoReview":Z
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    or-int/2addr v6, v0

    .line 1101
    if-eqz v6, :cond_4

    .line 1102
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1103
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 1115
    .end local v6    # "autoReview":Z
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1116
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 1118
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 1120
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1121
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideRecoridngStopButton()V

    .line 1123
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1124
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopHeatingwarning()V

    .line 1128
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1130
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->unregisterObjectCallback()V

    .line 1131
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    .line 1134
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 1135
    return-void

    .line 1060
    .end local v7    # "savedUri":Landroid/net/Uri;
    :cond_9
    const/16 v0, 0x10e

    goto/16 :goto_0

    .line 1075
    :cond_a
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 1076
    iput-boolean v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 1077
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 1078
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1079
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_1

    .line 1106
    .restart local v7    # "savedUri":Landroid/net/Uri;
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1107
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public waitStartRecordingThreadDone()V
    .locals 3

    .prologue
    .line 595
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 597
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "Wait for start recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 599
    const-string v1, "CameraApp"

    const-string v2, "Start recording done."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to wait for start recording done!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitStopRecordingThreadDone()V
    .locals 3

    .prologue
    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    const-string v1, "CameraApp"

    const-string v2, "Wait for stop recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 797
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    .line 798
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    .line 799
    const-string v1, "CameraApp"

    const-string v2, "Stop recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join stop recording thread!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
