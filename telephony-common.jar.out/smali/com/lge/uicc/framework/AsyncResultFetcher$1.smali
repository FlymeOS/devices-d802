.class final Lcom/lge/uicc/framework/AsyncResultFetcher$1;
.super Landroid/os/Handler;
.source "AsyncResultFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/uicc/framework/AsyncResultFetcher;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 36
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/lge/uicc/framework/AsyncResultFetcher;

    if-nez v2, :cond_1

    .line 37
    :cond_0
    const-string v2, "invalid message !!!"

    # invokes: Lcom/lge/uicc/framework/AsyncResultFetcher;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/framework/AsyncResultFetcher;->access$000(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/lge/uicc/framework/AsyncResultFetcher;

    .line 41
    .local v1, "fetcher":Lcom/lge/uicc/framework/AsyncResultFetcher;
    monitor-enter v1

    .line 42
    :try_start_0
    const-string v2, "notify"

    # invokes: Lcom/lge/uicc/framework/AsyncResultFetcher;->logd(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/lge/uicc/framework/AsyncResultFetcher;->access$100(Ljava/lang/String;)V

    .line 43
    # setter for: Lcom/lge/uicc/framework/AsyncResultFetcher;->ar:Landroid/os/AsyncResult;
    invoke-static {v1, v0}, Lcom/lge/uicc/framework/AsyncResultFetcher;->access$202(Lcom/lge/uicc/framework/AsyncResultFetcher;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 44
    const/4 v2, 0x1

    # setter for: Lcom/lge/uicc/framework/AsyncResultFetcher;->notified:Z
    invoke-static {v1, v2}, Lcom/lge/uicc/framework/AsyncResultFetcher;->access$302(Lcom/lge/uicc/framework/AsyncResultFetcher;Z)Z

    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 46
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
