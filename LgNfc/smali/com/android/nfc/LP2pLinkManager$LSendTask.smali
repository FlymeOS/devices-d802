.class Lcom/android/nfc/LP2pLinkManager$LSendTask;
.super Lcom/android/nfc/P2pLinkManager$SendTask;
.source "LP2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/LP2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LSendTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/LP2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/LP2pLinkManager;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;)I
    .locals 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, "response":Landroid/nfc/NdefMessage;
    const/4 v1, 0x1

    .line 282
    .local v1, "handoverRunning":Z
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v6, :cond_1

    .line 283
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 284
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/LP2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v6}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 285
    .local v2, "request":Landroid/nfc/NdefMessage;
    if-eqz v2, :cond_2

    .line 287
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v6, v2}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 296
    if-nez v3, :cond_3

    .line 305
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    :cond_1
    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v6, :cond_5

    .line 309
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/LP2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v6}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 310
    .restart local v2    # "request":Landroid/nfc/NdefMessage;
    if-nez v2, :cond_4

    .line 311
    sget-boolean v5, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v6, "LP2pLinkManager"

    const-string v7, "request from mHandoverManager.createHandoverRequestMessage is null"

    invoke-static {v5, v6, v7}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v5, 0x1

    .line 323
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    :cond_2
    :goto_1
    return v5

    .line 288
    .restart local v2    # "request":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HandoverRequestMessageRetry"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 293
    throw v0

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v1, 0x0

    .line 303
    goto :goto_0

    .line 314
    :cond_4
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v6, v2}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    .line 315
    .local v4, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v4}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 317
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    .end local v4    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_5
    if-eqz v3, :cond_2

    .line 320
    iget-object v6, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v6, p1, v3}, Lcom/android/nfc/handover/LHandoverManager;->doLgeHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 323
    const/4 v5, 0x0

    goto :goto_1
.end method

.method doWPSHandover(Landroid/nfc/NdefMessage;)I
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, "response":Landroid/nfc/NdefMessage;
    const/4 v1, 0x1

    .line 331
    .local v1, "handoverRunning":Z
    const-string v4, "LP2pLinkManager"

    const-string v5, "Trying - doWPSHandover"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 334
    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/LHandoverManager;->getWPSRequestMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 335
    .local v2, "request":Landroid/nfc/NdefMessage;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v4, :cond_1

    .line 337
    :try_start_0
    sget-boolean v4, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v5, "LP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doWPSHandover : request - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v4, v2}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 339
    sget-boolean v4, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v5, "LP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doWPSHandover : reponse - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    const/4 v1, 0x0

    .line 353
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HandoverRequestMessageRetry"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    throw v0

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v4, "LP2pLinkManager"

    const-string v5, "doWPSHandover : HANDOVER_UNSUPPORTED"

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v4, 0x2

    .line 356
    .end local v2    # "request":Landroid/nfc/NdefMessage;
    :goto_1
    return v4

    .line 354
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/LP2pLinkManager;->mLHandoverManager:Lcom/android/nfc/handover/LHandoverManager;

    invoke-virtual {v4, v3}, Lcom/android/nfc/handover/LHandoverManager;->doWPSHandover(Landroid/nfc/NdefMessage;)V

    .line 356
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected sendresultMessageforfinishBeamUI(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    iget-object v0, v0, Lcom/android/nfc/LP2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    :cond_0
    return-void
.end method

.method protected tryWPSHandover(Landroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/nfc/LP2pLinkManager$LSendTask;->doWPSHandover(Landroid/nfc/NdefMessage;)I

    move-result v0

    .line 374
    .local v0, "handoverResult":I
    sget-boolean v2, Lcom/android/nfc/P2pLinkManager;->DBG:Z

    const-string v3, "LP2pLinkManager"

    const-string v4, "Trying WPShandover request"

    invoke-static {v2, v3, v4}, Lcom/android/nfc/utils/LNfcLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 376
    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return v1

    .line 378
    :pswitch_0
    const/4 v1, 0x1

    .line 379
    goto :goto_0

    .line 381
    :pswitch_1
    const/4 v1, 0x0

    .line 382
    goto :goto_0

    .line 384
    :pswitch_2
    const/4 v1, 0x0

    .line 385
    iget-object v2, p0, Lcom/android/nfc/LP2pLinkManager$LSendTask;->this$0:Lcom/android/nfc/LP2pLinkManager;

    invoke-virtual {v2}, Lcom/android/nfc/LP2pLinkManager;->onHandoverUnsupported()V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
