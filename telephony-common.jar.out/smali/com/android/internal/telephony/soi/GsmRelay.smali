.class public Lcom/android/internal/telephony/soi/GsmRelay;
.super Lcom/android/internal/telephony/soi/Relay;
.source "GsmRelay.java"


# static fields
.field private static final MT_TPDU_MR:I = 0x0

.field private static final RESULT_SMS_HANDLED:I = 0x1

.field private static final RESULT_SMS_NOT_HANDLED:I = 0x0

.field public static final SMS_TYPE_MO:I = 0x1

.field public static final SMS_TYPE_MT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GsmRelay"

.field private static final VALID_DURATION:J = 0x493e0L

.field private static rl_mo_mr:B


# instance fields
.field transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-byte v0, Lcom/android/internal/telephony/soi/GsmRelay;->rl_mo_mr:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/soi/Relay;-><init>()V

    .line 57
    new-instance v0, Lcom/android/internal/telephony/soi/RlTransactionManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/RlTransactionManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/soi/IRelayEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/soi/IRelayEventListener;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/Relay;-><init>(Lcom/android/internal/telephony/soi/IRelayEventListener;)V

    .line 57
    new-instance v0, Lcom/android/internal/telephony/soi/RlTransactionManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/RlTransactionManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    .line 65
    return-void
.end method

.method private endMoTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V
    .locals 3
    .param p1, "transaction"    # Lcom/android/internal/telephony/soi/RlTransaction;
    .param p2, "stopRequired"    # Z

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    const-string v1, "GsmRelay"

    const-string v2, "endMoTransaction() transaction null ~!!!!"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v0

    .line 495
    .local v0, "isSmma":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 497
    const/16 v1, 0xcb

    invoke-virtual {p0, p0, p2, v1, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 500
    :cond_1
    const/16 v1, 0xc9

    invoke-virtual {p0, p0, p2, v1, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->removeRlTransaction(Lcom/android/internal/telephony/soi/RlTransaction;)V

    goto :goto_0
.end method

.method private endMtTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V
    .locals 2
    .param p1, "transaction"    # Lcom/android/internal/telephony/soi/RlTransaction;
    .param p2, "stopRequired"    # Z

    .prologue
    .line 506
    const/16 v0, 0xca

    const/4 v1, 0x0

    invoke-virtual {p0, p0, p2, v0, v1}, Lcom/android/internal/telephony/soi/GsmRelay;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->removeRlTransaction(Lcom/android/internal/telephony/soi/RlTransaction;)V

    .line 508
    return-void
.end method

.method private getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 681
    move-object v1, p1

    .line 682
    .local v1, "obj":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 683
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .line 684
    .local v2, "rlInfo":Lcom/android/internal/telephony/soi/RlTransaction;
    if-nez v1, :cond_0

    .line 685
    const-string v3, "GsmRelay"

    const-string v4, "getMsgObjAsyncResultObj() msg.obj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_0
    return-object v2

    :cond_0
    move-object v0, v1

    .line 687
    check-cast v0, Landroid/os/AsyncResult;

    .line 688
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 689
    const-string v3, "GsmRelay"

    const-string v4, "getMsgObjAsyncResultObj() msg.obj.userObj == null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2    # "rlInfo":Lcom/android/internal/telephony/soi/RlTransaction;
    check-cast v2, Lcom/android/internal/telephony/soi/RlTransaction;

    .restart local v2    # "rlInfo":Lcom/android/internal/telephony/soi/RlTransaction;
    goto :goto_0
.end method

.method private processRpAckN(Lcom/android/internal/telephony/soi/RpMessage;)V
    .locals 9
    .param p1, "rpMsg"    # Lcom/android/internal/telephony/soi/RpMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 283
    const-string v0, "GsmRelay"

    const-string v1, "processRpAckN()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-eqz p1, :cond_4

    .line 286
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransactionBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v8

    .line 287
    .local v8, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    if-nez v8, :cond_0

    .line 288
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRpAckN() error!!!, MN NO SMR - mr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v8    # "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    :goto_0
    return-void

    .line 289
    .restart local v8    # "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    :cond_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 291
    const-string v0, "GsmRelay"

    const-string v1, "processRpAckN() error!!!, mr mismatch !!!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v1

    const/4 v4, 0x2

    const/16 v5, 0x51

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v6

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/soi/GsmRelay;->sendRpErrorToIms(ILjava/lang/String;[BIII)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 295
    const/4 v7, 0x0

    .line 296
    .local v7, "smi":I
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 297
    const v7, 0xffff

    .line 299
    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getTpduMr()I

    move-result v0

    invoke-virtual {p0, p1, v0, v7}, Lcom/android/internal/telephony/soi/GsmRelay;->routeSoiToTLPrimitives(Lcom/android/internal/telephony/soi/RpMessage;II)V

    .line 300
    invoke-direct {p0, v8, v4}, Lcom/android/internal/telephony/soi/GsmRelay;->endMoTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V

    goto :goto_0

    .line 303
    .end local v7    # "smi":I
    :cond_3
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRpAckN() error!!!, state : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->rlStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v1

    const/16 v5, 0x62

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/soi/GsmRelay;->sendRpErrorToIms(ILjava/lang/String;[BIII)V

    goto :goto_0

    .line 308
    .end local v8    # "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    :cond_4
    const-string v0, "GsmRelay"

    const-string v1, "processRpAckN() Error!!!! rpMsg null~!!!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processRpDataN(Lcom/android/internal/telephony/soi/RpMessage;)I
    .locals 14
    .param p1, "rpMsg"    # Lcom/android/internal/telephony/soi/RpMessage;

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xca

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 234
    const-string v0, "GsmRelay"

    const-string v1, "processRpDataN()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v11, 0x0

    .line 239
    .local v11, "result":I
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransactionBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v13

    .line 240
    .local v13, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/internal/telephony/soi/RlTransaction;->getSaveTime()J

    move-result-wide v0

    const-wide/32 v8, 0x493e0

    invoke-virtual {p0, v0, v1, v8, v9}, Lcom/android/internal/telephony/soi/GsmRelay;->isValidTime(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() RpMessage.RP_DATA_N progress previous msg!!!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v11, 0x1

    :goto_0
    move v12, v11

    .line 279
    .end local v11    # "result":I
    .local v12, "result":I
    :goto_1
    return v12

    .line 246
    .end local v12    # "result":I
    .restart local v11    # "result":I
    :cond_0
    if-eqz v13, :cond_1

    .line 247
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() RpMessage.RP_DATA_N Invalid previous msg!!!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, p0, v4, v3, v6}, Lcom/android/internal/telephony/soi/GsmRelay;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 250
    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/soi/GsmRelay;->removeRlTransaction(Lcom/android/internal/telephony/soi/RlTransaction;)V

    .line 251
    const/4 v13, 0x0

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getParseError()Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getParseError()Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->getErrorValue()I

    move-result v5

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/soi/GsmRelay;->sendRpErrorToIms(ILjava/lang/String;[BIII)V

    .line 257
    const/4 v11, 0x1

    move v12, v11

    .line 258
    .end local v11    # "result":I
    .restart local v12    # "result":I
    goto :goto_1

    .line 260
    .end local v12    # "result":I
    .restart local v11    # "result":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getScAddress()Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/soi/GsmRelay;->getNewRlTransaction(IIIIZLjava/lang/String;)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v13

    .line 262
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v0

    if-nez v0, :cond_3

    .line 263
    const/4 v0, 0x3

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/soi/RlTransaction;->setState(I)V

    .line 265
    invoke-virtual {p0, p0, v3, v13, v6}, Lcom/android/internal/telephony/soi/GsmRelay;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 266
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->routeSoiToTLPrimitives(Lcom/android/internal/telephony/soi/RpMessage;II)V

    goto :goto_0

    .line 269
    :cond_3
    if-nez v13, :cond_4

    .line 270
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() RpMessage.RP_DATA_N error!!!, transaction == null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_2
    const/4 v11, 0x1

    goto :goto_0

    .line 273
    :cond_4
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSoiToTLMessage() RpMessage.RP_DATA_N error!!!, state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->rlStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private processRpErrorN(Lcom/android/internal/telephony/soi/RpMessage;)V
    .locals 8
    .param p1, "rpMsg"    # Lcom/android/internal/telephony/soi/RpMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 313
    const-string v0, "GsmRelay"

    const-string v1, "processRpErrorN()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransactionBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v7

    .line 317
    .local v7, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    if-eqz p1, :cond_4

    .line 318
    if-eqz v7, :cond_3

    .line 319
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 324
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() RpMessage.RP_ERROR_N error!!!, mr mismatch !!!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getParseError()Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getParseError()Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/RpMessage$RpduParseError;->getErrorValue()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/soi/GsmRelay;->sendRpErrorToIms(ILjava/lang/String;[BIII)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 332
    invoke-direct {p0, p1, v7}, Lcom/android/internal/telephony/soi/GsmRelay;->processRpErrorNWaitForRpAck(Lcom/android/internal/telephony/soi/RpMessage;Lcom/android/internal/telephony/soi/RlTransaction;)V

    goto :goto_0

    .line 359
    :cond_2
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSoiToTLMessage() RpMessage.RP_ERROR_N error!!!, wrong state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->rlStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_3
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSoiToTLMessage() RpMessage.RP_ERROR_N error!!! transaction null ~!!!, MN NO SMR - mr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_4
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() RpMessage.RP_ERROR_N error!!! rpMsg null!!!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processRpErrorNWaitForRpAck(Lcom/android/internal/telephony/soi/RpMessage;Lcom/android/internal/telephony/soi/RlTransaction;)V
    .locals 4
    .param p1, "rpMsg"    # Lcom/android/internal/telephony/soi/RpMessage;
    .param p2, "transaction"    # Lcom/android/internal/telephony/soi/RlTransaction;

    .prologue
    const/4 v3, 0x1

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "result":I
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    const/4 v0, 0x0

    .line 389
    :goto_0
    if-nez v0, :cond_1

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "smi":I
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 392
    const v1, 0xffff

    .line 394
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RlTransaction;->getTpduMr()I

    move-result v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/internal/telephony/soi/GsmRelay;->routeSoiToTLPrimitives(Lcom/android/internal/telephony/soi/RpMessage;II)V

    .line 395
    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->endMoTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V

    .line 397
    .end local v1    # "smi":I
    :cond_1
    return-void

    .line 377
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/soi/RlTransaction;->isRetrans()Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 378
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getRpCause()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/soi/RpMessage;->isPermanentError(I)Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 381
    const/4 v0, 0x0

    goto :goto_0

    .line 384
    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/soi/RlTransaction;->setState(I)V

    .line 386
    const/16 v2, 0xcb

    invoke-virtual {p0, p0, v2, p2, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 387
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processSMMARequest(Lcom/android/internal/telephony/soi/RelayData;Ljava/lang/String;)I
    .locals 9
    .param p1, "data"    # Lcom/android/internal/telephony/soi/RelayData;
    .param p2, "scAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 460
    const-string v0, "GsmRelay"

    const-string v4, "processSMMARequest()"

    invoke-static {v0, v4}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v7, 0x0

    .line 462
    .local v7, "result":I
    const/4 v1, 0x0

    .line 463
    .local v1, "mr":I
    const/4 v2, 0x0

    .line 464
    .local v2, "tpduMr":I
    const/4 v8, 0x0

    .line 465
    .local v8, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    const/4 v5, 0x1

    .line 466
    .local v5, "smma_transaction":Z
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransactionBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v8

    .line 467
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 468
    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/soi/RlTransaction;->setRetrans(Z)V

    .line 476
    :goto_0
    if-eqz v8, :cond_1

    .line 477
    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/soi/RlTransaction;->setState(I)V

    .line 479
    const/16 v0, 0xc9

    invoke-virtual {p0, p0, v0, v8, v5}, Lcom/android/internal/telephony/soi/GsmRelay;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 480
    const/4 v7, 0x0

    .line 485
    :goto_1
    return v7

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/GsmRelay;->get_rl_mo_mr()B

    move-result v1

    .line 471
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getMessageRef()I

    move-result v2

    .line 472
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/soi/RelayData;->setMessageRef(I)V

    .line 473
    const/4 v4, 0x0

    move-object v0, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/soi/GsmRelay;->getNewRlTransaction(IIIIZLjava/lang/String;)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v8

    goto :goto_0

    .line 482
    :cond_1
    const-string v0, "GsmRelay"

    const-string v3, "processSMMARequest() transaction null~!!!"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private processSmDataRequest(Lcom/android/internal/telephony/soi/RelayData;Ljava/lang/String;)I
    .locals 20
    .param p1, "data"    # Lcom/android/internal/telephony/soi/RelayData;
    .param p2, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string v4, "GsmRelay"

    const-string v7, "processSmDataRequest()"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v14, 0x0

    .line 401
    .local v14, "result":I
    const/4 v13, 0x0

    .line 402
    .local v13, "mr":I
    const/4 v15, 0x0

    .line 404
    .local v15, "tpduMr":I
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransactionBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v16

    .line 405
    .local v16, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    if-nez p1, :cond_0

    .line 406
    const-string v4, "GsmRelay"

    const-string v7, "processSmDataRequest() data null"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v14, 0x1

    move v6, v15

    .end local v15    # "tpduMr":I
    .local v6, "tpduMr":I
    move v5, v13

    .line 438
    .end local v13    # "mr":I
    .local v5, "mr":I
    :goto_0
    return v14

    .line 408
    .end local v5    # "mr":I
    .end local v6    # "tpduMr":I
    .restart local v13    # "mr":I
    .restart local v15    # "tpduMr":I
    :cond_0
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/soi/RlTransaction;->getSaveTime()J

    move-result-wide v10

    const-wide/32 v18, 0x493e0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->isValidTime(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    const-string v4, "GsmRelay"

    const-string v7, "processSmDataRequest() MN MO SMS transaction is progress for SMR"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v5, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/soi/RelayData;->getMessageRef()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/soi/RelayData;->getTpdu()[B

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/soi/RelayData;->getSmsc()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/telephony/soi/GsmRelay;->putTransportData(IIIIII[BLjava/lang/String;)Lcom/android/internal/telephony/soi/TransportData;

    move-result-object v17

    .line 412
    .local v17, "transportData":Lcom/android/internal/telephony/soi/TransportData;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/soi/GsmRelay;->notifyRelayEvent(ILjava/lang/Object;)V

    .line 413
    const/4 v14, 0x1

    move v6, v15

    .end local v15    # "tpduMr":I
    .restart local v6    # "tpduMr":I
    move v5, v13

    .line 414
    .end local v13    # "mr":I
    .restart local v5    # "mr":I
    goto :goto_0

    .line 415
    .end local v5    # "mr":I
    .end local v6    # "tpduMr":I
    .end local v17    # "transportData":Lcom/android/internal/telephony/soi/TransportData;
    .restart local v13    # "mr":I
    .restart local v15    # "tpduMr":I
    :cond_1
    if-eqz v16, :cond_2

    .line 417
    const-string v4, "GsmRelay"

    const-string v7, "processSmDataRequest() RpMessage.RP_DATA_MS Invalid previous msg!!!"

    invoke-static {v4, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/soi/GsmRelay;->endMoTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V

    .line 419
    const/16 v16, 0x0

    .line 421
    :cond_2
    const/4 v9, 0x0

    .line 422
    .local v9, "smma_transaction":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/soi/GsmRelay;->get_rl_mo_mr()B

    move-result v5

    .line 423
    .end local v13    # "mr":I
    .restart local v5    # "mr":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/soi/RelayData;->getMessageRef()I

    move-result v6

    .line 424
    .end local v15    # "tpduMr":I
    .restart local v6    # "tpduMr":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/soi/GsmRelay;->getNewRlTransaction(IIIIZLjava/lang/String;)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v16

    .line 425
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/soi/RelayData;->setMessageRef(I)V

    .line 426
    if-eqz v16, :cond_3

    .line 427
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/soi/RlTransaction;->setState(I)V

    .line 429
    const/16 v4, 0xc9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v4, v2, v9}, Lcom/android/internal/telephony/soi/GsmRelay;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 430
    const/4 v14, 0x0

    goto :goto_0

    .line 434
    :cond_3
    const-string v4, "GsmRelay"

    const-string v7, "processSmDataRequest() SM_DATA_REQ error!!! "

    invoke-static {v4, v7}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method private processSmReportRequest(Lcom/android/internal/telephony/soi/RelayData;)I
    .locals 4
    .param p1, "data"    # Lcom/android/internal/telephony/soi/RelayData;

    .prologue
    .line 442
    const-string v2, "GsmRelay"

    const-string v3, "processSmReportRequest()"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "result":I
    const/4 v1, 0x0

    .line 446
    .local v1, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransactionBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_0

    .line 448
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/soi/RelayData;->setMessageRef(I)V

    .line 449
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->endMtTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V

    .line 450
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 453
    :cond_0
    const-string v2, "GsmRelay"

    const-string v3, "processSmReportRequest() SM_REPORT_REQ error!!! transaction null !!! "

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processTR1MTimeOut(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 515
    const-string v2, "GsmRelay"

    const-string v3, "processTR1MTimeOut()"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    if-nez p1, :cond_1

    .line 517
    const-string v2, "GsmRelay"

    const-string v3, "processTR1MTimeOut() error!!! msg null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v1

    .line 523
    .local v1, "rlinfo":Lcom/android/internal/telephony/soi/RlTransaction;
    const/4 v0, 0x0

    .line 525
    .local v0, "result":I
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 526
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 528
    const/4 v0, 0x1

    .line 539
    :goto_1
    if-ne v0, v4, :cond_0

    .line 540
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/soi/GsmRelay;->endMoTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->isRetrans()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 531
    const/4 v0, 0x1

    goto :goto_1

    .line 534
    :cond_3
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/soi/RlTransaction;->setState(I)V

    .line 536
    const/16 v2, 0xc9

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v3

    invoke-virtual {p0, p0, v5, v2, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 537
    const/16 v2, 0xcb

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v3

    invoke-virtual {p0, p0, v2, v1, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    goto :goto_1

    .line 544
    :cond_4
    if-nez v1, :cond_5

    .line 545
    const-string v2, "GsmRelay"

    const-string v3, "processTR1MTimeOut() error!!! rlInfo null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_5
    const-string v2, "GsmRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processTR1MTimeOut() error!!! rlInfo.getState(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/soi/GsmRelay;->rlStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processTR2MTimeOut(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 559
    const-string v1, "GsmRelay"

    const-string v2, "processTR2MTimeOut()"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    if-eqz p1, :cond_1

    .line 563
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/soi/GsmRelay;->getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v0

    .line 564
    .local v0, "rlinfo":Lcom/android/internal/telephony/soi/RlTransaction;
    if-eqz v0, :cond_0

    .line 566
    const/16 v1, 0xca

    invoke-virtual {p0, p0, v3, v1, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 567
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->removeRlTransaction(Lcom/android/internal/telephony/soi/RlTransaction;)V

    .line 587
    .end local v0    # "rlinfo":Lcom/android/internal/telephony/soi/RlTransaction;
    :goto_0
    return-void

    .line 582
    .restart local v0    # "rlinfo":Lcom/android/internal/telephony/soi/RlTransaction;
    :cond_0
    const-string v1, "GsmRelay"

    const-string v2, "processTR2MTimeOut() error!!! rlInfo null "

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    .end local v0    # "rlinfo":Lcom/android/internal/telephony/soi/RlTransaction;
    :cond_1
    const-string v1, "GsmRelay"

    const-string v2, "processTR2MTimeOut() error!!! msg null "

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processTRAMTimeOut(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 590
    const-string v3, "GsmRelay"

    const-string v4, "processTRAMTimeOut()"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    if-nez p1, :cond_0

    .line 592
    const-string v3, "GsmRelay"

    const-string v4, "processTRAMTimeOut() error!!! msg null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->getMsgObjAsyncResultObj(Ljava/lang/Object;)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v1

    .line 598
    .local v1, "rlinfo":Lcom/android/internal/telephony/soi/RlTransaction;
    const/4 v3, 0x0

    const/16 v4, 0xcb

    invoke-virtual {p0, p0, v3, v4, v5}, Lcom/android/internal/telephony/soi/GsmRelay;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 599
    if-nez v1, :cond_1

    .line 600
    const-string v3, "GsmRelay"

    const-string v4, "processTRAMTimeOut() error!!! rlInfo null "

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getMr()I

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransaction(II)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v1

    .line 604
    if-nez v1, :cond_2

    .line 605
    const-string v3, "GsmRelay"

    const-string v4, "processTRAMTimeOut() error!!! rlInfo null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/GsmRelay;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 610
    .local v2, "tmpmsg":Landroid/os/Message;
    const/16 v3, 0x66

    iput v3, v2, Landroid/os/Message;->what:I

    .line 612
    new-instance v0, Lcom/android/internal/telephony/soi/RelayData;

    const/4 v3, 0x2

    const/16 v4, 0x32

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getTpduMr()I

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getScAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/internal/telephony/soi/RelayData;-><init>(IIILjava/lang/String;)V

    .line 615
    .local v0, "data":Lcom/android/internal/telephony/soi/RelayData;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 618
    .end local v0    # "data":Lcom/android/internal/telephony/soi/RelayData;
    .end local v2    # "tmpmsg":Landroid/os/Message;
    :cond_3
    const-string v3, "GsmRelay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processTRAMTimeOut() error!!! rlInfo.getState(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/soi/RlTransaction;->getState()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/soi/GsmRelay;->rlStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createRpdu(Lcom/android/internal/telephony/soi/RelayData;)[B
    .locals 12
    .param p1, "data"    # Lcom/android/internal/telephony/soi/RelayData;

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x2

    .line 754
    const-string v9, "GsmRelay"

    const-string v10, "createRpdu()"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    if-nez p1, :cond_0

    .line 756
    const-string v9, "GsmRelay"

    const-string v10, "createRpdu() data null !!"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 797
    :goto_0
    return-object v7

    .line 759
    :cond_0
    const/4 v7, 0x0

    .line 760
    .local v7, "rpdu":[B
    const/4 v2, 0x0

    .line 761
    .local v2, "tpdu":[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getMessageId()I

    move-result v6

    .line 762
    .local v6, "messageId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getMessageRef()I

    move-result v1

    .line 763
    .local v1, "mr":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getSmsc()Ljava/lang/String;

    move-result-object v8

    .line 764
    .local v8, "scAddress":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getTpdu()[B

    move-result-object v2

    .line 766
    packed-switch v6, :pswitch_data_0

    .line 791
    :pswitch_0
    const-string v9, "GsmRelay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createRpdu() error!!! messageId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 792
    goto :goto_0

    .line 768
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/android/internal/telephony/soi/RpMessage;->getRpDataRpdu(IILjava/lang/String;[B)[B

    move-result-object v7

    .line 795
    :goto_1
    const-string v0, "GsmRelay"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createRpdu() + messageId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/soi/GsmRelay;->messageIdToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  ### rpdu:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getCause()I

    move-result v4

    .line 773
    .local v4, "rpCause":I
    if-nez v4, :cond_1

    .line 774
    invoke-static {v11, v1, v2}, Lcom/android/internal/telephony/soi/RpMessage;->getRpAckRpdu(II[B)[B

    move-result-object v7

    goto :goto_1

    .line 776
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getCauseLength()I

    move-result v3

    .line 777
    .local v3, "causeLength":I
    const/4 v5, 0x0

    .line 778
    .local v5, "diagnostics":I
    if-ne v3, v11, :cond_2

    .line 779
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getDiagnostics()I

    move-result v5

    .line 781
    :cond_2
    const/4 v0, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/soi/RpMessage;->getRpErrorRpdu(II[BIII)[B

    move-result-object v7

    .line 784
    goto :goto_1

    .line 787
    .end local v3    # "causeLength":I
    .end local v4    # "rpCause":I
    .end local v5    # "diagnostics":I
    :pswitch_3
    invoke-static {v1}, Lcom/android/internal/telephony/soi/RpMessage;->getRpSMMARpdu(I)[B

    move-result-object v7

    .line 788
    goto :goto_1

    .line 766
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dataIndication(Ljava/lang/String;)V
    .locals 0
    .param p1, "rpdu"    # Ljava/lang/String;

    .prologue
    .line 679
    return-void
.end method

.method public dataRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 2
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 669
    const-string v0, "GsmRelay"

    const-string v1, "dataRequest()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->sendToIms(Lcom/android/internal/telephony/soi/ImsPdu;)V

    .line 671
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TEST_ENABLE:Z

    if-eqz v0, :cond_0

    .line 672
    invoke-static {}, Lcom/android/internal/telephony/soi/GsmRelayTest;->getDefault()Lcom/android/internal/telephony/soi/GsmRelayTest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/GsmRelayTest;->invokeMoAck(Lcom/android/internal/telephony/soi/ImsPdu;)V

    .line 674
    :cond_0
    return-void
.end method

.method public getDataGenerateRpdu(IILjava/lang/String;[BIII)Lcom/android/internal/telephony/soi/RelayData;
    .locals 9
    .param p1, "messageId"    # I
    .param p2, "mr"    # I
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "tpdu"    # [B
    .param p5, "rpCauseLength"    # I
    .param p6, "rpCause"    # I
    .param p7, "diagnostics"    # I

    .prologue
    .line 812
    const-string v1, "GsmRelay"

    const-string v2, "getDataGenerateRpdu()"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "data":Lcom/android/internal/telephony/soi/RelayData;
    new-instance v0, Lcom/android/internal/telephony/soi/RelayData;

    .end local v0    # "data":Lcom/android/internal/telephony/soi/RelayData;
    const/4 v1, 0x2

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/soi/RelayData;-><init>(IIILjava/lang/String;[BIII)V

    .line 815
    .restart local v0    # "data":Lcom/android/internal/telephony/soi/RelayData;
    return-object v0
.end method

.method public getDataImsErrorInd(IIZII)Lcom/android/internal/telephony/soi/TransportData;
    .locals 12
    .param p1, "smsType"    # I
    .param p2, "tpmr"    # I
    .param p3, "isSmma"    # Z
    .param p4, "cause"    # I
    .param p5, "retryAfter"    # I

    .prologue
    .line 819
    const-string v1, "GsmRelay"

    const-string v3, "getDataImsErrorInd()"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v10, 0x0

    .line 822
    .local v10, "data":Lcom/android/internal/telephony/soi/TransportData;
    const-string v1, "GsmRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataImsErrorInd() smsType :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  isSmma: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  cause: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  retryAfter:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/4 v2, 0x4

    .line 825
    .local v2, "transportType":I
    const/4 v4, 0x0

    .line 826
    .local v4, "smi":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 827
    const/16 v4, 0x1000

    .line 831
    :cond_0
    :goto_0
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->getStatus(I)I

    move-result v11

    .line 832
    .local v11, "status":I
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/soi/GsmRelay;->getReportStatus(I)I

    move-result v5

    .line 833
    .local v5, "error_status":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v3, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/soi/GsmRelay;->putTransportData(IIIIII[BLjava/lang/String;)Lcom/android/internal/telephony/soi/TransportData;

    move-result-object v10

    .line 834
    return-object v10

    .line 828
    .end local v5    # "error_status":I
    .end local v11    # "status":I
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 829
    const v4, 0xffff

    goto :goto_0
.end method

.method public getNewRlTransaction(IIIIZLjava/lang/String;)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 7
    .param p1, "mr"    # I
    .param p2, "tpduMr"    # I
    .param p3, "smsType"    # I
    .param p4, "rlState"    # I
    .param p5, "smmaTransaction"    # Z
    .param p6, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 846
    const-string v1, "GsmRelay"

    const-string v2, "getNewRlTransaction"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    new-instance v0, Lcom/android/internal/telephony/soi/RlTransaction;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/soi/RlTransaction;-><init>(IIIIZLjava/lang/String;)V

    .line 849
    .local v0, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    if-nez v1, :cond_0

    .line 850
    const-string v1, "GsmRelay"

    const-string v2, "getNewRlTransaction error !!! null~~~"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-instance v1, Lcom/android/internal/telephony/soi/RlTransactionManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/soi/RlTransactionManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/soi/IRlTransactionManager;->add(Lcom/android/internal/telephony/soi/RlTransaction;)V

    .line 858
    :cond_1
    return-object v0
.end method

.method public getRlTransaction(I)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 872
    const-string v0, "GsmRelay"

    const-string v1, "getRlTransaction"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/IRlTransactionManager;->get(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRlTransaction(II)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 2
    .param p1, "mr"    # I
    .param p2, "smsType"    # I

    .prologue
    .line 862
    const-string v0, "GsmRelay"

    const-string v1, "getNewRlTransaction by mr and smsType"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/soi/IRlTransactionManager;->get(II)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRlTransactionBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;
    .locals 2
    .param p1, "smsType"    # I

    .prologue
    .line 867
    const-string v0, "GsmRelay"

    const-string v1, "getRlTransactionBySmsType"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/IRlTransactionManager;->getBySmsType(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSizeRlTransaction()I
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    invoke-interface {v0}, Lcom/android/internal/telephony/soi/IRlTransactionManager;->getSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus(I)I
    .locals 1
    .param p1, "imsStatus"    # I

    .prologue
    .line 917
    const/16 v0, 0xc9

    .line 918
    .local v0, "status":I
    packed-switch p1, :pswitch_data_0

    .line 923
    :goto_0
    const/16 v0, 0xc9

    .line 925
    return v0

    .line 920
    :pswitch_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public get_rl_mo_mr()B
    .locals 2

    .prologue
    .line 750
    sget-byte v0, Lcom/android/internal/telephony/soi/GsmRelay;->rl_mo_mr:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/android/internal/telephony/soi/GsmRelay;->rl_mo_mr:B

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/soi/GsmRelay;->msgToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 72
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->processSoiToTLMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 75
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->processTLToSoiMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 78
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->processImsErrorInd(Landroid/os/Message;)V

    goto :goto_0

    .line 81
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->processTR1MTimeOut(Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->processTR2MTimeOut(Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->processTRAMTimeOut(Landroid/os/Message;)V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public isValidTime(JJ)Z
    .locals 7
    .param p1, "time"    # J
    .param p3, "term"    # J

    .prologue
    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, "isValid":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 891
    .local v0, "currentTime":J
    cmp-long v3, v0, p1

    if-lez v3, :cond_1

    .line 892
    sub-long v4, v0, p1

    cmp-long v3, v4, p3

    if-lez v3, :cond_0

    .line 893
    const/4 v2, 0x0

    .line 895
    :cond_0
    const/4 v2, 0x1

    .line 899
    :goto_0
    return v2

    .line 897
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public memoryAvailableRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 2
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 702
    const-string v0, "GsmRelay"

    const-string v1, "memoryAvailableRequest()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->sendToIms(Lcom/android/internal/telephony/soi/ImsPdu;)V

    .line 704
    sget-boolean v0, Lcom/android/internal/telephony/soi/GsmRelayTest;->MO_TEST_ENABLE:Z

    if-eqz v0, :cond_0

    .line 705
    invoke-static {}, Lcom/android/internal/telephony/soi/GsmRelayTest;->getDefault()Lcom/android/internal/telephony/soi/GsmRelayTest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/GsmRelayTest;->invokeSmmaAck(Lcom/android/internal/telephony/soi/ImsPdu;)V

    .line 707
    :cond_0
    return-void
.end method

.method public messageIdToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 949
    packed-switch p1, :pswitch_data_0

    .line 957
    :pswitch_0
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid messageId, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v0, "invalid"

    :goto_0
    return-object v0

    .line 951
    :pswitch_1
    const-string v0, "SM_DATA_REQ"

    goto :goto_0

    .line 953
    :pswitch_2
    const-string v0, "SM_REPORT_REQ"

    goto :goto_0

    .line 955
    :pswitch_3
    const-string v0, "MEMORY_AVAIL_NOTIFICATION_REQ"

    goto :goto_0

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public messageSetToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "messageSet"    # I

    .prologue
    .line 993
    packed-switch p1, :pswitch_data_0

    .line 1001
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid messageSet, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v0, "invalid"

    :goto_0
    return-object v0

    .line 995
    :pswitch_0
    const-string v0, "MSG_FROM_SOI_TO_TL"

    goto :goto_0

    .line 997
    :pswitch_1
    const-string v0, "MSG_FROM_TL_TO_SOI"

    goto :goto_0

    .line 999
    :pswitch_2
    const-string v0, "MSG_IMS_ERROR_IND"

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public msgToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 929
    sparse-switch p1, :sswitch_data_0

    .line 943
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cmd, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v0, "invalid"

    :goto_0
    return-object v0

    .line 931
    :sswitch_0
    const-string v0, "MSG_FROM_SOI_TO_TL"

    goto :goto_0

    .line 933
    :sswitch_1
    const-string v0, "MSG_FROM_TL_TO_SOI"

    goto :goto_0

    .line 935
    :sswitch_2
    const-string v0, "MSG_IMS_ERROR_IND"

    goto :goto_0

    .line 937
    :sswitch_3
    const-string v0, "MSG_TR1M_TIMER"

    goto :goto_0

    .line 939
    :sswitch_4
    const-string v0, "MSG_TR2M_TIMER"

    goto :goto_0

    .line 941
    :sswitch_5
    const-string v0, "MSG_TRAM_TIMER"

    goto :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public processImsErrorInd(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 192
    const-string v0, "GsmRelay"

    const-string v2, "processImsErrorInd()"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 194
    :cond_0
    const-string v0, "GsmRelay"

    const-string v2, "processImsErrorInd() msg || msg.obj null"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/soi/RelayData;

    .line 198
    .local v6, "inputData":Lcom/android/internal/telephony/soi/RelayData;
    if-nez v6, :cond_3

    .line 199
    const-string v0, "GsmRelay"

    const-string v2, "processImsErrorInd() inputData null"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .local v1, "smsType":I
    .local v4, "status":I
    .local v5, "retryAfter":I
    .local v7, "outputData":Lcom/android/internal/telephony/soi/TransportData;
    .local v8, "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    :pswitch_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getTpduMr()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->isSmmaTransaction()Z

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/soi/GsmRelay;->getDataImsErrorInd(IIZII)Lcom/android/internal/telephony/soi/TransportData;

    move-result-object v7

    .line 215
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/soi/GsmRelay;->routeSoiToTLErrorPrimitives(Lcom/android/internal/telephony/soi/TransportData;)V

    .line 216
    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/soi/GsmRelay;->endMoTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V

    .line 202
    .end local v1    # "smsType":I
    .end local v4    # "status":I
    .end local v5    # "retryAfter":I
    .end local v7    # "outputData":Lcom/android/internal/telephony/soi/TransportData;
    .end local v8    # "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/GsmRelay;->getSizeRlTransaction()I

    move-result v0

    if-lez v0, :cond_1

    .line 203
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/soi/GsmRelay;->getRlTransaction(I)Lcom/android/internal/telephony/soi/RlTransaction;

    move-result-object v8

    .line 204
    .restart local v8    # "transaction":Lcom/android/internal/telephony/soi/RlTransaction;
    const/4 v7, 0x0

    .line 206
    .restart local v7    # "outputData":Lcom/android/internal/telephony/soi/TransportData;
    if-eqz v6, :cond_3

    .line 207
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/RelayData;->getStatus()I

    move-result v4

    .line 208
    .restart local v4    # "status":I
    invoke-virtual {v6}, Lcom/android/internal/telephony/soi/RelayData;->getRetryAfter()I

    move-result v5

    .line 209
    .restart local v5    # "retryAfter":I
    if-eqz v8, :cond_3

    .line 210
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getSmsType()I

    move-result v1

    .line 211
    .restart local v1    # "smsType":I
    packed-switch v1, :pswitch_data_0

    .line 225
    const-string v0, "GsmRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImsErrorInd() error!!! smsType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :pswitch_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/soi/RlTransaction;->getTpduMr()I

    move-result v2

    move-object v0, p0

    move v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/soi/GsmRelay;->getDataImsErrorInd(IIZII)Lcom/android/internal/telephony/soi/TransportData;

    move-result-object v7

    .line 221
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/soi/GsmRelay;->routeSoiToTLErrorPrimitives(Lcom/android/internal/telephony/soi/TransportData;)V

    .line 222
    invoke-direct {p0, v8, v10}, Lcom/android/internal/telephony/soi/GsmRelay;->endMtTransaction(Lcom/android/internal/telephony/soi/RlTransaction;Z)V

    goto :goto_1

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processSoiToTLMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 95
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() error!!! msg null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/soi/RelayData;

    move-object v7, v0

    check-cast v7, Lcom/android/internal/telephony/soi/RelayData;

    .line 102
    .local v7, "data":Lcom/android/internal/telephony/soi/RelayData;
    if-nez v7, :cond_1

    .line 103
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() error!!! data null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/soi/RelayData;->getRpdu()[B

    move-result-object v10

    .line 107
    .local v10, "rpdu":[B
    invoke-static {v10}, Lcom/android/internal/telephony/soi/RpMessage;->createFromRpdu([B)Lcom/android/internal/telephony/soi/RpMessage;

    move-result-object v9

    .line 109
    .local v9, "rpMsg":Lcom/android/internal/telephony/soi/RpMessage;
    if-nez v9, :cond_2

    .line 111
    const-string v0, "GsmRelay"

    const-string v1, "processSoiToTLMessage() error!!! rpMsg null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/telephony/soi/RpMessage;->getRpMti()I

    move-result v8

    .line 116
    .local v8, "mti":I
    packed-switch v8, :pswitch_data_0

    .line 128
    :pswitch_0
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSoiToTLMessage() error!!! rpMsg.getRpMti() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v9}, Lcom/android/internal/telephony/soi/RpMessage;->getMr()I

    move-result v1

    const/4 v4, 0x1

    const/16 v5, 0x61

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/soi/GsmRelay;->sendRpErrorToIms(ILjava/lang/String;[BIII)V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/soi/GsmRelay;->processRpDataN(Lcom/android/internal/telephony/soi/RpMessage;)I

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/soi/GsmRelay;->processRpAckN(Lcom/android/internal/telephony/soi/RpMessage;)V

    goto :goto_0

    .line 125
    :pswitch_3
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/soi/GsmRelay;->processRpErrorN(Lcom/android/internal/telephony/soi/RpMessage;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public processTLToSoiMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 144
    const-string v4, "GsmRelay"

    const-string v5, "processTLToSoiMessage()"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "result":I
    if-nez p1, :cond_1

    .line 147
    const-string v4, "GsmRelay"

    const-string v5, "processTLToSoiMessage() error!!! msg null"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/soi/RelayData;

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/soi/RelayData;

    .line 151
    .local v0, "data":Lcom/android/internal/telephony/soi/RelayData;
    if-nez v0, :cond_2

    .line 152
    const-string v4, "GsmRelay"

    const-string v5, "processTLToSoiMessage() data null~!!"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/RelayData;->getMessageId()I

    move-result v1

    .line 157
    .local v1, "messageId":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/RelayData;->getSmsc()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "scAddress":Ljava/lang/String;
    const-string v4, "GsmRelay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processTLToSoiMessage() + messageId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/soi/GsmRelay;->messageIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-nez v3, :cond_3

    .line 162
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->getSCAddressFromEF()Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 179
    :pswitch_0
    const-string v4, "GsmRelay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processTLToSoiMessage() error!!! messageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/soi/GsmRelay;->messageIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x1

    .line 185
    :goto_1
    if-eq v2, v7, :cond_0

    .line 186
    new-instance v4, Lcom/android/internal/telephony/soi/ImsPdu;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->createRpdu(Lcom/android/internal/telephony/soi/RelayData;)[B

    move-result-object v5

    invoke-direct {v4, v7, v5, v3}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/soi/GsmRelay;->routeTLToSoiPrimitives(ILcom/android/internal/telephony/soi/ImsPdu;)V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->processSmDataRequest(Lcom/android/internal/telephony/soi/RelayData;Ljava/lang/String;)I

    move-result v2

    .line 168
    goto :goto_1

    .line 171
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->processSmReportRequest(Lcom/android/internal/telephony/soi/RelayData;)I

    move-result v2

    .line 172
    goto :goto_1

    .line 175
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/soi/GsmRelay;->processSMMARequest(Lcom/android/internal/telephony/soi/RelayData;Ljava/lang/String;)I

    move-result v2

    .line 176
    goto :goto_1

    .line 165
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public putTlType(I)I
    .locals 3
    .param p1, "mti"    # I

    .prologue
    .line 903
    packed-switch p1, :pswitch_data_0

    .line 911
    :pswitch_0
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mti, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 905
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 909
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public putTransportData(IIIIII[BLjava/lang/String;)Lcom/android/internal/telephony/soi/TransportData;
    .locals 9
    .param p1, "transportType"    # I
    .param p2, "tpmr"    # I
    .param p3, "smi"    # I
    .param p4, "error_status"    # I
    .param p5, "rpCause"    # I
    .param p6, "retryAfter"    # I
    .param p7, "tpdu"    # [B
    .param p8, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 839
    new-instance v0, Lcom/android/internal/telephony/soi/TransportData;

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/soi/GsmRelay;->getReportStatus(I)I

    move-result v7

    move v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    move v4, p2

    move v5, p3

    move v6, p6

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/soi/TransportData;-><init>(ILjava/lang/String;[BIIIII)V

    .line 841
    .local v0, "data":Lcom/android/internal/telephony/soi/TransportData;
    return-object v0
.end method

.method public removeRlTransaction(Lcom/android/internal/telephony/soi/RlTransaction;)V
    .locals 2
    .param p1, "rl"    # Lcom/android/internal/telephony/soi/RlTransaction;

    .prologue
    .line 878
    const-string v0, "GsmRelay"

    const-string v1, "removeRlTransaction"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/soi/GsmRelay;->transactionManager:Lcom/android/internal/telephony/soi/IRlTransactionManager;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/soi/IRlTransactionManager;->remove(Lcom/android/internal/telephony/soi/RlTransaction;)Z

    .line 882
    :cond_0
    return-void
.end method

.method public reportIndication(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 721
    return-void
.end method

.method public reportRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 2
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 714
    const-string v0, "GsmRelay"

    const-string v1, "reportRequest()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->sendToIms(Lcom/android/internal/telephony/soi/ImsPdu;)V

    .line 716
    return-void
.end method

.method public rlStateToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 963
    packed-switch p1, :pswitch_data_0

    .line 973
    :pswitch_0
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v0, "invalid"

    :goto_0
    return-object v0

    .line 965
    :pswitch_1
    const-string v0, "IDLE"

    goto :goto_0

    .line 967
    :pswitch_2
    const-string v0, "WAIT_FOR_RP_ACK"

    goto :goto_0

    .line 969
    :pswitch_3
    const-string v0, "WAIT_TO_SEND_RP_ACK"

    goto :goto_0

    .line 971
    :pswitch_4
    const-string v0, "WAIT_FOR_RETRANS_TIMER"

    goto :goto_0

    .line 963
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public routeSoiToTLErrorPrimitives(Lcom/android/internal/telephony/soi/TransportData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/internal/telephony/soi/TransportData;

    .prologue
    .line 639
    const-string v0, "GsmRelay"

    const-string v1, "routeSoiToTLErrorPrimitives()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->notifyRelayEvent(ILjava/lang/Object;)V

    .line 641
    return-void
.end method

.method public routeSoiToTLPrimitives(Lcom/android/internal/telephony/soi/RpMessage;II)V
    .locals 10
    .param p1, "rpMsg"    # Lcom/android/internal/telephony/soi/RpMessage;
    .param p2, "tpmr"    # I
    .param p3, "smi"    # I

    .prologue
    .line 626
    const-string v0, "GsmRelay"

    const-string v1, "routeSoiToTLPrimitives()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    if-eqz p1, :cond_0

    .line 628
    const/4 v4, 0x0

    .line 629
    .local v4, "error_status":I
    const/4 v6, 0x0

    .line 630
    .local v6, "retryAfter":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getRpMti()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->putTlType(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getRpCause()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getTpdu()[B

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RpMessage;->getScAddress()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/soi/GsmRelay;->putTransportData(IIIIII[BLjava/lang/String;)Lcom/android/internal/telephony/soi/TransportData;

    move-result-object v9

    .line 632
    .local v9, "transportData":Lcom/android/internal/telephony/soi/TransportData;
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/soi/GsmRelay;->notifyRelayEvent(ILjava/lang/Object;)V

    .line 636
    .end local v4    # "error_status":I
    .end local v6    # "retryAfter":I
    .end local v9    # "transportData":Lcom/android/internal/telephony/soi/TransportData;
    :goto_0
    return-void

    .line 634
    :cond_0
    const-string v0, "GsmRelay"

    const-string v1, "routeSoiToTLPrimitives() Error~!!! rpMsg null!!!"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public routeTLToSoiPrimitives(ILcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 644
    const-string v0, "GsmRelay"

    const-string v1, "routeTLToSoiPrimitives()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    packed-switch p1, :pswitch_data_0

    .line 656
    :pswitch_0
    const-string v0, "GsmRelay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "routeTLToSoiPrimitives() error!!! messageId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/soi/GsmRelay;->messageIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 647
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/soi/GsmRelay;->dataRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V

    goto :goto_0

    .line 650
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/soi/GsmRelay;->reportRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V

    goto :goto_0

    .line 653
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/soi/GsmRelay;->memoryAvailableRequest(Lcom/android/internal/telephony/soi/ImsPdu;)V

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public send(Lcom/android/internal/telephony/soi/RelayData;)V
    .locals 5
    .param p1, "data"    # Lcom/android/internal/telephony/soi/RelayData;

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/GsmRelay;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1009
    .local v1, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    .line 1010
    new-instance v2, Lcom/android/internal/telephony/soi/exception/BaseSoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/BaseSoiException;-><init>()V

    throw v2

    .line 1012
    :cond_0
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1013
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/RelayData;->getMessageSet()I

    move-result v0

    .line 1014
    .local v0, "messageSet":I
    const-string v2, "GsmRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send(), type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->messageSetToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    packed-switch v0, :pswitch_data_0

    .line 1026
    new-instance v2, Lcom/android/internal/telephony/soi/exception/BaseSoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/BaseSoiException;-><init>()V

    throw v2

    .line 1017
    :pswitch_0
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1028
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/soi/GsmRelay;->sendMessage(Landroid/os/Message;)Z

    .line 1029
    return-void

    .line 1020
    :pswitch_1
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1023
    :pswitch_2
    const/16 v2, 0x67

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendRpErrorToIms(ILjava/lang/String;[BIII)V
    .locals 9
    .param p1, "mr"    # I
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "tpdu"    # [B
    .param p4, "rpCauseLength"    # I
    .param p5, "rpCause"    # I
    .param p6, "diagnostics"    # I

    .prologue
    const/16 v1, 0x34

    .line 802
    const-string v0, "GsmRelay"

    const-string v2, "sendRpErrorToIms()"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    if-nez p2, :cond_0

    .line 804
    const-string v0, "scaddress"

    const-string v2, "0791282143658709"

    invoke-static {v0, v2}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 806
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/soi/GsmRelay;->getDataGenerateRpdu(IILjava/lang/String;[BIII)Lcom/android/internal/telephony/soi/RelayData;

    move-result-object v8

    .line 807
    .local v8, "data":Lcom/android/internal/telephony/soi/RelayData;
    new-instance v0, Lcom/android/internal/telephony/soi/ImsPdu;

    const/4 v2, 0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/soi/GsmRelay;->createRpdu(Lcom/android/internal/telephony/soi/RelayData;)[B

    move-result-object v3

    invoke-direct {v0, v2, v3, p2}, Lcom/android/internal/telephony/soi/ImsPdu;-><init>(I[BLjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/soi/GsmRelay;->routeTLToSoiPrimitives(ILcom/android/internal/telephony/soi/ImsPdu;)V

    .line 808
    return-void
.end method

.method public sendToIms(Lcom/android/internal/telephony/soi/ImsPdu;)V
    .locals 2
    .param p1, "imsPdu"    # Lcom/android/internal/telephony/soi/ImsPdu;

    .prologue
    .line 663
    const-string v0, "GsmRelay"

    const-string v1, "sendToIms()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyMoSms(Lcom/android/internal/telephony/soi/ImsPdu;)I

    .line 665
    return-void
.end method
