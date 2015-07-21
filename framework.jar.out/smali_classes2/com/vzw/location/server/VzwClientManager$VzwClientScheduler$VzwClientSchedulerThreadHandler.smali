.class final Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;
.super Landroid/os/Handler;
.source "VzwClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VzwClientSchedulerThreadHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;


# direct methods
.method private constructor <init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;Lcom/vzw/location/server/VzwClientManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;
    .param p2, "x1"    # Lcom/vzw/location/server/VzwClientManager$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;-><init>(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 375
    iget v1, p1, Landroid/os/Message;->what:I

    .line 376
    .local v1, "message":I
    const-string v3, "VzwClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[VzwClientSchedulerThreadHandler] handleMessage. Msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 386
    const-string v2, "VzwClientManager"

    const-string v3, "[VzwClientSchedulerThreadHandler] Handle Msg does not exist!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 380
    .local v0, "isSingle":I
    iget-object v3, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    iget-object v3, v3, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    iget-object v4, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    # getter for: Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->mClient:Lcom/vzw/location/server/VzwClient;
    invoke-static {v4}, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->access$000(Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;)Lcom/vzw/location/server/VzwClient;

    move-result-object v4

    if-ne v0, v2, :cond_0

    :goto_1
    # invokes: Lcom/vzw/location/server/VzwClientManager;->scheduleNextenQueue(Lcom/vzw/location/server/VzwClient;Z)V
    invoke-static {v3, v4, v2}, Lcom/vzw/location/server/VzwClientManager;->access$800(Lcom/vzw/location/server/VzwClientManager;Lcom/vzw/location/server/VzwClient;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 383
    .end local v0    # "isSingle":I
    :pswitch_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler$VzwClientSchedulerThreadHandler;->this$1:Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;

    iget-object v2, v2, Lcom/vzw/location/server/VzwClientManager$VzwClientScheduler;->this$0:Lcom/vzw/location/server/VzwClientManager;

    # invokes: Lcom/vzw/location/server/VzwClientManager;->requestStart()V
    invoke-static {v2}, Lcom/vzw/location/server/VzwClientManager;->access$900(Lcom/vzw/location/server/VzwClientManager;)V

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
