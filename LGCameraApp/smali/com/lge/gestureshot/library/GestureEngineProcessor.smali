.class public Lcom/lge/gestureshot/library/GestureEngineProcessor;
.super Ljava/lang/Object;
.source "GestureEngineProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;
    }
.end annotation


# static fields
.field private static volatile sEngineStatus:I = 0x0

.field private static final sGESTURE_ACTIVE_SIGN:I = 0x1

.field private static final sGESTURE_DETECTABLE_HAND_CNT:I = 0x1

.field private static final sGESTURE_ENGINE_CAPTURE_MSG:I = 0x3

.field private static final sGESTURE_ENGINE_CLEAN_MSG:I = 0x4

.field private static final sGESTURE_ENGINE_DRAW_MSG:I = 0x2

.field private static final sGESTURE_ENGINE_ERROR_MSG:I = 0x1

.field public static final sGESTURE_ENGINE_STATUS_CREATED:I = 0x1

.field public static final sGESTURE_ENGINE_STATUS_IDLE:I = 0x0

.field public static final sGESTURE_ENGINE_STATUS_STARTED:I = 0x3

.field public static final sGESTURE_ENGINE_STATUS_STOPPED:I = 0x4

.field public static final sGESTURE_EVENT_CAPTURE:I = 0x3

.field public static final sGESTURE_EVENT_CLEAN:I = 0x4

.field public static final sGESTURE_EVENT_DRAW_GUIDEBOX:I = 0x2

.field public static final sGESTURE_EVENT_ERROR:I = 0x1

.field public static final sTAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private bFrameUpdated:Z

.field private mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

.field private mEngineThread:Ljava/lang/Thread;

.field private mEventCheckTime:J

.field private mHandInfo:Lcom/lge/gestureshot/library/HandInfo;

.field private mHandler:Landroid/os/Handler;

.field private mInputbuf:[B

.field private mPreEventCheckTime:J

.field private mStopThreadSign:Z

.field private nHeight:I

.field private nImageType:I

.field private nOrientation:I

.field private nWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;)V
    .locals 6
    .param p1, "callback"    # Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/lge/gestureshot/library/HandInfo;

    invoke-direct {v0}, Lcom/lge/gestureshot/library/HandInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    .line 41
    iput-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    .line 43
    iput-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    .line 44
    iput-boolean v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z

    .line 45
    iput-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mInputbuf:[B

    .line 46
    iput v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nOrientation:I

    .line 47
    iput v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nWidth:I

    .line 48
    iput v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nHeight:I

    .line 49
    iput v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nImageType:I

    .line 50
    iput-boolean v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z

    .line 52
    iput-wide v4, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEventCheckTime:J

    .line 53
    iput-wide v4, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mPreEventCheckTime:J

    .line 65
    new-instance v0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;

    invoke-direct {v0, p0}, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;-><init>(Lcom/lge/gestureshot/library/GestureEngineProcessor;)V

    iput-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/HandInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/gestureshot/library/GestureEngineProcessor;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEventCheckTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/lge/gestureshot/library/GestureEngineProcessor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEventCheckTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/gestureshot/library/GestureEngineProcessor;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mInputbuf:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lge/gestureshot/library/GestureEngineProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/lge/gestureshot/library/GestureEngineProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nImageType:I

    return v0
.end method

.method static synthetic access$900(Lcom/lge/gestureshot/library/GestureEngineProcessor;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mPreEventCheckTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/lge/gestureshot/library/GestureEngineProcessor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/gestureshot/library/GestureEngineProcessor;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mPreEventCheckTime:J

    return-wide p1
.end method

.method private initialize()Z
    .locals 2

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z

    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;

    invoke-direct {v1, p0}, Lcom/lge/gestureshot/library/GestureEngineProcessor$2;-><init>(Lcom/lge/gestureshot/library/GestureEngineProcessor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    .line 255
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public create()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "bSuccessed":I
    sget v1, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    if-nez v1, :cond_0

    .line 95
    invoke-static {v2, v2}, Lcom/lge/gestureshot/library/GestureEngine;->create(II)I

    move-result v0

    .line 97
    sput v2, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    .line 99
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gesture Engine create()!!   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return v0
.end method

.method public getGestureEngineState()I
    .locals 1

    .prologue
    .line 178
    sget v0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    return v0
.end method

.method public getHandInfo()Lcom/lge/gestureshot/library/HandInfo;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    return-object v0
.end method

.method public putPreviewFrame([BIIII)V
    .locals 1
    .param p1, "tbuf"    # [B
    .param p2, "orientation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "imagetype"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->bFrameUpdated:Z

    .line 132
    iput-object p1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mInputbuf:[B

    .line 133
    iput p2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nOrientation:I

    .line 134
    iput p3, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nWidth:I

    .line 135
    iput p4, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nHeight:I

    .line 136
    iput p5, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->nImageType:I

    .line 137
    return-void
.end method

.method public release()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "bSuccessed":I
    sget v1, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->stop()V

    .line 165
    :cond_0
    iput-object v3, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    .line 166
    iput-object v3, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mInputbuf:[B

    .line 168
    sget v1, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    if-eqz v1, :cond_1

    .line 169
    invoke-static {}, Lcom/lge/gestureshot/library/GestureEngine;->release()I

    move-result v0

    .line 170
    const/4 v1, 0x0

    sput v1, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    .line 172
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gesture Engine is released   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 104
    sget v1, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    if-ne v1, v3, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z

    .line 111
    iget-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->initialize()Z

    .line 119
    iget-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z

    .line 121
    iget-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 122
    sput v3, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    .line 123
    const-string v1, "CameraApp"

    const-string v2, "Gesture Engine Thread start()!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "InterruptedException in Gesture Engine Thread join()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 140
    sget v1, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 141
    iget-boolean v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z

    if-nez v1, :cond_0

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mStopThreadSign:Z

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor;->mEngineThread:Ljava/lang/Thread;

    .line 148
    const/4 v1, 0x4

    sput v1, Lcom/lge/gestureshot/library/GestureEngineProcessor;->sEngineStatus:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    const-string v2, "Gesture Engine is stopped"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/lge/gestureshot/library/GestureEngine;->resetHandInfo()I

    .line 158
    :cond_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "InterruptedException in Gesture Engine Thread stop()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
