.class public Lcom/android/internal/telephony/soi/GsmTransport;
.super Lcom/android/internal/telephony/soi/Transport;
.source "GsmTransport.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GsmTransport"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/soi/IRelay;)V
    .locals 0
    .param p1, "relay"    # Lcom/android/internal/telephony/soi/IRelay;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/Transport;-><init>(Lcom/android/internal/telephony/soi/IRelay;)V

    .line 43
    invoke-interface {p1, p0}, Lcom/android/internal/telephony/soi/IRelay;->registerRelayEventListener(Lcom/android/internal/telephony/soi/IRelayEventListener;)V

    .line 44
    return-void
.end method

.method private constructSmsMessage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "a"    # [Ljava/lang/String;
    .param p2, "tpdu"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 428
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "smsc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    .line 432
    const-string v1, "GsmTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructSmsMessage() smsc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   tpdu :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v1, "GsmTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructSmsMessage() CMT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method private getMoRecordAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/MoRecord;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 464
    move-object v1, p1

    .line 465
    .local v1, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 466
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 467
    .local v2, "record":Lcom/android/internal/telephony/soi/GsmMoRecord;
    if-nez v1, :cond_0

    .line 468
    const-string v3, "GsmTransport"

    const-string v4, "getRecordAsyncResultObj() msg.obj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-object v2

    :cond_0
    move-object v0, v1

    .line 470
    check-cast v0, Landroid/os/AsyncResult;

    .line 471
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 472
    const-string v3, "GsmTransport"

    const-string v4, "getRecordAsyncResultObj() msg.obj.userObj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "record":Lcom/android/internal/telephony/soi/GsmMoRecord;
    check-cast v2, Lcom/android/internal/telephony/soi/GsmMoRecord;

    .restart local v2    # "record":Lcom/android/internal/telephony/soi/GsmMoRecord;
    goto :goto_0
.end method

.method private handleMoTimer(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    const-string v3, "GsmTransport"

    const-string v4, "handleMoTimer()"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-nez p1, :cond_1

    .line 84
    const-string v3, "GsmTransport"

    const-string v4, "msg does not exist, msg null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/soi/GsmTransport;->getMoRecordAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/soi/GsmMoRecord;

    .line 89
    .local v2, "record":Lcom/android/internal/telephony/soi/GsmMoRecord;
    if-nez v2, :cond_2

    .line 90
    const-string v3, "GsmTransport"

    const-string v4, "record does not exist, record null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    const/4 v0, 0x0

    .line 94
    .local v0, "isSMMA":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getMessageRef()I

    move-result v1

    .line 95
    .local v1, "messageRef":I
    const v3, 0xffff

    if-ne v1, v3, :cond_3

    .line 96
    const/4 v0, 0x1

    .line 98
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {p0, p0, v3, v4, v0}, Lcom/android/internal/telephony/soi/GsmTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 99
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/soi/GsmTransport;->retryToSend(ILcom/android/internal/telephony/soi/GsmMoRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    const-string v3, "GsmTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove mo record, messageRef = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/soi/IRecordManager;->removeMoByMr(I)V

    goto :goto_0
.end method

.method private handleReceiveMt(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 323
    const-string v8, "GsmTransport"

    const-string v9, "handleReceiveMt()"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v9, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    monitor-enter v9

    .line 326
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v10, :cond_1

    .line 327
    const-string v8, "GsmTransport"

    const-string v10, "ignoring mt msg until previous mt msg send ack"

    invoke-static {v8, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    monitor-exit v9

    .line 362
    :goto_1
    return-void

    .line 329
    :cond_1
    if-eqz p1, :cond_2

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_3

    .line 330
    :cond_2
    const-string v8, "GsmTransport"

    const-string v10, "handleReceiveMt() msg || msg.obj null!!!"

    invoke-static {v8, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v8, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v8}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v8

    .line 361
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 333
    :cond_3
    :try_start_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/soi/TransportData;

    move-object v0, v8

    check-cast v0, Lcom/android/internal/telephony/soi/TransportData;

    move-object v3, v0

    .line 334
    .local v3, "data":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v3, :cond_4

    .line 335
    const-string v8, "GsmTransport"

    const-string v10, "handleReceiveMt() data null!!!"

    invoke-static {v8, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v8, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v8}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v8

    .line 338
    :cond_4
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    .line 339
    .local v1, "a":[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/TransportData;->getMessageRef()I

    move-result v4

    .line 340
    .local v4, "mr":I
    const/4 v2, 0x0

    .line 341
    .local v2, "byteTpdu":[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/TransportData;->getTpdu()[B

    move-result-object v2

    .line 342
    if-nez v2, :cond_5

    .line 344
    const-string v8, "GsmTransport"

    const-string v10, "handleReceiveMt() getTpdu null!!!"

    invoke-static {v8, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    monitor-exit v9

    goto :goto_1

    .line 347
    :cond_5
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "tpdu":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/TransportData;->getScAddress()Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "scAddress":Ljava/lang/String;
    invoke-direct {p0, v1, v7, v6}, Lcom/android/internal/telephony/soi/GsmTransport;->constructSmsMessage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v8, Landroid/os/AsyncResult;

    const/4 v10, 0x0

    invoke-static {v1}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/soi/GsmTransport;->notifyNewSms(Landroid/os/AsyncResult;)V

    .line 353
    const/16 v8, 0x100

    if-ge v4, v8, :cond_0

    .line 355
    invoke-virtual {p0, v4, v7, v6}, Lcom/android/internal/telephony/soi/GsmTransport;->getAddMtRecord(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/soi/MtRecord;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/soi/GsmMtRecord;

    .line 357
    .local v5, "mt":Lcom/android/internal/telephony/soi/GsmMtRecord;
    const/4 v8, 0x6

    const/4 v10, 0x0

    invoke-virtual {p0, p0, v8, v5, v10}, Lcom/android/internal/telephony/soi/GsmTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 358
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleReportIndication(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 498
    const-string v0, "GsmTransport"

    const-string v10, "handleReportIndication()"

    invoke-static {v0, v10}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/soi/TransportData;

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/soi/TransportData;

    .line 500
    .local v7, "fromRelayData":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v7, :cond_1

    .line 501
    const-string v0, "GsmTransport"

    const-string v10, "handleReportIndication() fromRelayData null"

    invoke-static {v0, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/TransportData;->getMessageRef()I

    move-result v1

    .line 506
    .local v1, "messageRef":I
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/TransportData;->getSmi()I

    move-result v9

    .line 507
    .local v9, "smi":I
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/soi/IRecordManager;->getMoRecordByMr(I)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/soi/GsmMoRecord;

    .line 508
    .local v2, "mo":Lcom/android/internal/telephony/soi/GsmMoRecord;
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/TransportData;->getError_status()I

    move-result v3

    .line 509
    .local v3, "error":I
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/TransportData;->getCause()I

    move-result v4

    .line 510
    .local v4, "cause":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getResult()Landroid/os/Message;

    move-result-object v5

    .line 511
    .local v5, "result":Landroid/os/Message;
    const/4 v8, 0x0

    .line 513
    .local v8, "isSMMA":Z
    if-eqz v2, :cond_2

    .line 514
    const/4 v6, 0x1

    .line 517
    .local v6, "finished":Z
    sparse-switch v9, :sswitch_data_0

    .line 532
    const-string v0, "GsmTransport"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleReportIndication smi eror smi: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v6, 0x0

    .line 537
    :goto_1
    if-eqz v6, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/soi/IRecordManager;->removeMoByMr(I)V

    goto :goto_0

    .line 519
    :sswitch_0
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/soi/GsmTransport;->processAckReportIndication(ILandroid/os/Message;)Z

    move-result v6

    .line 520
    goto :goto_1

    .line 522
    :sswitch_1
    const/4 v8, 0x1

    .line 523
    invoke-virtual {p0, p0, v11, v12, v8}, Lcom/android/internal/telephony/soi/GsmTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    move-object v0, p0

    .line 524
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/soi/GsmTransport;->processSmmaIndication(ILcom/android/internal/telephony/soi/GsmMoRecord;IILandroid/os/Message;)Z

    move-result v6

    .line 525
    goto :goto_1

    .line 527
    :sswitch_2
    const/4 v8, 0x0

    .line 528
    invoke-virtual {p0, p0, v11, v12, v8}, Lcom/android/internal/telephony/soi/GsmTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    move-object v0, p0

    .line 529
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/soi/GsmTransport;->processSmReportIndication(ILcom/android/internal/telephony/soi/GsmMoRecord;IILandroid/os/Message;)Z

    move-result v6

    .line 530
    goto :goto_1

    .line 541
    .end local v6    # "finished":Z
    :cond_2
    const-string v0, "GsmTransport"

    const-string v10, "no mo record"

    invoke-static {v0, v10}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2000 -> :sswitch_0
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSendAck(Landroid/os/Message;Z)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "withPdu"    # Z

    .prologue
    const/4 v7, 0x0

    .line 240
    const-string v5, "GsmTransport"

    const-string v6, "handleSendAck()"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 242
    const-string v5, "handleSendAck() msg.obj null!!!"

    invoke-static {v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/soi/TransportData;

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/soi/TransportData;

    .line 246
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v0, :cond_1

    .line 247
    const-string v5, "GsmTransport"

    const-string v6, "handleSendAck() data null!!!"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v5, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v5}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v5

    .line 250
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/TransportData;->getResult()Landroid/os/Message;

    move-result-object v4

    .line 251
    .local v4, "result":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    monitor-enter v6

    .line 252
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 253
    const-string v5, "GsmTransport"

    const-string v7, "ignoring delivery ack, already expired mt ack timer"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    if-eqz v4, :cond_2

    .line 255
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    .line 257
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    iget-object v5, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v5}, Lcom/android/internal/telephony/soi/IRecordManager;->getMtRecord()Lcom/android/internal/telephony/soi/MtRecord;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/soi/GsmMtRecord;

    .line 262
    .local v2, "mt":Lcom/android/internal/telephony/soi/GsmMtRecord;
    if-nez v2, :cond_5

    .line 263
    const-string v5, "GsmTransport"

    const-string v6, "mt record is empty"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    if-eqz v4, :cond_4

    .line 265
    invoke-static {v4, v7}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    .line 267
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    monitor-enter v6

    .line 268
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    .line 269
    monitor-exit v6

    goto :goto_0

    .line 270
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 274
    :cond_5
    :try_start_3
    sget-boolean v5, Lcom/android/internal/telephony/soi/GsmRelayTest;->MT_TR2M_TEST_ENABLE:Z

    if-eqz v5, :cond_7

    .line 275
    const-string v5, "GsmTransport"

    const-string v6, "handleSendAck() MT_TR2M_TEST_ENABLE"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    const-string v5, "GsmTransport"

    const-string v6, "handleSendAck(), SoiException occurs"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    if-eqz v4, :cond_6

    .line 283
    invoke-static {v4, v7}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    .line 287
    .end local v1    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    monitor-enter v6

    .line 289
    const/4 v5, 0x1

    const/4 v7, 0x6

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {p0, p0, v5, v7, v8}, Lcom/android/internal/telephony/soi/GsmTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 290
    iget-object v5, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v5}, Lcom/android/internal/telephony/soi/IRecordManager;->removeMt()V

    .line 291
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    .line 292
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    .line 278
    :cond_7
    :try_start_5
    invoke-direct {p0, v0, v2, p2}, Lcom/android/internal/telephony/soi/GsmTransport;->putRlDataForDeliveryAck(Lcom/android/internal/telephony/soi/TransportData;Lcom/android/internal/telephony/soi/GsmMtRecord;Z)Lcom/android/internal/telephony/soi/RelayData;

    move-result-object v3

    .line 279
    .local v3, "relayData":Lcom/android/internal/telephony/soi/RelayData;
    iget-object v5, p0, Lcom/android/internal/telephony/soi/GsmTransport;->relay:Lcom/android/internal/telephony/soi/IRelay;

    invoke-interface {v5, v3}, Lcom/android/internal/telephony/soi/IRelay;->send(Lcom/android/internal/telephony/soi/RelayData;)V
    :try_end_5
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method private handleSendMo(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 176
    const-string v1, "GsmTransport"

    const-string v4, "handleSendMo()"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "messageRef":I
    const/4 v5, 0x0

    .line 179
    .local v5, "pdu":[B
    const/4 v7, 0x0

    .line 180
    .local v7, "result":Landroid/os/Message;
    const/4 v3, 0x0

    .line 181
    .local v3, "smsc":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 182
    :cond_0
    const-string v1, "GsmTransport"

    const-string v4, "handleSendMo() error!!! msg || msg.obj null!!!"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 187
    :cond_1
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/soi/TransportData;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/soi/TransportData;

    move-object v8, v0

    .line 188
    .local v8, "data":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v8, :cond_2

    .line 189
    const-string v1, "GsmTransport"

    const-string v4, "handleSendMo() error!!! data null!!!"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    .end local v8    # "data":Lcom/android/internal/telephony/soi/TransportData;
    :catch_0
    move-exception v9

    .line 219
    .local v9, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    :try_start_1
    const-string v1, "GsmTransport"

    const-string v4, "handleSendMo(), SoiException occurs"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-direct {v1, v2, v4, v6}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {v7, v1}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    .end local v9    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    :catchall_0
    move-exception v1

    throw v1

    .line 192
    .restart local v8    # "data":Lcom/android/internal/telephony/soi/TransportData;
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/TransportData;->getMessageRef()I

    move-result v2

    .line 193
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/TransportData;->getSmsc()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/TransportData;->getTpdu()[B

    move-result-object v5

    .line 195
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/TransportData;->getResult()Landroid/os/Message;

    move-result-object v7

    .line 196
    if-nez v5, :cond_3

    .line 197
    new-instance v1, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v1

    .line 199
    :cond_3
    const/4 v1, 0x1

    aget-byte v2, v5, v1

    .line 200
    if-nez v3, :cond_4

    .line 202
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSCAddressFromEF()Ljava/lang/String;

    move-result-object v3

    .line 203
    if-nez v3, :cond_4

    .line 204
    const-string v1, "GsmTransport"

    const-string v4, "handleSendMo() smsc null error!!!"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v1, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v1

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1}, Lcom/android/internal/telephony/soi/IRecordManager;->sizeOfMo()I

    move-result v1

    const/16 v4, 0x14

    if-lt v1, v4, :cond_5

    .line 209
    new-instance v1, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v1

    .line 211
    :cond_5
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/TransportData;->getRetry()I

    move-result v1

    invoke-direct {p0, v2, v5, v1}, Lcom/android/internal/telephony/soi/GsmTransport;->putMessageReference(I[BI)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->relay:Lcom/android/internal/telephony/soi/IRelay;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/internal/telephony/soi/GsmTransport;->putRlDataForSubmit(ILjava/lang/String;[B)Lcom/android/internal/telephony/soi/RelayData;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/soi/IRelay;->send(Lcom/android/internal/telephony/soi/RelayData;)V

    .line 216
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/TransportData;->getType()I

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/soi/GsmTransport;->getAddMoRecord(ILjava/lang/String;I[BILandroid/os/Message;)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/soi/GsmMoRecord;

    .line 217
    .local v10, "mo":Lcom/android/internal/telephony/soi/GsmMoRecord;
    const/4 v1, 0x5

    const/4 v4, 0x0

    invoke-virtual {p0, p0, v1, v10, v4}, Lcom/android/internal/telephony/soi/GsmTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V
    :try_end_2
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private handleSendSmsMemoryStatus(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 365
    const-string v8, "GsmTransport"

    const-string v9, "handleSendSmsMemoryStatus()"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    if-eqz p1, :cond_0

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 367
    :cond_0
    const-string v8, "handleSendSmsMemoryStatus() msg.obj null!!!"

    invoke-static {v8}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/soi/TransportData;

    move-object v1, v8

    check-cast v1, Lcom/android/internal/telephony/soi/TransportData;

    .line 371
    .local v1, "data":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v1, :cond_2

    .line 372
    const-string v8, "GsmTransport"

    const-string v9, "handleSendSmsMemoryStatus() data null!!!"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/TransportData;->getResult()Landroid/os/Message;

    move-result-object v6

    .line 376
    .local v6, "result":Landroid/os/Message;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/TransportData;->isAvailable()Z

    move-result v0

    .line 377
    .local v0, "available":Z
    const-string v8, "smss"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 379
    .local v7, "smss":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 380
    const-string v8, "GsmTransport"

    const-string v9, "handleSendSmsMemoryStatus() smss null"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_3
    if-nez v6, :cond_4

    .line 384
    const-string v8, "GsmTransport"

    const-string v9, "handleSendSmsMemoryStatus() result null"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "handleSendSmsMemoryStatus() result null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 387
    :cond_4
    const/4 v8, 0x1

    if-ne v8, v0, :cond_5

    .line 388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ff"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 389
    const-string v8, "GsmTransport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSendSmsMemoryStatus() MEM NOT FULL smss : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/16 v8, 0x6f43

    invoke-static {v8, v7}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->updateUsimRecord(ILjava/lang/String;)V

    .line 398
    const v3, 0xffff

    .line 401
    .local v3, "messageRef":I
    iget-object v8, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/soi/IRecordManager;->getMoRecordByMr(I)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 402
    const-string v8, "handleSendSmsMemoryStatus(), processing smma"

    invoke-static {v8}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;)V

    .line 403
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 392
    .end local v3    # "messageRef":I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "fe"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 393
    const-string v8, "GsmTransport"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSendSmsMemoryStatus() MEM FULL smss : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/16 v8, 0x6f43

    invoke-static {v8, v7}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->updateUsimRecord(ILjava/lang/String;)V

    .line 395
    invoke-static {v6}, Lcom/android/internal/telephony/soi/GsmTransport;->sendSuccess(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 407
    .restart local v3    # "messageRef":I
    :cond_6
    new-instance v5, Lcom/android/internal/telephony/soi/RelayData;

    const/4 v8, 0x2

    const/16 v9, 0x32

    const/4 v10, 0x1

    invoke-direct {v5, v8, v9, v3, v10}, Lcom/android/internal/telephony/soi/RelayData;-><init>(IIIZ)V

    .line 409
    .local v5, "relayData":Lcom/android/internal/telephony/soi/RelayData;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/soi/GsmTransport;->relay:Lcom/android/internal/telephony/soi/IRelay;

    invoke-interface {v8, v5}, Lcom/android/internal/telephony/soi/IRelay;->send(Lcom/android/internal/telephony/soi/RelayData;)V

    .line 411
    new-instance v4, Lcom/android/internal/telephony/soi/GsmMoRecord;

    invoke-direct {v4}, Lcom/android/internal/telephony/soi/GsmMoRecord;-><init>()V

    .line 412
    .local v4, "mo":Lcom/android/internal/telephony/soi/GsmMoRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/TransportData;->getType()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setType(I)V

    .line 413
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setMessageRef(I)V

    .line 414
    iget-object v8, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v8, v3, v4}, Lcom/android/internal/telephony/soi/IRecordManager;->add(ILcom/android/internal/telephony/soi/MoRecord;)V

    .line 417
    invoke-static {v6}, Lcom/android/internal/telephony/soi/GsmTransport;->sendSuccess(Landroid/os/Message;)V

    .line 420
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {p0, p0, v8, v4, v9}, Lcom/android/internal/telephony/soi/GsmTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 421
    .end local v4    # "mo":Lcom/android/internal/telephony/soi/GsmMoRecord;
    :catch_0
    move-exception v2

    .line 422
    .local v2, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    const-string v8, "GsmTransport"

    const-string v9, "handleSendSmsMemoryStatus(), SoiException occurs"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleWaitForMtAckTimer(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    const-string v0, "GsmTransport"

    const-string v1, "handleWaitForMtAckTimer()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    monitor-enter v1

    .line 169
    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p0, v0, v2, v3}, Lcom/android/internal/telephony/soi/GsmTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v0}, Lcom/android/internal/telephony/soi/IRecordManager;->removeMt()V

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processAckReportIndication(ILandroid/os/Message;)Z
    .locals 6
    .param p1, "error"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 577
    const-string v1, "GsmTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAckReportIndication(), error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    monitor-enter v2

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1}, Lcom/android/internal/telephony/soi/IRecordManager;->getMtRecord()Lcom/android/internal/telephony/soi/MtRecord;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/soi/GsmMtRecord;

    .line 581
    .local v0, "mt":Lcom/android/internal/telephony/soi/GsmMtRecord;
    if-nez v0, :cond_0

    .line 582
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V

    .line 583
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    .line 584
    monitor-exit v2

    .line 596
    :goto_0
    return v5

    .line 587
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0, p0, v1, v3, v4}, Lcom/android/internal/telephony/soi/GsmTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1}, Lcom/android/internal/telephony/soi/IRecordManager;->removeMt()V

    .line 589
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->waitForMtAck:Ljava/lang/Boolean;

    .line 590
    if-nez p1, :cond_1

    .line 591
    invoke-static {p2}, Lcom/android/internal/telephony/soi/GsmTransport;->sendSuccess(Landroid/os/Message;)V

    .line 595
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "mt":Lcom/android/internal/telephony/soi/GsmMtRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 593
    .restart local v0    # "mt":Lcom/android/internal/telephony/soi/GsmMtRecord;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p2, v1}, Lcom/android/internal/telephony/soi/GsmTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private processSmReportIndication(ILcom/android/internal/telephony/soi/GsmMoRecord;IILandroid/os/Message;)Z
    .locals 4
    .param p1, "messageRef"    # I
    .param p2, "mo"    # Lcom/android/internal/telephony/soi/GsmMoRecord;
    .param p3, "error"    # I
    .param p4, "cause"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 557
    const-string v1, "GsmTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSmReportIndication(), error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/soi/GsmTransport;->tpCauseToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    packed-switch p3, :pswitch_data_0

    .line 564
    const/16 v1, 0x29

    if-ne v1, p4, :cond_1

    .line 566
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p4}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0xa

    invoke-static {p5, v1, v2}, Lcom/android/internal/telephony/soi/GsmTransport;->sendError(Landroid/os/Message;Lcom/android/internal/telephony/SmsResponse;I)V

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 561
    :pswitch_0
    invoke-static {p5, p1}, Lcom/android/internal/telephony/soi/GsmTransport;->sendSuccess(Landroid/os/Message;I)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/soi/GsmTransport;->retryToSend(ILcom/android/internal/telephony/soi/GsmMoRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private processSmmaIndication(ILcom/android/internal/telephony/soi/GsmMoRecord;IILandroid/os/Message;)Z
    .locals 4
    .param p1, "messageRef"    # I
    .param p2, "mo"    # Lcom/android/internal/telephony/soi/GsmMoRecord;
    .param p3, "error"    # I
    .param p4, "cause"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 611
    const-string v1, "GsmTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSmmaIndication(), error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/android/internal/telephony/soi/GsmTransport;->tpCauseToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    sparse-switch p3, :sswitch_data_0

    .line 621
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/soi/GsmTransport;->retryToSend(ILcom/android/internal/telephony/soi/GsmMoRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    :goto_0
    :sswitch_0
    return v0

    .line 614
    :sswitch_1
    const-string v1, "GsmTransport"

    const-string v2, "smma send success"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 612
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method private putMessageReference(I[BI)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "pdu"    # [B
    .param p3, "retry"    # I

    .prologue
    const/4 v1, 0x1

    .line 231
    if-lez p3, :cond_0

    .line 233
    int-to-byte v0, p1

    aput-byte v0, p2, v1

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/soi/GsmTransport;->getNextMessageReference()B

    move-result v0

    aput-byte v0, p2, v1

    goto :goto_0
.end method

.method private putRlDataForDeliveryAck(Lcom/android/internal/telephony/soi/TransportData;Lcom/android/internal/telephony/soi/GsmMtRecord;Z)Lcom/android/internal/telephony/soi/RelayData;
    .locals 10
    .param p1, "input"    # Lcom/android/internal/telephony/soi/TransportData;
    .param p2, "mt"    # Lcom/android/internal/telephony/soi/GsmMtRecord;
    .param p3, "withPdu"    # Z

    .prologue
    const/16 v2, 0x34

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "output":Lcom/android/internal/telephony/soi/RelayData;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 298
    :cond_0
    const-string v1, "GsmTransport"

    const-string v2, "putRlDataForDeliveryAck(), TransportData || mt null!!!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    .line 319
    :goto_0
    return-object v1

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/TransportData;->isSuccess()Z

    move-result v9

    .line 303
    .local v9, "success":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/TransportData;->getCause()I

    move-result v8

    .line 305
    .local v8, "cause":I
    if-nez p3, :cond_3

    .line 306
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    .local v7, "bo":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 308
    if-nez v9, :cond_2

    .line 309
    int-to-byte v3, v8

    invoke-virtual {v7, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    :cond_2
    invoke-virtual {v7, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    new-instance v0, Lcom/android/internal/telephony/soi/RelayData;

    .end local v0    # "output":Lcom/android/internal/telephony/soi/RelayData;
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMtRecord;->getMessageRef()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMtRecord;->getScAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v8}, Lcom/android/internal/telephony/soi/GsmTransport;->tpCauseToRpCause(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/RelayData;-><init>(IIILjava/lang/String;[BI)V

    .end local v7    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "output":Lcom/android/internal/telephony/soi/RelayData;
    :goto_1
    move-object v1, v0

    .line 319
    goto :goto_0

    .line 315
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/soi/RelayData;

    .end local v0    # "output":Lcom/android/internal/telephony/soi/RelayData;
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMtRecord;->getMessageRef()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMtRecord;->getScAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/TransportData;->getTpdu()[B

    move-result-object v5

    invoke-static {v8}, Lcom/android/internal/telephony/soi/GsmTransport;->tpCauseToRpCause(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/RelayData;-><init>(IIILjava/lang/String;[BI)V

    .restart local v0    # "output":Lcom/android/internal/telephony/soi/RelayData;
    goto :goto_1
.end method

.method private putRlDataForSubmit(ILjava/lang/String;[B)Lcom/android/internal/telephony/soi/RelayData;
    .locals 6
    .param p1, "messageRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "pdu"    # [B

    .prologue
    .line 226
    new-instance v0, Lcom/android/internal/telephony/soi/RelayData;

    const/4 v1, 0x2

    const/16 v2, 0x31

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/soi/RelayData;-><init>(IIILjava/lang/String;[B)V

    .line 227
    .local v0, "relayData":Lcom/android/internal/telephony/soi/RelayData;
    return-object v0
.end method

.method private retryToSend(ILcom/android/internal/telephony/soi/GsmMoRecord;)Z
    .locals 12
    .param p1, "messageRef"    # I
    .param p2, "mo"    # Lcom/android/internal/telephony/soi/GsmMoRecord;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x2

    .line 113
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getResult()Landroid/os/Message;

    move-result-object v3

    .line 114
    .local v3, "result":Landroid/os/Message;
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getType()I

    move-result v5

    .line 115
    .local v5, "type":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/GsmTransport;->getSpec()Lcom/android/internal/telephony/soi/Spec;

    move-result-object v4

    .line 116
    .local v4, "spec":Lcom/android/internal/telephony/soi/Spec;
    const/4 v0, 0x1

    .line 117
    .local v0, "bRetry":Z
    const/4 v2, 0x0

    .line 119
    .local v2, "isSMMA":Z
    sparse-switch v5, :sswitch_data_0

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not supported type, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;)V

    .line 162
    :goto_0
    return v6

    .line 121
    :sswitch_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/soi/Spec;->isSupportedRetry()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->incrementRetryCount()V

    .line 124
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getRetryCount()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/soi/Spec;->getMaxRetryCount()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 125
    new-instance v6, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v6, p1, v11, v8}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {v9}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/internal/telephony/soi/GsmTransport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 128
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    .line 162
    goto :goto_0

    .line 131
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/soi/GsmTransport;->relay:Lcom/android/internal/telephony/soi/IRelay;

    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getSmsc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getPdu()[B

    move-result-object v8

    invoke-direct {p0, p1, v7, v8}, Lcom/android/internal/telephony/soi/GsmTransport;->putRlDataForSubmit(ILjava/lang/String;[B)Lcom/android/internal/telephony/soi/RelayData;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/soi/IRelay;->send(Lcom/android/internal/telephony/soi/RelayData;)V

    .line 133
    invoke-virtual {p0, p0, v10, p2, v2}, Lcom/android/internal/telephony/soi/GsmTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 134
    const/4 v0, 0x1

    goto :goto_1

    .line 137
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v6, p1, v11, v8}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {v9}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/internal/telephony/soi/GsmTransport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    const/4 v0, 0x0

    .line 142
    goto :goto_1

    .line 145
    :sswitch_1
    const/4 v2, 0x1

    .line 146
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->incrementRetryCount()V

    .line 147
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->getRetryCount()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/soi/Spec;->getMaxRetryCount()I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 149
    new-instance v1, Lcom/android/internal/telephony/soi/RelayData;

    const/16 v7, 0x32

    invoke-direct {v1, v9, v7, p1, v6}, Lcom/android/internal/telephony/soi/RelayData;-><init>(IIIZ)V

    .line 150
    .local v1, "data":Lcom/android/internal/telephony/soi/RelayData;
    iget-object v6, p0, Lcom/android/internal/telephony/soi/GsmTransport;->relay:Lcom/android/internal/telephony/soi/IRelay;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/soi/IRelay;->send(Lcom/android/internal/telephony/soi/RelayData;)V

    .line 152
    invoke-virtual {p0, p0, v10, p2, v2}, Lcom/android/internal/telephony/soi/GsmTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 153
    const/4 v0, 0x1

    .line 154
    goto :goto_1

    .line 155
    .end local v1    # "data":Lcom/android/internal/telephony/soi/RelayData;
    :cond_2
    const/4 v0, 0x0

    .line 157
    goto :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected addMoRecord(ILjava/lang/String;I[BILandroid/os/Message;)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pdu"    # [B
    .param p5, "state"    # I
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 438
    new-instance v0, Lcom/android/internal/telephony/soi/GsmMoRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/GsmMoRecord;-><init>()V

    .line 439
    .local v0, "mo":Lcom/android/internal/telephony/soi/GsmMoRecord;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setSmsc(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setType(I)V

    .line 441
    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setState(I)V

    .line 442
    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setPdu([B)V

    .line 443
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setMessageRef(I)V

    .line 444
    invoke-virtual {v0, p6}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setResult(Landroid/os/Message;)V

    .line 446
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/soi/IRecordManager;->add(ILcom/android/internal/telephony/soi/MoRecord;)V

    .line 447
    return-void
.end method

.method protected addMtRecord(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "mr"    # I
    .param p2, "tpdu"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 481
    new-instance v0, Lcom/android/internal/telephony/soi/GsmMtRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/GsmMtRecord;-><init>()V

    .line 482
    .local v0, "mt":Lcom/android/internal/telephony/soi/GsmMtRecord;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/GsmMtRecord;->setMessageRef(I)V

    .line 483
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/soi/GsmMtRecord;->setPdu(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/soi/GsmMtRecord;->setScAddress(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IRecordManager;->add(Lcom/android/internal/telephony/soi/MtRecord;)V

    .line 486
    return-void
.end method

.method protected getAddMoRecord(ILjava/lang/String;I[BILandroid/os/Message;)Lcom/android/internal/telephony/soi/MoRecord;
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pdu"    # [B
    .param p5, "state"    # I
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 451
    new-instance v0, Lcom/android/internal/telephony/soi/GsmMoRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/GsmMoRecord;-><init>()V

    .line 452
    .local v0, "mo":Lcom/android/internal/telephony/soi/GsmMoRecord;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setSmsc(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setType(I)V

    .line 454
    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setState(I)V

    .line 455
    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setPdu([B)V

    .line 456
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setMessageRef(I)V

    .line 457
    invoke-virtual {v0, p6}, Lcom/android/internal/telephony/soi/GsmMoRecord;->setResult(Landroid/os/Message;)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IRecordManager;->add(Lcom/android/internal/telephony/soi/MoRecord;)V

    .line 460
    return-object v0
.end method

.method protected getAddMtRecord(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/soi/MtRecord;
    .locals 2
    .param p1, "mr"    # I
    .param p2, "tpdu"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 489
    new-instance v0, Lcom/android/internal/telephony/soi/GsmMtRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/GsmMtRecord;-><init>()V

    .line 490
    .local v0, "mt":Lcom/android/internal/telephony/soi/GsmMtRecord;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/GsmMtRecord;->setMessageRef(I)V

    .line 491
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/soi/GsmMtRecord;->setPdu(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/soi/GsmMtRecord;->setScAddress(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IRecordManager;->add(Lcom/android/internal/telephony/soi/MtRecord;)V

    .line 494
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    const-string v0, "GsmTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/GsmTransport;->cmdMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    const-string v0, "GsmTransport"

    const-string v1, "invalid cmd"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmTransport;->handleSendMo(Landroid/os/Message;)V

    goto :goto_0

    .line 54
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/soi/GsmTransport;->handleSendAck(Landroid/os/Message;Z)V

    goto :goto_0

    .line 57
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/soi/GsmTransport;->handleSendAck(Landroid/os/Message;Z)V

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmTransport;->handleReceiveMt(Landroid/os/Message;)V

    goto :goto_0

    .line 63
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmTransport;->handleReportIndication(Landroid/os/Message;)V

    goto :goto_0

    .line 66
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmTransport;->handleMoTimer(Landroid/os/Message;)V

    goto :goto_0

    .line 69
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmTransport;->handleWaitForMtAckTimer(Landroid/os/Message;)V

    goto :goto_0

    .line 72
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmTransport;->handleSendSmsMemoryStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public send(Lcom/android/internal/telephony/soi/TransportData;)V
    .locals 5
    .param p1, "data"    # Lcom/android/internal/telephony/soi/TransportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/SoiException;
        }
    .end annotation

    .prologue
    .line 628
    const-string v2, "GsmTransport"

    const-string v3, "send()"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    if-nez p1, :cond_0

    .line 630
    const-string v2, "GsmTransport"

    const-string v3, "send() data null!!!"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    new-instance v2, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v2

    .line 634
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/TransportData;->getType()I

    move-result v1

    .line 635
    .local v1, "type":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/GsmTransport;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 636
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 638
    const-string v2, "GsmTransport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send(), type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/soi/GsmTransport;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    packed-switch v1, :pswitch_data_0

    .line 645
    invoke-super {p0, p1}, Lcom/android/internal/telephony/soi/Transport;->send(Lcom/android/internal/telephony/soi/TransportData;)V

    .line 649
    :goto_0
    return-void

    .line 641
    :pswitch_0
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/GsmTransport;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
