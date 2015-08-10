.class Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
.super Landroid/os/Handler;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 466
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 467
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v5, :cond_1

    .line 468
    const-string v5, "HostEmulationManager"

    const-string v7, "Dropping service response message; service no longer active."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    monitor-exit v6

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v7, v7, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 471
    const-string v5, "HostEmulationManager"

    const-string v7, "Dropping service response message; service no longer bound."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit v6

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 476
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 477
    .local v1, "dataBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 480
    const-string v5, "data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 481
    .local v0, "data":[B
    if-eqz v0, :cond_3

    array-length v5, v0

    if-nez v5, :cond_4

    .line 482
    :cond_3
    const-string v5, "HostEmulationManager"

    const-string v6, "Dropping empty R-APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :cond_4
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 487
    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget v4, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 488
    .local v4, "state":I
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 489
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 490
    const-string v5, "HostEmulationManager"

    const-string v6, "Sending data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_0

    .line 488
    .end local v4    # "state":I
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 493
    .restart local v4    # "state":I
    :cond_5
    const-string v5, "HostEmulationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping data, wrong state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    .end local v0    # "data":[B
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    .end local v4    # "state":I
    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 496
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 497
    :try_start_4
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v7, v7, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v3

    .line 498
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v2, 0x0

    .line 499
    .local v2, "isPayment":Z
    iget-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 500
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v8, v8, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    iget-object v9, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 503
    :cond_7
    monitor-exit v6

    goto/16 :goto_0

    .end local v2    # "isPayment":Z
    .end local v3    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5
.end method
