.class Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;
.super Ljava/lang/Thread;
.source "EngineSimulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackThread"
.end annotation


# instance fields
.field public fgContinue:Z

.field final synthetic this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->fgContinue:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;
    .param p2, "x1"    # Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;-><init>(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)V

    return-void
.end method

.method private waitCallback()V
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 54
    .local v1, "piece":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 57
    .end local v1    # "piece":Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 56
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->this$0:Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;

    # getter for: Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->mCallbackQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;->access$100(Lcom/qualcomm/location/vzw_library/imp/EngineSimulator;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 57
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->fgContinue:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/qualcomm/location/vzw_library/imp/EngineSimulator$CallbackThread;->waitCallback()V

    goto :goto_0
.end method
