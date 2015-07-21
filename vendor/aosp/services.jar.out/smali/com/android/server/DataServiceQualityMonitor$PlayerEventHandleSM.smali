.class final Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
.super Lcom/android/internal/util/StateMachine;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerEventHandleSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;,
        Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;,
        Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;,
        Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;,
        Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;,
        Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;
    }
.end annotation


# static fields
.field static final BUFFERING_WAIT_TIME_AFTER_SEEK_IN_MILISEC:J = 0x3a98L

.field static final BUFFERING_WAIT_TIME_IN_MILISEC:J = 0x2710L

.field static final PLAYEREV_BUFFERING_WAIT_EXPIRED:I = 0x13cf

.field static final PLAYEREV_WAIT_RENDERING_EXPIRED:I = 0x13ce

.field static final RENDERING_WAIT_TIME_IN_MILISEC:J = 0x3a98L


# instance fields
.field private mBufferingState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

.field private mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

.field private mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

.field private mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

.field private mStartState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;

.field private mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

.field private mbufferingcount:I

.field private mbufferingtime:J

.field private mplaytime:J

.field final synthetic this$0:Lcom/android/server/DataServiceQualityMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/DataServiceQualityMonitor;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    .line 465
    invoke-direct {p0, p3, p4}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 457
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;-><init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V

    iput-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    .line 458
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;-><init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V

    iput-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    .line 459
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;-><init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V

    iput-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStartState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;

    .line 460
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;-><init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V

    iput-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    .line 461
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;-><init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V

    iput-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mBufferingState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

    .line 462
    new-instance v0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    invoke-direct {v0, p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;-><init>(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)V

    iput-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    .line 467
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->addState(Lcom/android/internal/util/State;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 469
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStartState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 470
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 471
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mBufferingState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 472
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mDefaultState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 473
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    invoke-virtual {p0, v0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 474
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mPlayState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$PlayState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStopState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StopState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mBufferingState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$BufferingState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mSkippedState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$SkippedState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingcount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingcount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingtime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # J

    .prologue
    .line 407
    iput-wide p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mbufferingtime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget-wide v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # J

    .prologue
    .line 407
    iput-wide p1, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mplaytime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->sendIntentBroadcast(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentStateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # I

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;)Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->mStartState:Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM$StartState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    const-string v1, ""

    .line 446
    .local v1, "retString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 448
    .local v0, "currState":Lcom/android/internal/util/IState;
    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    .line 454
    :goto_0
    return-object v1

    .line 451
    :cond_0
    const-string v1, "null state"

    goto :goto_0
.end method

.method private sendIntentBroadcast(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 430
    sget-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.L3_DATA_SERVICE_QUALITY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "resultStatus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v2, "dataEnabled"

    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L3_DATA_SERVICE_QUALITY STATUS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DataEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/DataServiceQualityMonitor;->mDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    iget-object v2, v2, Lcom/android/server/DataServiceQualityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    .line 442
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 437
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "se":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIntentBroadcast() SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public sendMessageImmediate(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$PlayerEventHandleSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    .line 427
    return-void
.end method
