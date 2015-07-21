.class Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$2;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 377
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$2;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$500(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 378
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "stateExtra":Ljava/lang/String;
    const-string v1, "WifiServiceInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive1 ACTION_SIM_STATE_CHANGED stateExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$2;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$400(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->removeMessages(I)V

    .line 385
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$2;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$400(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->sendEmptyMessage(I)Z

    .line 388
    .end local v0    # "stateExtra":Ljava/lang/String;
    :cond_1
    return-void
.end method
