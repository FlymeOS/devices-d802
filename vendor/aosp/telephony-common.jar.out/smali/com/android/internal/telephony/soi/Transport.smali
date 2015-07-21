.class public abstract Lcom/android/internal/telephony/soi/Transport;
.super Landroid/os/Handler;
.source "Transport.java"

# interfaces
.implements Lcom/android/internal/telephony/soi/IRelayEventListener;
.implements Lcom/android/internal/telephony/soi/ITransport;


# static fields
.field protected static final MSG_RECEIVE_MT:I = 0x3

.field protected static final MSG_REPORT_IND:I = 0x4

.field protected static final MSG_RESPONSE_SMS_MEMORY_STATUS:I = 0x8

.field protected static final MSG_SEND_ACK:I = 0x1

.field protected static final MSG_SEND_ACK_WITH_PDU:I = 0x2

.field protected static final MSG_SEND_MO:I = 0x0

.field protected static final MSG_SEND_SMS_MEMORY_STATUS:I = 0x7

.field private static final TAG:Ljava/lang/String; = "Transport"


# instance fields
.field protected recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

.field protected relay:Lcom/android/internal/telephony/soi/IRelay;

.field protected waitForMtAck:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/soi/IRelay;)V
    .locals 1
    .param p1, "relay"    # Lcom/android/internal/telephony/soi/IRelay;

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/soi/Transport;->waitForMtAck:Ljava/lang/Boolean;

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/soi/Transport;->relay:Lcom/android/internal/telephony/soi/IRelay;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/soi/RecordManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/soi/RecordManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/soi/Transport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    .line 76
    return-void
.end method

.method protected static getNextMessageReference()B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 113
    const-string v3, "smss"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lge/uicc/framework/LGUICC;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "strSmss":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 115
    const-string v3, "Transport"

    const-string v4, "getNextMessageReference() smss null"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return v2

    .line 118
    :cond_0
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 119
    .local v0, "smss":[B
    aget-byte v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    rem-int/lit16 v3, v3, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 120
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string v3, "Transport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextMessageReference() smss: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/16 v3, 0x6f43

    invoke-static {v3, v1}, Lcom/android/internal/telephony/soi/SmsUsimHandler;->updateUsimRecord(ILjava/lang/String;)V

    .line 123
    aget-byte v2, v0, v2

    goto :goto_0
.end method

.method public static sendError(Landroid/os/Message;Lcom/android/internal/telephony/SmsResponse;I)V
    .locals 2
    .param p0, "result"    # Landroid/os/Message;
    .param p1, "response"    # Lcom/android/internal/telephony/SmsResponse;
    .param p2, "err"    # I

    .prologue
    .line 198
    const-string v0, "Transport"

    const-string v1, "sendError()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/soi/Transport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public static sendGenericError(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 2
    .param p0, "result"    # Landroid/os/Message;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 210
    const-string v0, "Transport"

    const-string v1, "sendGenericError()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/soi/Transport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method public static sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "result"    # Landroid/os/Message;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 160
    const-string v0, "Transport"

    const-string v1, "sendResponse()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-static {p0, p1, p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 163
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public static sendSuccess(Landroid/os/Message;)V
    .locals 2
    .param p0, "result"    # Landroid/os/Message;

    .prologue
    .line 172
    const-string v0, "Transport"

    const-string v1, "sendResponse()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/soi/Transport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 175
    return-void
.end method

.method public static sendSuccess(Landroid/os/Message;I)V
    .locals 3
    .param p0, "result"    # Landroid/os/Message;
    .param p1, "messageRef"    # I

    .prologue
    .line 184
    const-string v0, "Transport"

    const-string v1, "sendSuccess()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/android/internal/telephony/SmsResponse;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/soi/Transport;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method

.method public static tpCauseToRpCause(I)I
    .locals 1
    .param p0, "tp"    # I

    .prologue
    .line 396
    sparse-switch p0, :sswitch_data_0

    .line 403
    const/16 v0, 0x6f

    :goto_0
    return v0

    .line 398
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 400
    :sswitch_1
    const/16 v0, 0x16

    goto :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd3 -> :sswitch_1
    .end sparse-switch
.end method

.method public static tpCauseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "tp"    # I

    .prologue
    .line 408
    sparse-switch p0, :sswitch_data_0

    .line 416
    const-string v0, "unknown tp cause"

    :goto_0
    return-object v0

    .line 410
    :sswitch_0
    const-string v0, "OK"

    goto :goto_0

    .line 412
    :sswitch_1
    const-string v0, "TP_CAUSE_MEMORY_FULL"

    goto :goto_0

    .line 414
    :sswitch_2
    const-string v0, "TP_CAUSE_UNSPECIFIED_ERROR"

    goto :goto_0

    .line 408
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd3 -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 421
    packed-switch p0, :pswitch_data_0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 423
    :pswitch_0
    const-string v0, "TYPE_SUBMIT"

    goto :goto_0

    .line 425
    :pswitch_1
    const-string v0, "TYPE_ACK"

    goto :goto_0

    .line 427
    :pswitch_2
    const-string v0, "TYPE_ACK_WITH_PDU"

    goto :goto_0

    .line 429
    :pswitch_3
    const-string v0, "TYPE_DELIVER"

    goto :goto_0

    .line 431
    :pswitch_4
    const-string v0, "TYPE_REPORT_IND"

    goto :goto_0

    .line 433
    :pswitch_5
    const-string v0, "TYPE_REPORT_SMS_MEMORY_STATUS"

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected addMoRecord(ILjava/lang/String;I[BILandroid/os/Message;)V
    .locals 0
    .param p1, "messageRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pdu"    # [B
    .param p5, "state"    # I
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 384
    return-void
.end method

.method protected addMoRecord(ILjava/lang/String;I[B[BILandroid/os/Message;)V
    .locals 0
    .param p1, "messageRef"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "pdu"    # [B
    .param p5, "otaPdu"    # [B
    .param p6, "state"    # I
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 389
    return-void
.end method

.method protected addMtRecord(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mr"    # I
    .param p2, "tpdu"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;

    .prologue
    .line 393
    return-void
.end method

.method protected cmdMsgToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # I

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 147
    :pswitch_0
    const-string v0, "Transport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmdMsgToString(), invalid cmd, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "invalid"

    :goto_0
    return-object v0

    .line 129
    :pswitch_1
    const-string v0, "MSG_SEND_MO"

    goto :goto_0

    .line 131
    :pswitch_2
    const-string v0, "MSG_SEND_ACK"

    goto :goto_0

    .line 133
    :pswitch_3
    const-string v0, "MSG_SEND_ACK_WITH_PDU"

    goto :goto_0

    .line 135
    :pswitch_4
    const-string v0, "MSG_RECEIVE_MT"

    goto :goto_0

    .line 137
    :pswitch_5
    const-string v0, "MSG_REPORT_IND"

    goto :goto_0

    .line 139
    :pswitch_6
    const-string v0, "MSG_MO_TIMER"

    goto :goto_0

    .line 141
    :pswitch_7
    const-string v0, "MSG_WAIT_FOR_MT_ACK_TIMER"

    goto :goto_0

    .line 143
    :pswitch_8
    const-string v0, "MSG_SEND_SMS_MEMORY_STATUS"

    goto :goto_0

    .line 145
    :pswitch_9
    const-string v0, "MSG_MO_RETRY_INTERVAL_TIMER"

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected getRecordByTimer(II)Lcom/android/internal/telephony/soi/ISmsRecord;
    .locals 1
    .param p1, "timer"    # I
    .param p2, "mr"    # I

    .prologue
    .line 260
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/soi/Transport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/soi/IRecordManager;->getMoRecordByMr(I)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/soi/Transport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/soi/IRecordManager;->getMoRecordByMr(I)Lcom/android/internal/telephony/soi/MoRecord;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/soi/Transport;->recordManager:Lcom/android/internal/telephony/soi/IRecordManager;

    invoke-interface {v0}, Lcom/android/internal/telephony/soi/IRecordManager;->getMtRecord()Lcom/android/internal/telephony/soi/MtRecord;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSpec()Lcom/android/internal/telephony/soi/Spec;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/soi/SoiManager;->getSpec()Lcom/android/internal/telephony/soi/Spec;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCdmaNewSms(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 226
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyCdmaNewSms(Landroid/os/AsyncResult;)V

    .line 227
    return-void
.end method

.method protected notifyNewSms(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "result"    # Landroid/os/AsyncResult;

    .prologue
    .line 222
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiManager;->getDefault()Lcom/android/internal/telephony/soi/SoiManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/soi/SoiManager;->notifyNewSms(Landroid/os/AsyncResult;)V

    .line 223
    return-void
.end method

.method public onNotify(ILjava/lang/Object;)V
    .locals 3
    .param p1, "err"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 376
    const-string v0, "Transport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotify(), err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/soi/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    check-cast p2, Lcom/android/internal/telephony/soi/TransportData;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/soi/Transport;->send(Lcom/android/internal/telephony/soi/TransportData;)V

    .line 379
    return-void
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
    .line 80
    if-nez p1, :cond_0

    .line 82
    const-string v2, "Transport"

    const-string v3, "send() data null!!!"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v2, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v2

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/soi/TransportData;->getType()I

    move-result v1

    .line 86
    .local v1, "type":I
    const-string v2, "Transport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send(), type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/soi/Transport;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/soi/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/soi/Transport;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    packed-switch v1, :pswitch_data_0

    .line 107
    :pswitch_0
    new-instance v2, Lcom/android/internal/telephony/soi/exception/SoiException;

    invoke-direct {v2}, Lcom/android/internal/telephony/soi/exception/SoiException;-><init>()V

    throw v2

    .line 92
    :pswitch_1
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/soi/Transport;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void

    .line 95
    :pswitch_2
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 98
    :pswitch_3
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 101
    :pswitch_4
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 104
    :pswitch_5
    const/4 v2, 0x7

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "timerType"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "isSMMA"    # Z

    .prologue
    .line 283
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->setAlarmTimer(Landroid/os/Handler;ILjava/lang/Object;Z)V

    .line 310
    return-void
.end method

.method protected stopAlarmTimer(Landroid/os/Handler;ZIZ)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "stopRequired"    # Z
    .param p3, "timerType"    # I
    .param p4, "isSMMA"    # Z

    .prologue
    .line 318
    invoke-static {}, Lcom/android/internal/telephony/soi/SoiTimer;->getInstance()Lcom/android/internal/telephony/soi/SoiTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/soi/SoiTimer;->stopAlarmTimer(Landroid/os/Handler;ZIZ)V

    .line 335
    return-void
.end method
