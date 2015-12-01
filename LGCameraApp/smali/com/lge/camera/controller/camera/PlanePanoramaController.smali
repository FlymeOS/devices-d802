.class public Lcom/lge/camera/controller/camera/PlanePanoramaController;
.super Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;
.source "PlanePanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/camera/PlanePanoramaController$1;,
        Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;,
        Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;,
        Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;
    }
.end annotation


# static fields
.field private static final STILL_PROC_TASK_DELAY_TIME:I = 0x64


# instance fields
.field private mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

.field private mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSaveTimeStart:J

.field private mStillProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/morpho/utils/multimedia/StillImageData;",
            ">;"
        }
    .end annotation
.end field

.field private mStillProcTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

.field private mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveTimeStart:J

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->finishAttachStillImageTask()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/controller/camera/PlanePanoramaController;Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;)Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;
    .param p1, "x1"    # Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/lge/camera/controller/camera/PlanePanoramaController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveTimeStart:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->resetToPreviewState()V

    return-void
.end method

.method static synthetic access$2800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/PlanePanoramaController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->stopPanorama(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lge/camera/controller/camera/PlanePanoramaController;Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;)Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;
    .param p1, "x1"    # Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/camera/controller/camera/PlanePanoramaController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/PlanePanoramaController;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method private doStartPanoramaJob()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 761
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 762
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    .line 763
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v1, v4, v2}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 764
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 765
    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisibleTakingGuide(ZZ)V

    .line 766
    invoke-virtual {p0, v3, v3, v3}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisibleArrowGuide(ZZZ)V

    .line 769
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->resetPreviewSkipCount()V

    .line 771
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->resetImageIdAndStatusList()V

    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 776
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 779
    :cond_0
    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 781
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_2

    .line 784
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->rotateGuide(I)V

    .line 787
    :cond_2
    return-void
.end method

.method private finishAttachStillImageTask()V
    .locals 4

    .prologue
    .line 437
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start waiting mCntReqShoot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCntProcessd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    iget v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    iget v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    if-le v1, v2, :cond_0

    .line 441
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    .line 448
    const-string v1, "CameraApp"

    const-string v2, "end waiting"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private initMorphoPanoramaGP()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 625
    new-array v0, v6, [I

    .line 626
    .local v0, "buff_size":[I
    new-instance v3, Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-direct {v3}, Lcom/lge/morpho/core/MorphoPanoramaGP;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    .line 629
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 630
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v5, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 632
    const/4 v1, 0x0

    .line 633
    .local v1, "degrees":I
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 653
    :goto_0
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCurOrientaionDegree:I

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRotateOutput:I

    .line 656
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRotateUI:I

    .line 658
    iget v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRotateUI:I

    iget v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRotateOutput:I

    sub-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRoratePreview:I

    .line 661
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v3, v5}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setPreviewCroppingAdjustByAuto(I)V

    .line 664
    new-instance v3, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-direct {v3}, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;-><init>()V

    iput-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mInitParam:Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    .line 665
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mInitParam:Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->initPanoramaParam(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;)V

    .line 667
    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mInitParam:Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    invoke-virtual {v3, v4, v0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->initialize(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;[I)I

    move-result v3

    const-string v4, "initialize() -> "

    invoke-virtual {p0, v3, v4, v6}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 668
    return-void

    .line 635
    :pswitch_0
    const/4 v1, 0x0

    .line 636
    goto :goto_0

    .line 638
    :pswitch_1
    const/16 v1, 0x5a

    .line 639
    goto :goto_0

    .line 641
    :pswitch_2
    const/16 v1, 0xb4

    .line 642
    goto :goto_0

    .line 644
    :pswitch_3
    const/16 v1, 0x10e

    .line 645
    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initPanoramaParam(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;)V
    .locals 12
    .param p1, "param"    # Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    .prologue
    const v11, 0x46ea6000    # 30000.0f

    const/16 v10, 0x7530

    .line 560
    if-nez p1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090008

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 565
    .local v1, "disp_w":I
    iget-object v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090009

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 567
    .local v0, "disp_h":I
    const-string v7, "YVU420_SEMIPLANAR"

    iput-object v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->format:Ljava/lang/String;

    .line 568
    const/16 v7, 0xa

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->use_threshold:I

    .line 569
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewW:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    .line 570
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewH:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    .line 571
    sget-boolean v7, Lcom/lge/camera/controller/camera/PlanePanoramaController;->IS_PREVIEW_INPUT:Z

    if-eqz v7, :cond_5

    .line 572
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewW:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    .line 573
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewH:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    .line 578
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->getAngleOfViewDegree()D

    move-result-wide v8

    iput-wide v8, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->angle_of_view_degree:D

    .line 579
    const/4 v7, 0x0

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->draw_cur_image:I

    .line 581
    const/16 v7, 0xff

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_box_foreground_alpha:I

    .line 582
    const/16 v7, 0x84

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_box_background_alpha:I

    .line 584
    const/4 v7, 0x6

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    .line 585
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    mul-int/lit8 v7, v7, 0xa

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 586
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 587
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_width:I

    mul-int/lit8 v7, v7, 0xa

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 588
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_height:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 590
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRotateOutput:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->output_rotation:I

    .line 591
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRoratePreview:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_rotation:I

    .line 592
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRotateOutput:I

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRotateOutput:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_2

    .line 594
    :cond_1
    iget v6, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 595
    .local v6, "tmp":I
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 596
    iput v6, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 597
    iget v6, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 598
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 599
    iput v6, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 601
    .end local v6    # "tmp":I
    :cond_2
    const/4 v3, 0x1

    .line 602
    .local v3, "lastPixel":I
    const/4 v4, 0x1

    .line 603
    .local v4, "maxShrinkRatio":I
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    iget v8, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_shrink_ratio:I

    .line 607
    const-wide v8, 0x4076800000000000L    # 360.0

    invoke-static {p1, v8, v9}, Lcom/lge/morpho/core/MorphoPanoramaGP;->calcImageSize(Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;D)I

    .line 609
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    if-ge v10, v7, :cond_3

    .line 610
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    int-to-float v7, v7

    div-float v5, v11, v7

    .line 611
    .local v5, "scale":F
    iput v10, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_width:I

    .line 612
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 614
    .end local v5    # "scale":F
    :cond_3
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    if-ge v10, v7, :cond_4

    .line 615
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    int-to-float v7, v7

    div-float v5, v11, v7

    .line 616
    .restart local v5    # "scale":F
    iput v10, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->dst_img_height:I

    .line 617
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    .line 619
    .end local v5    # "scale":F
    :cond_4
    const/4 v2, 0x1

    .line 620
    .local v2, "imgSizeResetValue":I
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    and-int/lit8 v7, v7, -0x2

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_width:I

    .line 621
    iget v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    and-int/lit8 v7, v7, -0x2

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->preview_img_height:I

    goto/16 :goto_0

    .line 575
    .end local v2    # "imgSizeResetValue":I
    .end local v3    # "lastPixel":I
    .end local v4    # "maxShrinkRatio":I
    :cond_5
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPictureW:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->still_width:I

    .line 576
    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPictureH:I

    iput v7, p1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->still_height:I

    goto/16 :goto_1
.end method

.method private resetByPausing()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBar:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 415
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 418
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 419
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 420
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 422
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 424
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 426
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    iput v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    goto :goto_0
.end method

.method private resetParamToTaking()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 671
    const-string v0, "CameraApp"

    const-string v1, "resetParamToTaking"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mDirection:[I

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mInitParam:Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    aput v1, v0, v3

    .line 673
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mInitParam:Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;

    iget v1, v1, Lcom/lge/morpho/core/MorphoPanoramaGP$InitParam;->direction:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setPrevDirection(I)V

    .line 674
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->resetParamsBeforeTaking()V

    .line 675
    iput v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    .line 676
    iput v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntProcessd:I

    .line 677
    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 678
    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempLocation:Landroid/location/Location;

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mIsShooting:Z

    .line 680
    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    .line 681
    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    .line 682
    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;

    .line 683
    return-void
.end method

.method private resetToPreviewState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_2

    .line 366
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 372
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 374
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 375
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 378
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 379
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 380
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 382
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 383
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 384
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v2, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 385
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 386
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setLockChangeConfiguration(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setCafSetting()V

    .line 389
    iput v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    .line 390
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 392
    invoke-virtual {p0, v3, v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisiblePreviewMini(ZZ)V

    .line 393
    invoke-virtual {p0, v3, v2, v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisibleArrowGuide(ZZZ)V

    .line 395
    const v0, 0x7f0a035d

    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->showGuideText(ZI)V

    .line 396
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewBuff:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 397
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 398
    sget-boolean v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->IS_PREVIEW_INPUT:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    goto/16 :goto_0
.end method

.method private stopPanorama(Z)V
    .locals 5
    .param p1, "needSaving"    # Z

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 795
    const-string v2, "CameraApp"

    const-string v3, "stopPanorama()"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBar:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    if-lt v2, v4, :cond_2

    .line 798
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit mStatusShot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_1
    :goto_0
    return-void

    .line 801
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->isProcessingFinishTask()Z

    move-result v2

    if-nez v2, :cond_1

    .line 805
    move v0, p1

    .line 806
    .local v0, "isNeedSaving":Z
    if-eqz v0, :cond_3

    .line 807
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x1

    .line 809
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 811
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 812
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Lcom/lge/camera/ControllerFunction;->setSubButton(II)V

    .line 814
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 815
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 816
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->keepScreenOnAwhile()V

    .line 818
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 819
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 822
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    if-eqz v2, :cond_5

    .line 823
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->hideViews()V

    .line 825
    :cond_5
    invoke-virtual {p0, v1, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisiblePreviewBar(ZZ)V

    .line 826
    invoke-virtual {p0, v1, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisibleTakingGuide(ZZ)V

    .line 827
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setCafSetting()V

    .line 829
    if-eqz v0, :cond_7

    .line 830
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 832
    iput v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    .line 833
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 834
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.Rotate"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 836
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    .line 837
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempLocation:Landroid/location/Location;

    .line 841
    :goto_2
    new-instance v2, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    .line 843
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 807
    goto/16 :goto_1

    .line 839
    :cond_7
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mIsShooting:Z

    goto :goto_2
.end method

.method private unbind()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->unbind()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    .line 557
    :cond_0
    return-void
.end method


# virtual methods
.method public addStillImage(Lcom/lge/morpho/utils/multimedia/StillImageData;)V
    .locals 2
    .param p1, "dat"    # Lcom/lge/morpho/utils/multimedia/StillImageData;

    .prologue
    .line 870
    const-string v0, "CameraApp"

    const-string v1, "addStillImage START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    .line 874
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$StillProcTask;->start()V

    .line 876
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "addStillImage END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public isProcessingFinishTask()Z
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputImageTask:Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 850
    const/4 v0, 0x1

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 856
    const-string v0, "CameraApp"

    const-string v1, "Panorama Controller onPause - start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const-string v0, "CameraApp"

    const-string v1, "exit onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :goto_0
    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->stopEngine()V

    .line 863
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->resetByPausing()V

    .line 865
    const-string v0, "CameraApp"

    const-string v1, "Panorama Controller onPause -end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 881
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onResume - START"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 883
    const-string v2, "CameraApp"

    const-string v3, "exit onPause"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_0
    return-void

    .line 887
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveTimeStart:J

    sub-long v0, v2, v4

    .line 890
    .local v0, "delay":J
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWaitSaveOutputTask delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 892
    const-string v2, "CameraApp"

    const-string v3, "mWaitSaveOutputTask still wait - START"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    .end local v0    # "delay":J
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "Panorama Controller onResume - END"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-super {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->onResume()V

    goto :goto_0
.end method

.method public startEngine()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 452
    const-string v5, "CameraApp"

    const-string v6, "startEngine START"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkMediator()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    if-nez v5, :cond_1

    .line 455
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exit startEngine checkMediator()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkMediator()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mGet.getCameraDevice()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_plane_panorama"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 461
    const-string v5, "CameraApp"

    const-string v6, "exit startEngine"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_2
    iput v10, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStatusShot:I

    .line 467
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    if-nez v5, :cond_3

    .line 468
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d00dd

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    .line 470
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    if-nez v5, :cond_4

    .line 473
    new-instance v5, Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    invoke-direct {v5, p0, v6}, Lcom/lge/camera/listeners/PlanePanoramaCallback;-><init>(Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;Landroid/view/View;)V

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    .line 477
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v6}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->getAppPanoramaDirectionSettings()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setAppPanoramaDirection(I)V

    .line 479
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iput v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewW:I

    .line 480
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iput v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewH:I

    .line 481
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iput v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPictureW:I

    .line 482
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iput v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPictureH:I

    .line 484
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d0135

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBar:Landroid/widget/ImageView;

    .line 485
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d0134

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBarLayout:Landroid/widget/RelativeLayout;

    .line 486
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 487
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09001a

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 489
    .local v4, "previewWidth":I
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09001d

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 491
    .local v3, "previewBottomMargin":I
    add-int v5, v4, v3

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 492
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d012c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewMini:Landroid/widget/ImageView;

    .line 495
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d012a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateLayout;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewMiniLayout:Lcom/lge/camera/components/RotateLayout;

    .line 497
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d012d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewMiniLayoutOutline:Landroid/widget/RelativeLayout;

    .line 499
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d012e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewMiniLayoutArrow:Landroid/widget/RelativeLayout;

    .line 501
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d0097

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStartAndStopGuideTextLayout:Landroid/widget/RelativeLayout;

    .line 503
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    const v6, 0x7f0d0129

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBackgroundPreviewLayout:Landroid/widget/RelativeLayout;

    .line 506
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewW:I

    iget v7, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewH:I

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->setCameraPreviewSize(II)V

    .line 508
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 509
    .local v0, "buffScale":D
    iget v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewW:I

    iget v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewH:I

    mul-int/2addr v5, v6

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewBuff:[B

    .line 510
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPreviewBuff:[B

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 511
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 513
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mStillProcList:Ljava/util/ArrayList;

    .line 514
    iput-boolean v10, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mIsShooting:Z

    .line 516
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v5

    iput v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCurOrientaionDegree:I

    .line 517
    iput-boolean v11, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mInit:Z

    .line 519
    invoke-virtual {p0, v11, v10}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisiblePreviewMini(ZZ)V

    .line 520
    invoke-virtual {p0, v11, v10, v10}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->setVisibleArrowGuide(ZZZ)V

    .line 521
    const v5, 0x7f0a035d

    invoke-virtual {p0, v11, v5}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->showGuideText(ZI)V

    .line 522
    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v6

    invoke-interface {v5, v11, v6}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "input"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveInputDirPath:Ljava/lang/String;

    .line 525
    const-string v5, "CameraApp"

    const-string v6, "startEngine END"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startPanorama()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 686
    const-string v1, "CameraApp"

    const-string v2, "startPanorama()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->isProcessingFinishTask()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit startPanorama() isProcessing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->isProcessingFinishTask()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideQuickFunctionController()V

    .line 692
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 693
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 695
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 696
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 697
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->setKeepScreenOn()V

    .line 699
    const/16 v0, 0x1f4

    .line 700
    .local v0, "updateDelay":I
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6, v7}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 701
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6, v7}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 703
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBar:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    if-nez v1, :cond_2

    .line 706
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->initMorphoPanoramaGP()V

    .line 708
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    if-eqz v1, :cond_4

    .line 709
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panorama version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/lge/morpho/core/MorphoPanoramaGP;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->setMotionlessThreshold(I)I

    .line 715
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1, v5, v5}, Lcom/lge/morpho/core/MorphoPanoramaGP;->setFarThreshold(II)I

    .line 716
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    iget v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mUseSensorThres:I

    invoke-virtual {v1, v2}, Lcom/lge/morpho/core/MorphoPanoramaGP;->setUseSensorThreshold(I)I

    .line 717
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    if-nez v1, :cond_3

    .line 718
    new-instance v1, Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mBaseView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;-><init>(Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;Landroid/view/View;)V

    iput-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    .line 720
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->getAppDeviceRotation()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCallback:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    invoke-virtual {v3}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->getAppPanoramaDirection()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->allocateDisplayBuffers(I)V

    .line 739
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1, v4, v4}, Lcom/lge/morpho/core/MorphoPanoramaGP;->setUseSensorAssist(II)I

    move-result v1

    const-string v2, "setUseSensorAssist() -> "

    invoke-virtual {p0, v1, v2, v4}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 746
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->start()I

    move-result v1

    const-string v2, "start() -> "

    invoke-virtual {p0, v1, v2, v4}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 748
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->resetParamToTaking()V

    .line 750
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->doStartPanoramaJob()V

    goto/16 :goto_0

    .line 711
    :cond_4
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exit mPanoramaGP = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopEngine()V
    .locals 5

    .prologue
    .line 529
    const-string v1, "CameraApp"

    const-string v2, "stopEngine START"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSyncObj:Ljava/lang/Object;

    monitor-enter v2

    .line 531
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->stopPanorama()V

    .line 533
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    .line 534
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 535
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 536
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 538
    :cond_0
    const-string v1, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRequestTakePicture="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRequestTakePicture:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCntReqShoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mRequestTakePicture:Z

    if-eqz v1, :cond_1

    .line 542
    iget v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mCntReqShoot:I

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->hide()V

    .line 545
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->unbind()V

    .line 546
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    const-string v1, "CameraApp"

    const-string v2, "stopEngine END"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void

    .line 546
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopPanorama()V
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->stopPanorama(Z)V

    .line 792
    return-void
.end method
