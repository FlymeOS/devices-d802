.class final Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;
.super Landroid/os/Handler;
.source "WifiServiceImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    .line 394
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 399
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 421
    const-string v0, "WifiServiceInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore handleMessage msg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 401
    :pswitch_0
    const-string v0, "WifiServiceInternal"

    const-string v1, "startWifi MESSAGE_WIFI_DELAYED_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$400(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->removeMessages(I)V

    .line 403
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedUSimReceiver:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$300(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # setter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedUSimReceiver:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$302(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;Z)Z

    .line 405
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$700(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mUSIMReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$600(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImplEx;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mHandler:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$400(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$500(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 413
    const-string v0, "WifiServiceInternal"

    const-string v1, "MESSAGE_WIFI_DELAYED_ON_FOR_CA setWifiEnabled(TRUE)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # setter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mReceivedCaReceiver:Z
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$502(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;Z)Z

    .line 415
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$700(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    # getter for: Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->mCaReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->access$800(Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal$InternalHandler;->this$1:Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;

    iget-object v0, v0, Lcom/android/server/wifi/WifiServiceImplEx$WifiServiceInternal;->this$0:Lcom/android/server/wifi/WifiServiceImplEx;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiServiceImplEx;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
