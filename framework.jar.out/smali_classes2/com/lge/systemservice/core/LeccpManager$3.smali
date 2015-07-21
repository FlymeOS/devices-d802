.class Lcom/lge/systemservice/core/LeccpManager$3;
.super Ljava/lang/Thread;
.source "LeccpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/systemservice/core/LeccpManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/systemservice/core/LeccpManager;


# direct methods
.method constructor <init>(Lcom/lge/systemservice/core/LeccpManager;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 504
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    new-instance v2, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;-><init>(Lcom/lge/systemservice/core/LeccpManager$1;)V

    # setter for: Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;
    invoke-static {v1, v2}, Lcom/lge/systemservice/core/LeccpManager;->access$202(Lcom/lge/systemservice/core/LeccpManager;Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;)Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    .line 506
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mMessageLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$400(Lcom/lge/systemservice/core/LeccpManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 507
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$500(Lcom/lge/systemservice/core/LeccpManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$500(Lcom/lge/systemservice/core/LeccpManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 509
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mHandler:Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$200(Lcom/lge/systemservice/core/LeccpManager;)Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/systemservice/core/LeccpManager$ListenerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 512
    .end local v0    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 511
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lge/systemservice/core/LeccpManager$3;->this$0:Lcom/lge/systemservice/core/LeccpManager;

    # getter for: Lcom/lge/systemservice/core/LeccpManager;->mTempMessageQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/lge/systemservice/core/LeccpManager;->access$500(Lcom/lge/systemservice/core/LeccpManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 512
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 515
    return-void
.end method
