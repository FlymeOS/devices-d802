.class public Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;
.super Ljava/lang/Object;
.source "PanoramaTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;
    }
.end annotation


# instance fields
.field private isStarted:Z

.field private mListner:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

.field private mLock:Ljava/lang/Object;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 14
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isDeamon"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 19
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;)Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mListner:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->taskCancel()V

    return-void
.end method

.method private taskCancel()V
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 54
    :cond_0
    monitor-exit v1

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->taskCancel()V

    .line 45
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v1, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 67
    iput-object v2, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    .line 69
    :cond_1
    return-void

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTimerListener(Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mListner:Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$PanoramaTimerListener;

    .line 73
    return-void
.end method

.method public start(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 28
    iget-object v1, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$1;

    invoke-direct {v0, p0}, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer$1;-><init>(Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;)V

    iput-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 37
    iget-object v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/morpho/app/panorama_gp/PanoramaTimer;->isStarted:Z

    .line 40
    :cond_0
    monitor-exit v1

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
