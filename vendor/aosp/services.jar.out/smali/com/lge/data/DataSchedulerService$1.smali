.class Lcom/lge/data/DataSchedulerService$1;
.super Landroid/os/HandlerThread;
.source "DataSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/data/DataSchedulerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/data/DataSchedulerService;


# direct methods
.method constructor <init>(Lcom/lge/data/DataSchedulerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/data/DataSchedulerService$1;->this$0:Lcom/lge/data/DataSchedulerService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/data/DataSchedulerService$1;->this$0:Lcom/lge/data/DataSchedulerService;

    new-instance v1, Lcom/lge/data/DataSchedulerService$InternalHandler;

    iget-object v2, p0, Lcom/lge/data/DataSchedulerService$1;->this$0:Lcom/lge/data/DataSchedulerService;

    invoke-virtual {p0}, Lcom/lge/data/DataSchedulerService$1;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lge/data/DataSchedulerService$InternalHandler;-><init>(Lcom/lge/data/DataSchedulerService;Landroid/os/Looper;)V

    # setter for: Lcom/lge/data/DataSchedulerService;->mHandler:Lcom/lge/data/DataSchedulerService$InternalHandler;
    invoke-static {v0, v1}, Lcom/lge/data/DataSchedulerService;->access$002(Lcom/lge/data/DataSchedulerService;Lcom/lge/data/DataSchedulerService$InternalHandler;)Lcom/lge/data/DataSchedulerService$InternalHandler;

    .line 78
    iget-object v0, p0, Lcom/lge/data/DataSchedulerService$1;->this$0:Lcom/lge/data/DataSchedulerService;

    invoke-virtual {v0}, Lcom/lge/data/DataSchedulerService;->systemReady()V

    .line 79
    return-void
.end method
