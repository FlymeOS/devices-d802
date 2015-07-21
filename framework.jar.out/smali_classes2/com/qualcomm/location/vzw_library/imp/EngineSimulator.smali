.class Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;
.super Ljava/lang/Object;
.source "EngineSimulator.java"

# interfaces
.implements Lcom/qualcomm/location/vzw_library/imp/ILocationEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$1;,
        Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;,
        Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;,
        Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VzwHalEngineSim"


# instance fields
.field private mCallbackQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$1;)V

    iput-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->cleanup()V

    .line 356
    return-void
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-virtual {v0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->init()Z

    move-result v0

    return v0
.end method

.method public resetGps(I)V
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-virtual {v0, p1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->resetGps(I)V

    .line 397
    return-void
.end method

.method public setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-virtual {v0, p1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->setCallbackInterface(Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;)V

    .line 364
    return-void
.end method

.method public set_agps_server(ILjava/lang/String;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->set_agps_server(ILjava/lang/String;I)V

    .line 368
    return-void
.end method

.method public start(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;ILjava/lang/String;)Z
    .locals 1
    .param p1, "criteria"    # Lcom/qualcomm/location/vzw_library/VzwHalCriteria;
    .param p2, "sessionId"    # I
    .param p3, "app"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->simStart(Lcom/qualcomm/location/vzw_library/VzwHalCriteria;I)Z

    move-result v0

    return v0
.end method

.method public stop()Z
    .locals 5

    .prologue
    .line 375
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    invoke-virtual {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->simStop()Z

    .line 376
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    # invokes: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->access$500(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    # invokes: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->access$500(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->TERM_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    if-ne v2, v3, :cond_2

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    # invokes: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->access$500(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->IDLE:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    # invokes: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->access$500(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;->TERM_REQ:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    if-ne v2, v3, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 385
    :cond_2
    :try_start_0
    const-string v2, "VzwHalEngineSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop requested, waiting. engine state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mThread:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;

    # invokes: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->getEngineState()Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;
    invoke-static {v4}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;->access$500(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineSimulatorThread;)Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$EngineState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-wide/16 v2, 0x12c

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 392
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
