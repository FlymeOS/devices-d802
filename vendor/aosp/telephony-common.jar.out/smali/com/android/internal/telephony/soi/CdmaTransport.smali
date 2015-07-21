.class public Lcom/android/internal/telephony/soi/CdmaTransport;
.super Lcom/android/internal/telephony/soi/Transport;
.source "CdmaTransport.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CdmaTransport"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/soi/IRelay;)V
    .locals 0
    .param p1, "relay"    # Lcom/android/internal/telephony/soi/IRelay;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/Transport;-><init>(Lcom/android/internal/telephony/soi/IRelay;)V

    .line 40
    return-void
.end method

.method private getMoRecordAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/MoRecord;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 376
    move-object v1, p1

    .line 377
    .local v1, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 378
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 379
    .local v2, "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    if-nez v1, :cond_0

    .line 380
    const-string v3, "CdmaTransport"

    const-string v4, "getRecordAsyncResultObj() msg.obj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v3, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v3}, Lcom/android/internal/telephony/soi/IRecordManager;->getMoRecord()Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v2

    .end local v2    # "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    check-cast v2, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .line 391
    .restart local v2    # "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    :goto_0
    return-object v2

    :cond_0
    move-object v0, v1

    .line 383
    check-cast v0, Landroid/os/AsyncResult;

    .line 384
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 385
    const-string v3, "CdmaTransport"

    const-string v4, "getRecordAsyncResultObj() msg.obj.userObj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v3}, Lcom/android/internal/telephony/soi/IRecordManager;->getMoRecord()Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v2

    .end local v2    # "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    check-cast v2, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .restart local v2    # "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    goto :goto_0

    .line 388
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    check-cast v2, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .restart local v2    # "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    goto :goto_0
.end method

.method private getParcelFromCdmaTLData(Lcom/android/internal/telephony/soi/CdmaTransportMessage;)Landroid/os/Parcel;
    .locals 8
    .param p1, "cdmaMessage"    # Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    .prologue
    const/4 v7, 0x0

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 80
    .local v5, "p":Landroid/os/Parcel;
    if-nez v5, :cond_0

    .line 81
    const-string v6, "CdmaTransport"

    const-string v7, "con\'t obtain parcel"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v5

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getTeleserviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getServicePresent()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getServiceCategory()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getOriginAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getOriginAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getOriginAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getOriginAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getOriginAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getOriginAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iget-object v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-byte v4, v0, v2

    .line 95
    .local v4, "ob":B
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v4    # "ob":B
    :cond_1
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerData()[B

    move-result-object v6

    if-nez v6, :cond_3

    .line 104
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :cond_2
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerDataLength()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->getBearerData()[B

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-byte v1, v0, v2

    .line 109
    .local v1, "bd":B
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private handleMoRetry(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 186
    const-string v1, "CdmaTransport"

    const-string v2, "handleMoRetry()"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/16 v1, 0x9

    invoke-virtual {p0, p0, v5, v1, v5}, Lcom/android/internal/telephony/soi/CdmaTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 188
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/soi/CdmaTransport;->getMoRecordAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .line 190
    .local v0, "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    if-nez v0, :cond_0

    .line 191
    const-string v1, "CdmaTransport"

    const-string v2, "handleMoRetry(), record is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->incrementRetryCount()V

    .line 198
    new-instance v1, Lcom/android/internal/telephony/soi/ImsPdu;

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getOtaPdu()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getSmsc()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/soi/CdmaTransport;->sendToIms(Lcom/android/internal/telephony/soi/ImsPdu;)V

    .line 199
    const/4 v1, 0x5

    invoke-virtual {p0, p0, v1, v0, v5}, Lcom/android/internal/telephony/soi/CdmaTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    goto :goto_0
.end method

.method private handleMoTimer(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 169
    const-string v2, "CdmaTransport"

    const-string v3, "handleMoTimer()"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x5

    invoke-virtual {p0, p0, v4, v2, v4}, Lcom/android/internal/telephony/soi/CdmaTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 171
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/soi/CdmaTransport;->getMoRecordAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .line 173
    .local v1, "record":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    if-nez v1, :cond_1

    .line 174
    const-string v2, "CdmaTransport"

    const-string v3, "handleMoTimer(), record is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getMessageRef()I

    move-result v0

    .line 178
    .local v0, "messageRef":I
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/soi/CdmaTransport;->retryToSend(ILcom/android/internal/telephony/soi/CdmaMoRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    const-string v2, "CdmaTransport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMoTimer(), remove mo record, messageRef = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/soi/IRecordManager;->removeMo(Lcom/android/internal/telephony/soi/MoRecord;)V

    goto :goto_0
.end method

.method private handleReceiveMt(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 246
    const-string v4, "CdmaTransport"

    const-string v5, "handleReceiveMt()"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 248
    :cond_0
    const-string v4, "CdmaTransport"

    const-string v5, "handleReceiveMt() msg || msg.obj null!!!"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v4, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v4}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v4

    .line 251
    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/soi/TransportData;

    move-object v3, v4

    check-cast v3, Lcom/android/internal/telephony/soi/TransportData;

    .line 252
    .local v3, "data":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v3, :cond_2

    .line 253
    const-string v4, "CdmaTransport"

    const-string v5, "handleReceiveMt() data null!!!"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v4, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v4}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v4

    .line 257
    :cond_2
    const/4 v1, 0x0

    .line 258
    .local v1, "byteTpdu":[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/soi/TransportData;->getTpdu()[B

    move-result-object v1

    .line 259
    if-nez v1, :cond_3

    .line 261
    const-string v4, "CdmaTransport"

    const-string v5, "handleReceiveMt() getTpdu null!!!"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->createFromRawPdu([B)Lcom/android/internal/telephony/soi/CdmaTransportMessage;

    move-result-object v2

    .line 267
    .local v2, "cdmaMessage":Lcom/android/internal/telephony/soi/CdmaTransportMessage;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/soi/CdmaTransport;->getParcelFromCdmaTLData(Lcom/android/internal/telephony/soi/CdmaTransportMessage;)Landroid/os/Parcel;

    move-result-object v0

    .line 268
    .local v0, "a":Landroid/os/Parcel;
    new-instance v4, Landroid/os/AsyncResult;

    invoke-static {v0}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v5

    invoke-direct {v4, v6, v5, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/soi/CdmaTransport;->notifyCdmaNewSms(Landroid/os/AsyncResult;)V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private handleSendMo(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    const-string v2, "CdmaTransport"

    const-string v4, "handleSendMo()"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, "messageRef":I
    const/4 v6, 0x0

    .line 123
    .local v6, "pdu":[B
    const/4 v9, 0x0

    .line 124
    .local v9, "result":Landroid/os/Message;
    const/16 v16, 0x0

    .line 125
    .local v16, "otaPdu":[B
    const/4 v13, 0x1

    .line 126
    .local v13, "isMo":Z
    const/4 v15, 0x0

    .line 128
    .local v15, "ota":Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 129
    :cond_0
    const-string v2, "CdmaTransport"

    const-string v4, "handleSendMo() error!!! msg || msg.obj null!!!"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/soi/TransportData;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/soi/TransportData;

    move-object v10, v0

    .line 134
    .local v10, "data":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v10, :cond_3

    .line 135
    const-string v2, "CdmaTransport"

    const-string v4, "handleSendMo() error!!! data null!!!"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    .end local v10    # "data":Lcom/android/internal/telephony/soi/TransportData;
    :catch_0
    move-exception v11

    .line 161
    .local v11, "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    const/16 v2, 0x14

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/telephony/soi/SmsUtils;->traceStack(I)Ljava/lang/String;

    .line 162
    const-string v2, "CdmaTransport"

    const-string v4, "handleSendMo(), SoiException occurs"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v2, Lcom/android/internal/telephony/SmsResponse;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {v9, v2}, Lcom/android/internal/telephony/soi/CdmaTransport;->sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    .end local v11    # "e":Lcom/android/internal/telephony/soi/exception/SoiException;
    :catchall_0
    move-exception v2

    throw v2

    .line 139
    .restart local v10    # "data":Lcom/android/internal/telephony/soi/TransportData;
    :cond_3
    :try_start_2
    invoke-virtual {v10}, Lcom/android/internal/telephony/soi/TransportData;->getMessageRef()I

    move-result v3

    .line 141
    invoke-virtual {v10}, Lcom/android/internal/telephony/soi/TransportData;->getTpdu()[B

    move-result-object v6

    .line 142
    invoke-virtual {v10}, Lcom/android/internal/telephony/soi/TransportData;->getResult()Landroid/os/Message;

    move-result-object v9

    .line 144
    if-nez v6, :cond_4

    .line 145
    new-instance v2, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v2

    .line 147
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v2}, Lcom/android/internal/telephony/soi/IRecordManager;->sizeOfMo()I

    move-result v2

    const/16 v4, 0x14

    if-lt v2, v4, :cond_5

    .line 148
    new-instance v2, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v2

    .line 151
    :cond_5
    invoke-static {v13, v6}, Lcom/android/internal/telephony/soi/CdmaTransportMessage;->generateCdmaOta(Z[B)Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;

    move-result-object v15

    .line 152
    const-string v2, "CdmaTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSendMo() otaPdu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mOtaPdu:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v12, Lcom/android/internal/telephony/soi/ImsPdu;

    const/4 v2, 0x2

    iget-object v4, v15, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mOtaPdu:[B

    iget-object v5, v15, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mSmsc:Ljava/lang/String;

    invoke-direct {v12, v2, v4, v5}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    .line 154
    .local v12, "imsPdu":Lcom/android/internal/telephony/soi/ImsPdu;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/soi/CdmaTransport;->sendToIms(Lcom/android/internal/telephony/soi/ImsPdu;)V

    .line 155
    iget-object v4, v15, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mSmsc:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/android/internal/telephony/soi/TransportData;->getType()I

    move-result v5

    iget-object v7, v15, Lcom/android/internal/telephony/soi/CdmaTransportMessage$CdmaOta;->mOtaPdu:[B

    const/4 v8, 0x2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/soi/CdmaTransport;->getAddMoRecord(ILjava/lang/String;I[B[BILandroid/os/Message;)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .line 156
    .local v14, "mo":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    const/4 v2, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v14, v4}, Lcom/android/internal/telephony/soi/CdmaTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 157
    sget-boolean v2, Lcom/android/internal/telephony/soi/CdmaTransportTest;->MO_TEST_ENABLE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/soi/CdmaTransportTest;->SMS_3GPP2_TEST_ENABLE:Z

    if-eqz v2, :cond_1

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->getDefault()Lcom/android/internal/telephony/soi/CdmaTransportTest;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/soi/CdmaTransportTest;->invokeMoAck(Lcom/android/internal/telephony/soi/ImsPdu;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/soi/exception/SoiException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private processSmReportIndication(ILcom/android/internal/telephony/soi/CdmaMoRecord;ILandroid/os/Message;)Z
    .locals 4
    .param p1, "messageRef"    # I
    .param p2, "mo"    # Lcom/android/internal/telephony/soi/CdmaMoRecord;
    .param p3, "error"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 320
    const-string v1, "CdmaTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSmReportIndication(), error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    .line 322
    .local v0, "finished":Z
    packed-switch p3, :pswitch_data_0

    .line 331
    :pswitch_0
    const-string v1, "CdmaTransport"

    const-string v2, "processSmReportIndication invalid error value"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 335
    :goto_1
    return v1

    .line 324
    :pswitch_1
    const/4 p1, 0x0

    .line 325
    invoke-static {p4, p1}, Lcom/android/internal/telephony/soi/CdmaTransport;->sendSuccess(Landroid/os/Message;I)V

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/soi/CdmaTransport;->retryToSend(ILcom/android/internal/telephony/soi/CdmaMoRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private retryToSend(ILcom/android/internal/telephony/soi/CdmaMoRecord;)Z
    .locals 9
    .param p1, "messageRef"    # I
    .param p2, "mo"    # Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 209
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getResult()Landroid/os/Message;

    move-result-object v1

    .line 210
    .local v1, "result":Landroid/os/Message;
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getType()I

    move-result v3

    .line 211
    .local v3, "type":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransport;->getSpec()Lcom/android/internal/telephony/soi/Spec;

    move-result-object v2

    .line 212
    .local v2, "spec":Lcom/android/internal/telephony/soi/Spec;
    const/4 v0, 0x1

    .line 214
    .local v0, "bRetry":Z
    packed-switch v3, :pswitch_data_0

    .line 237
    const-string v4, "CdmaTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not supported type, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_0
    return v0

    .line 216
    :pswitch_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/Spec;->isSupportedRetry()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getRetryCount()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/Spec;->getMaxRetryCount()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 218
    new-instance v4, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v4, p1, v8, v6}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/internal/telephony/soi/CdmaTransport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 221
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_0
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {p0, p0, v4, p2, v5}, Lcom/android/internal/telephony/soi/CdmaTransport;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 226
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    const-string v4, "CdmaTransport"

    const-string v5, "not support retry"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v4, Lcom/android/internal/telephony/SmsResponse;

    invoke-direct {v4, p1, v8, v6}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    invoke-static {v7}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/internal/telephony/soi/CdmaTransport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    const/4 v0, 0x0

    .line 235
    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addMoRecord(ILjava/lang/String;I[B[BILandroid/os/Message;)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pdu"    # [B
    .param p5, "otaPdu"    # [B
    .param p6, "state"    # I
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 346
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/CdmaMoRecord;-><init>()V

    .line 347
    .local v0, "mo":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setSmsc(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setType(I)V

    .line 349
    invoke-virtual {v0, p6}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setState(I)V

    .line 350
    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setPdu([B)V

    .line 351
    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setOtaPdu([B)V

    .line 352
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setMessageRef(I)V

    .line 353
    invoke-virtual {v0, p7}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setResult(Landroid/os/Message;)V

    .line 356
    iget-object v1, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IRecordManager;->add(Lcom/android/internal/telephony/soi/MoRecord;)V

    .line 357
    return-void
.end method

.method protected getAddMoRecord(ILjava/lang/String;I[B[BILandroid/os/Message;)Lcom/android/internal/telephony/soi/MoRecord;
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pdu"    # [B
    .param p5, "otaPdu"    # [B
    .param p6, "state"    # I
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 361
    new-instance v0, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/CdmaMoRecord;-><init>()V

    .line 362
    .local v0, "mo":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setSmsc(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setType(I)V

    .line 364
    invoke-virtual {v0, p6}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setState(I)V

    .line 365
    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setPdu([B)V

    .line 366
    invoke-virtual {v0, p5}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setOtaPdu([B)V

    .line 367
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setMessageRef(I)V

    .line 368
    invoke-virtual {v0, p7}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->setResult(Landroid/os/Message;)V

    .line 371
    iget-object v1, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IRecordManager;->add(Lcom/android/internal/telephony/soi/MoRecord;)V

    .line 372
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    const-string v0, "CdmaTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/CdmaTransport;->cmdMsgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :pswitch_0
    const-string v0, "CdmaTransport"

    const-string v1, "invalid cmd"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    :pswitch_1
    return-void

    .line 47
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransport;->handleSendMo(Landroid/os/Message;)V

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransport;->handleReceiveMt(Landroid/os/Message;)V

    goto :goto_0

    .line 59
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransport;->handleReportIndication(Landroid/os/Message;)V

    goto :goto_0

    .line 62
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransport;->handleMoTimer(Landroid/os/Message;)V

    goto :goto_0

    .line 65
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/CdmaTransport;->handleMoRetry(Landroid/os/Message;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public handleReportIndication(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 276
    const-string v7, "CdmaTransport"

    const-string v8, "handleReportIndication()"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/soi/TransportData;

    move-object v2, v7

    check-cast v2, Lcom/android/internal/telephony/soi/TransportData;

    .line 278
    .local v2, "fromSoiData":Lcom/android/internal/telephony/soi/TransportData;
    if-nez v2, :cond_1

    .line 279
    const-string v7, "CdmaTransport"

    const-string v8, "handleReportIndication() fromSoiData null"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v7}, Lcom/android/internal/telephony/soi/IRecordManager;->sizeOfMo()I

    move-result v7

    if-ge v7, v9, :cond_3

    .line 284
    :cond_2
    const-string v7, "CdmaTransport"

    const-string v8, "handleReportIndication() sizeOfMo error"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v7}, Lcom/android/internal/telephony/soi/IRecordManager;->getMoRecord()Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/soi/CdmaMoRecord;

    .line 288
    .local v5, "mo":Lcom/android/internal/telephony/soi/CdmaMoRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getMessageRef()I

    move-result v4

    .line 289
    .local v4, "messageRef":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/soi/TransportData;->getError_status()I

    move-result v0

    .line 290
    .local v0, "error":I
    invoke-virtual {v5}, Lcom/android/internal/telephony/soi/CdmaMoRecord;->getResult()Landroid/os/Message;

    move-result-object v6

    .line 292
    .local v6, "result":Landroid/os/Message;
    if-eqz v5, :cond_4

    .line 293
    const/4 v1, 0x1

    .line 294
    .local v1, "finished":Z
    const/4 v3, 0x0

    .line 295
    .local v3, "isSMMA":Z
    const/4 v7, 0x5

    invoke-virtual {p0, p0, v9, v7, v3}, Lcom/android/internal/telephony/soi/CdmaTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 296
    const/16 v7, 0x9

    invoke-virtual {p0, p0, v9, v7, v3}, Lcom/android/internal/telephony/soi/CdmaTransport;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 297
    invoke-direct {p0, v4, v5, v0, v6}, Lcom/android/internal/telephony/soi/CdmaTransport;->processSmReportIndication(ILcom/android/internal/telephony/soi/CdmaMoRecord;ILandroid/os/Message;)Z

    move-result v1

    .line 298
    if-ne v1, v9, :cond_0

    .line 299
    const-string v7, "CdmaTransport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove mo record, messageRef = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v7, p0, Lcom/android/internal/telephony/soi/CdmaTransport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v7}, Lcom/android/internal/telephony/soi/IRecordManager;->removeMo()V

    goto :goto_0

    .line 304
    .end local v1    # "finished":Z
    .end local v3    # "isSMMA":Z
    :cond_4
    const-string v7, "CdmaTransport"

    const-string v8, "no mo record"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public send(Lcom/android/internal/telephony/soi/TransportData;)V
    .locals 5
    .param p1, "data"    # Lcom/android/internal/telephony/soi/TransportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/soi/exception/BaseSoiException;
        }
    .end annotation

    .prologue
    .line 395
    const-string v2, "CdmaTransport"

    const-string v3, "send()"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    if-nez p1, :cond_0

    .line 397
    const-string v2, "CdmaTransport"

    const-string v3, "send() data null!!!"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v2, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v2

    .line 401
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/TransportData;->getType()I

    move-result v1

    .line 402
    .local v1, "type":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/CdmaTransport;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    const-string v2, "CdmaTransport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send(), type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/soi/CdmaTransport;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    packed-switch v1, :pswitch_data_0

    .line 412
    invoke-super {p0, p1}, Lcom/android/internal/telephony/soi/Transport;->send(Lcom/android/internal/telephony/soi/TransportData;)V

    .line 416
    :goto_0
    return-void

    .line 408
    :pswitch_0
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 415
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/CdmaTransport;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public sendToIms(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 2
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 340
    const-string v0, "CdmaTransport"

    const-string v1, "sendToIms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 342
    return-void
.end method
