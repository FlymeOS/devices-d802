.class Lcom/lge/data/DataSchedulerService$InternalHandler;
.super Landroid/os/Handler;
.source "DataSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/data/DataSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/data/DataSchedulerService;


# direct methods
.method public constructor <init>(Lcom/lge/data/DataSchedulerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/data/DataSchedulerService$InternalHandler;->this$0:Lcom/lge/data/DataSchedulerService;

    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v2, p0, Lcom/lge/data/DataSchedulerService$InternalHandler;->this$0:Lcom/lge/data/DataSchedulerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/DataSchedulerAppInfo;

    check-cast v1, [Landroid/net/DataSchedulerAppInfo;

    # invokes: Lcom/lge/data/DataSchedulerService;->onUpdateApplicatoinInformation([Landroid/net/DataSchedulerAppInfo;)V
    invoke-static {v2, v1}, Lcom/lge/data/DataSchedulerService;->access$100(Lcom/lge/data/DataSchedulerService;[Landroid/net/DataSchedulerAppInfo;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 101
    .local v0, "uid":I
    iget-object v1, p0, Lcom/lge/data/DataSchedulerService$InternalHandler;->this$0:Lcom/lge/data/DataSchedulerService;

    # invokes: Lcom/lge/data/DataSchedulerService;->onUpdateSocketInformation(I)V
    invoke-static {v1, v0}, Lcom/lge/data/DataSchedulerService;->access$200(Lcom/lge/data/DataSchedulerService;I)V

    goto :goto_0

    .line 105
    .end local v0    # "uid":I
    :pswitch_2
    iget-object v1, p0, Lcom/lge/data/DataSchedulerService$InternalHandler;->this$0:Lcom/lge/data/DataSchedulerService;

    # invokes: Lcom/lge/data/DataSchedulerService;->onPollingPackets()V
    invoke-static {v1}, Lcom/lge/data/DataSchedulerService;->access$300(Lcom/lge/data/DataSchedulerService;)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
