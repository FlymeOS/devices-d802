.class Lcom/kddi/net/PreferredNetworkService$1;
.super Landroid/content/BroadcastReceiver;
.source "PreferredNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/net/PreferredNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/net/PreferredNetworkService;


# direct methods
.method constructor <init>(Lcom/kddi/net/PreferredNetworkService;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.lge.intent.action.SetNetWorkMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const-string v2, "RIL_PreferredNetworkService"

    const-string v3, "myBroadcastReceiver SetNetWorkMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    const-string v3, "exception"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 71
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    invoke-static {v2, v5, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 72
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 73
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iput-object v5, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    .line 95
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    .line 96
    const-string v2, "RIL_PreferredNetworkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myBroadcastReceiver : mAction is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v4, v4, Lcom/kddi/net/PreferredNetworkService;->mAction:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 75
    :cond_1
    const-string v2, "com.lge.intent.action.GetNetWorkMode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "networkmode"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 78
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    const-string v3, "exception"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 79
    const-string v2, "RIL_PreferredNetworkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "myBroadcastReceiver GetNetWorkMode networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget v2, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    if-ne v2, v8, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_5

    :cond_2
    sget v2, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    :cond_3
    sget v2, Lcom/kddi/net/PreferredNetworkService;->preNetworkType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 85
    :cond_4
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    iput v6, v2, Landroid/os/Message;->arg2:I

    .line 90
    :goto_1
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    invoke-static {v2, v5, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 91
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 92
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iput-object v5, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    goto/16 :goto_0

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/kddi/net/PreferredNetworkService$1;->this$0:Lcom/kddi/net/PreferredNetworkService;

    iget-object v2, v2, Lcom/kddi/net/PreferredNetworkService;->mResponse:Landroid/os/Message;

    iput v7, v2, Landroid/os/Message;->arg2:I

    goto :goto_1
.end method
