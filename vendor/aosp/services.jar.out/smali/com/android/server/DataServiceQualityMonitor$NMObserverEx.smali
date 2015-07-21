.class Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;
.super Landroid/net/INetworkManagementEventObserverEx$Stub;
.source "DataServiceQualityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DataServiceQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NMObserverEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DataServiceQualityMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/DataServiceQualityMonitor;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserverEx$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DataServiceQualityMonitor;Lcom/android/server/DataServiceQualityMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/DataServiceQualityMonitor;
    .param p2, "x1"    # Lcom/android/server/DataServiceQualityMonitor$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;-><init>(Lcom/android/server/DataServiceQualityMonitor;)V

    return-void
.end method


# virtual methods
.method public DnsFailed(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    sget-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->DNSproblemNotiEnabled:Z

    if-nez v0, :cond_0

    .line 325
    const-string v0, "DNSproblemNotiEnabled is disabled ignore DNS fail CB"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 328
    :cond_0
    const/16 v0, 0xf

    if-eq p2, v0, :cond_1

    .line 329
    const-string v0, "DNS error code is not timeout ignore"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_1
    sget-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    if-nez v0, :cond_2

    .line 333
    const-string v0, "Dns timeout occured do internet check."

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    const/16 v2, 0x13c2

    invoke-virtual {v1, v2}, Lcom/android/server/DataServiceQualityMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/DataServiceQualityMonitor;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "Dns timeout INTERNET_CHECK already in progress ignore!"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public DsqnNotification(Ljava/lang/String;I)V
    .locals 3
    .param p1, "devname"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSQM DsqnNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 345
    if-ne p2, v2, :cond_0

    .line 346
    const-string v0, "start to monitor internet connection"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 347
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->SocketConnFailNotiEnabled:Z

    .line 348
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->DNSproblemNotiEnabled:Z

    .line 349
    sput-boolean v2, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    .line 364
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 353
    const-string v0, "First Local socket conn established without global connection"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_1
    sget-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->SocketConnFailNotiEnabled:Z

    if-nez v0, :cond_2

    .line 357
    const-string v0, "ignore SockConn fail CB"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_2
    sget-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->mInternetcheckProgress:Z

    if-ne v0, v2, :cond_3

    .line 360
    const-string v0, "InternetcheckProgress ignore"

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    const/16 v2, 0x13c2

    invoke-virtual {v1, v2}, Lcom/android/server/DataServiceQualityMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/DataServiceQualityMonitor;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public GeneralNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    return-void
.end method

.method public PlayerEvNotification(Ljava/lang/String;I)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received PlayerEvNotification : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$000(Ljava/lang/String;)V

    .line 371
    const-string v0, "poorquality"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    sget-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    if-ne v0, v2, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # invokes: Lcom/android/server/DataServiceQualityMonitor;->sendDSqualityIntent(I)V
    invoke-static {v0, v2}, Lcom/android/server/DataServiceQualityMonitor;->access$200(Lcom/android/server/DataServiceQualityMonitor;I)V

    .line 374
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/DataServiceQualityMonitor;->PoorStreamQualNotiEnabled:Z

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const-string v0, "newplay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13bb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 381
    :cond_2
    const-string v0, "started"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13bc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 383
    :cond_3
    const-string v0, "rendering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13bd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 385
    :cond_4
    const-string v0, "stopped"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13be

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 387
    :cond_5
    const-string v0, "bufferingstart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13bf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 389
    :cond_6
    const-string v0, "bufferingend"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 390
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13c0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 391
    :cond_7
    const-string v0, "skipped"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DataServiceQualityMonitor$NMObserverEx;->this$0:Lcom/android/server/DataServiceQualityMonitor;

    # getter for: Lcom/android/server/DataServiceQualityMonitor;->mSMHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DataServiceQualityMonitor;->access$300(Lcom/android/server/DataServiceQualityMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    return-void
.end method

.method public interfaceThrottleStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    return-void
.end method

.method public netdConnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 403
    return-void
.end method
