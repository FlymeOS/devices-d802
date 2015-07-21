.class public Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;
.super Ljava/lang/Object;
.source "LgeBluetoothSimManager.java"


# static fields
.field private static final ACTION_SAP_REQUEST:Ljava/lang/String; = "com.lge.bluetooth.sap.ACTION_SAP_REQUEST"

.field private static final ACTION_SAP_RESPONSE:Ljava/lang/String; = "com.lge.bluetooth.sap.ACTION_SAP_RESPONSE"

.field private static final BTSC_CARD_STATUS_INSERTED:I = 0x4

.field private static final CARD_STATUS_NOT_ACCESSIBLE:I = 0x2

.field private static final CARD_STATUS_RECOVERED:I = 0x5

.field private static final CARD_STATUS_REMOVED:I = 0x3

.field private static final CARD_STATUS_RESET:I = 0x1

.field private static final CARD_STATUS_UNKNOWN:I = 0x0

.field private static final DBG:Z

.field private static final QCT_SAP_CONNECTION_CHECK_STATUS:I = 0x2

.field private static final QCT_SAP_CONNECTION_CONNECT:I = 0x1

.field private static final QCT_SAP_CONNECTION_DISCONNECT:I = 0x0

.field private static final QCT_SAP_REQUEST_OP_GET_ATR:I = 0x0

.field private static final QCT_SAP_REQUEST_OP_POWER_SIM_OFF:I = 0x2

.field private static final QCT_SAP_REQUEST_OP_POWER_SIM_ON:I = 0x3

.field private static final QCT_SAP_REQUEST_OP_READER_STATUS:I = 0x5

.field private static final QCT_SAP_REQUEST_OP_RESET_SIM:I = 0x4

.field private static final QCT_SAP_REQUEST_OP_SEND_APDU:I = 0x1

.field private static final RESULT_OK:I = 0x0

.field private static final RIL_FOR_2CHIP:Z = false

.field private static final RIL_REQ_SAP_CONNECTION_DONE:I = 0xc8

.field private static final RIL_REQ_SAP_DONE:I = 0xc9

.field private static final SAP_DISABLE_EVT:I = 0xb

.field private static final SAP_ENABLE_EVT:I = 0xa

.field private static final SIM_APDU_RESP:I = 0x5

.field private static final SIM_ATR_RESP:I = 0x4

.field private static final SIM_CARD_READER_STATUS_EVT:I = 0x7

.field private static final SIM_CARD_READER_STATUS_RESP:I = 0x7

.field private static final SIM_CARD_STATUS_RESP:I = 0x6

.field private static final SIM_CLOSE_EVT:I = 0x1

.field private static final SIM_CLOSE_RESP:I = 0xb

.field private static final SIM_DISCONNECT_RESP:I = 0x0

.field private static final SIM_OPEN_EVT:I = 0x0

.field private static final SIM_OPEN_RESP:I = 0xa

.field private static final SIM_POWER_OFF_EVT:I = 0x4

.field private static final SIM_POWER_OFF_RESP:I = 0x2

.field private static final SIM_POWER_ON_EVT:I = 0x3

.field private static final SIM_POWER_ON_RESP:I = 0x1

.field private static final SIM_RESET_EVT:I = 0x2

.field private static final SIM_RESET_RESP:I = 0x3

.field private static final SIM_TRANSFER_APDU_EVT:I = 0x6

.field private static final SIM_TRANSFER_ATR_EVT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LgeBluetoothSimManager"

.field private static mContext:Landroid/content/Context;

.field private static mIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mHandler:Landroid/os/Handler;

.field private mReqType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "persist.service.sap.debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;-><init>(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$2;-><init>(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;

    .line 97
    sput-object p1, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 103
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.bluetooth.sap.ACTION_SAP_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private static ByteArrayToString([BI)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B
    .param p1, "start"    # I

    .prologue
    .line 235
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v1, "s":Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 237
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Message;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onGetRilResponse(Landroid/os/Message;)V

    return-void
.end method

.method private onGetRilResponse(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x7

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 261
    const/4 v10, 0x0

    .line 263
    .local v10, "ril_resp":Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    if-nez v0, :cond_0

    .line 267
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_OPEN_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/16 v1, 0xa

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto :goto_0

    .line 270
    :cond_0
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_CLOSE_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v1, 0xb

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto :goto_0

    .line 276
    :pswitch_1
    const-string v0, "LgeBluetoothSimManager"

    const-string v3, "[BTUI] RIL_REQ_SAP_DONE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 278
    .local v7, "ar":Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 279
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] exception happens : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 281
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] result is vacant"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 284
    .local v6, "apdu_rsp":[Ljava/lang/String;
    aget-object v0, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 285
    .local v8, "op_type":I
    aget-object v9, v6, v1

    .line 286
    .local v9, "payload":Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 288
    :pswitch_2
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_RESET_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v1, 0x3

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 292
    :pswitch_3
    const-string v0, "LgeBluetoothSimManager"

    const-string v3, "[BTUI] ### SIM_POWER_ON_RESP"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v3, v2

    move v5, v2

    .line 293
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 296
    :pswitch_4
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_POWER_OFF_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x2

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 300
    :pswitch_5
    if-eqz v9, :cond_3

    .line 301
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### SIM_ATR_RESP = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (len: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, 0x4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v3, v2

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 304
    :cond_3
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_ATR_RESP : playload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 308
    :pswitch_6
    if-eqz v9, :cond_4

    .line 309
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### SIM_APDU_RESP = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (len: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, 0x5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v3, v2

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 312
    :cond_4
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_APDU_RESP : playload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    :pswitch_7
    if-eqz v9, :cond_5

    .line 317
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### SIM_CARD_READER_STATUS_RESP = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (len: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, v11

    move v3, v2

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 320
    :cond_5
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_CARD_READER_STATUS_RESP : playload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v11

    move v3, v2

    move v5, v2

    .line 321
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static parseChannelNumber(B)I
    .locals 2
    .param p0, "cla"    # B

    .prologue
    .line 244
    and-int/lit8 v1, p0, 0x40

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 246
    .local v0, "isFirstInterindustryClassByteCoding":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 249
    and-int/lit8 v1, p0, 0x3

    .line 253
    :goto_1
    return v1

    .line 244
    .end local v0    # "isFirstInterindustryClassByteCoding":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    .restart local v0    # "isFirstInterindustryClassByteCoding":Z
    :cond_1
    and-int/lit8 v1, p0, 0xf

    add-int/lit8 v1, v1, 0x4

    goto :goto_1
.end method

.method private sendSapRequestToSim([BILandroid/os/Message;)V
    .locals 4
    .param p1, "req_byte"    # [B
    .param p2, "op_type"    # I
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 210
    const-string v1, "LgeBluetoothSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] sendSapRequestToSim: op_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "input_data":Ljava/lang/String;
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 215
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->ByteArrayToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, "LgeBluetoothSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] sendSapRequestToSim: input_data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p2, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->SAPrequest(ILjava/lang/String;Landroid/os/Message;)V

    .line 232
    .end local v0    # "input_data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v0    # "input_data":Ljava/lang/String;
    :cond_1
    const-string v1, "LgeBluetoothSimManager"

    const-string v2, "[BTUI] sendSapRequestToSim: req_byte is null or length is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    .end local v0    # "input_data":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->SAPrequest(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public onSapResponseToManager(IIILjava/lang/String;I)V
    .locals 2
    .param p1, "resp_type"    # I
    .param p2, "result_code"    # I
    .param p3, "is_apdu_7816"    # I
    .param p4, "resp_data"    # Ljava/lang/String;
    .param p5, "resp_len"    # I

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.sap.ACTION_SAP_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "sapRespIntent":Landroid/content/Intent;
    const-string v1, "resp_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v1, "result_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    const-string v1, "is_apdu_7816"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v1, "resp_data"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "resp_len"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    sget-object v1, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    return-void
.end method
