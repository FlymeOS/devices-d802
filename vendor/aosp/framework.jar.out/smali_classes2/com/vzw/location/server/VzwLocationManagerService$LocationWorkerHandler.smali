.class Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/server/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/server/VzwLocationManagerService;


# direct methods
.method private constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p2, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$1;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 439
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 440
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/vzw/location/server/VzwLocationManagerService;->access$500(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :try_start_1
    const-string v3, "VzwLocationManagerService"

    const-string v5, "[LocationWorkerHandler] handleMessage MESSAGE_LOCATION_CHANGED(1)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/vzw/location/VzwLocation;

    .line 443
    .local v1, "location":Lcom/vzw/location/VzwLocation;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 444
    .local v2, "sessionId":I
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;->this$0:Lcom/vzw/location/server/VzwLocationManagerService;

    # getter for: Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;
    invoke-static {v3}, Lcom/vzw/location/server/VzwLocationManagerService;->access$700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClientManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/vzw/location/server/VzwClientManager;->onLocationFixReceived(Lcom/vzw/location/VzwLocation;I)V

    .line 445
    monitor-exit v4

    .line 450
    .end local v1    # "location":Lcom/vzw/location/VzwLocation;
    .end local v2    # "sessionId":I
    :cond_0
    :goto_0
    return-void

    .line 445
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "Exception in LocationWorkerHandler.handleMessage:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
